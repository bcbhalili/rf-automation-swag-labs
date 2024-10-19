import string

class UsernameTestValues:
    """This class contains test values to be used in the Username field."""

    ALPHABETIC = string.ascii_letters  
    NUMERIC = string.digits
    SPECIALS = string.punctuation
    NUMERIC = string.digits
    ALPHANUMERIC = ALPHABETIC + NUMERIC
    SPECIALPHABETIC = SPECIALS + ALPHABETIC
    SPECIALNUMERIC = SPECIALS + NUMERIC
    SPECIALPHANUMERIC = SPECIALS + ALPHABETIC + NUMERIC

    CORRECT = "standard_user"
    INVALID = "standard_users"
    BLANK = ""
class PasswordTestValues:
    """This class contains test values to be used in the Password field."""

    ALPHABETIC = string.ascii_letters  
    NUMERIC = string.digits
    ALPHANUMERIC = ALPHABETIC + NUMERIC

    CORRECT = "secret_sauce"
    INVALID = "secret_sauces"
    BLANK = ""
class ErrorMessages:
    """This class contains test error messages to be used in the after clicking Login button."""

    NO_MATCH = "Epic sadface: Username and password do not match any user in this service"
    PASSWORD_REQUIRED = "Epic sadface: Password is required"
    USERNAME_REQUIRED = "Epic sadface: Username is required"