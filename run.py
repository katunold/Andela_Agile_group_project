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

print("Please login")
email = input()
print(email)
print("input password")
password = input()

print("Select an option \n 1. enter sale")
option_selected = input()

if option_selected == '1':
    make_sale()