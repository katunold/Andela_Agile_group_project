"""This file contains the database class that contains all database related methods"""
import psycopg2
from pprint import pprint
import os
class Database:
    def __init__(self):
        try:
            self.connection = psycopg2.connect("dbname=stack user=postgres password=asP2#fMe")
            self.connection.autocommit = True
            self.cursor = self.connection.cursor()
        except:
            pprint("Cannot connect to database")

    """methods to be overriden by classes inheriting"""
    def insert_new_record(self):
        pass

    def query_single_row(self, table_name, table_column, row_id):
        self.cursor.execute("SELECT row_to_json(row) FROM (SELECT * FROM %s WHERE %s = '%s') row" % (table_name, table_column, row_id))
        item = self.cursor.fetchone()
        return item

    def query_all(self, table_name):
        self.cursor.execute("SELECT row_to_json(row) FROM (SELECT * FROM %s) row;" % (table_name))
        items = self.cursor.fetchall()
        return items
    
    def query_all_where_id(self, table_name, table_column, item_id):
        self.cursor.execute("SELECT row_to_json(row) FROM (SELECT * FROM %s WHERE %s = '%s') row;" % (table_name, table_column, item_id))
        items = self.cursor.fetchall()
        return items