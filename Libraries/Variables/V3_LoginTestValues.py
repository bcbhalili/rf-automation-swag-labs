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
class PasswordTestValues:
    """This class contains test values to be used in the Password field."""

    ALPHABETIC = string.ascii_letters  
    NUMERIC = string.digits
    ALPHANUMERIC = ALPHABETIC + NUMERIC