import datetime


class Stock:
    def __init__(self, item_name, purchase_price, sale_price, date, quantity):
        self.item_name = item_name
        self.purchase_price = purchase_price
        self.sale_price = sale_price
        self.date = date
        self.quantity = quantity

    super_market = []

    @staticmethod
    def check_stock(stock_id):
        for index, item in enumerate(Stock.super_market):
            if stock_id == index:
                return item['quantity']


if __name__ == "__main__":
    stk = Stock('Blueband', 3000, 3500, 'today', 50)
    Stock.super_market.append(stk.__dict__)
    stk = Stock('Biscuits', 300, 800, 'today', 1000)
    Stock.super_market.append(stk.__dict__)
    stk = Stock('books', 100, 1500, 'today', 500)
    Stock.super_market.append(stk.__dict__)
    stk = Stock('Pencils', 200, 500, 'today', 1000)
    Stock.super_market.append(stk.__dict__)
    Stock.super_market.append(stk)
    Stock.super_market.append(stk.__dict__)
    print(Stock.super_market)
    print("Items added successfully")

    print(Stock.check_stock(1))




