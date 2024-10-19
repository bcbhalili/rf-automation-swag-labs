class Login_Header:
    """This class contains a property to test the Header part of the Login page."""

    DIV = "class:login_logo"
class Login_Forms:
    """This class contains properties to test the Login Forms."""

    USERNAME_FIELD = "id:user-name"
    PASSWORD_FIELD = "id:password"
    LOGIN_BUTTON = """xpath://input[@id="login-button"]"""
    ERROR = """xpath://h3"""
class Login_Usernames:
    """This class contains properties to test the Login Username partition."""

    DIV = """xpath://div[@class="login_credentials"]"""
    HEADER = DIV + """/h4"""
class Login_Passwords:
    """This class contains properties to test the Login Password partition."""

    DIV = """xpath://div[@class="login_password"]"""
    HEADER = DIV + """/h4"""