from datetime import datetime

class Sales:
    
    def __init__(self, item_code, price, quantity_sold, attendand_id):
        self.item_code = item_code
        self.price = price
        self.quantity_sold = quantity_sold
        self.attendand_id = attendand_id
        self.amount = price * quantity_sold
        self.time = datetime.now()

    def return_amount(self):
        return self.amount

    def print_receipt(self):
          print("item id : %s, quantity: %s, amount: %s, time: %s" %(self.item_code, self.quantity_sold, self.amount, self.time))
    