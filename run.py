from datetime import datetime
from sale import Sales

def make_sale():
    print("Enter item code")
    item_code = input()
    print("enter quantity sold")
    quantity_sold = input()
    item_price = 4
    new_sale = Sales(item_code, item_price, quantity_sold, 1)
    new_sale.print_receipt()

def check_stock():
    print("Enter stock id")
    stock_id = input()
    
print("Please login")
email = input()
print(email)
print("input password")
password = input()

selection_menu ="Select an option \n 1. enter sale" 
selection_menu += "\n 2. check stock"
print(selection_menu)
option_selected = input()

if option_selected == '1':
    make_sale()
elif option_selected == '2':
    check_stock()