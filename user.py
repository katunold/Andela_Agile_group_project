from database import Database
users = {}

class User():
    
    def __init__(self, email, admin_role, password):
        self.email = email
        self.admin_role = admin_role
        self.password = password

def add_user(new_user):
    no_of_users = len(users) + 1
    users[no_of_users] = new_user.__dict__
    return users[no_of_users]

def login(login_id, existing_user):
    if login_id in users:
        user = users[login_id]
        return user['admin_role']
