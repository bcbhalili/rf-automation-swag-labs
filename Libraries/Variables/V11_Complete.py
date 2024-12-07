class CompleteHeader:
    """This class contains properties to be used in the Header of Complete page."""

    DIV = "class:app_logo"
class CompleteSubHeader:
    """This class contains properties to be used in the Sub-Header of Complete page."""

    DIV = "class:title"
class CompleteForm:
    """This class contains properties of fields in Complete page."""

    SUBTOTAL = "class:summary_subtotal_label"
    TAX = "class:summary_tax_label"
    TOTAL = "class:summary_total_label"
class CompleteButtons:
    """This class contains properties of buttons in Complete page."""

    CANCEL = "id:cancel"
    FINISH = "id:finish"
class CompleteFooter:
    """This class contains properties of footer in the Complete page."""

    DIV = "class:footer"
class CompleteMenu:
    """This class contains properties of Menu icon in the Complete page."""

    BUTTON = "id:react-burger-menu-btn"
class CompleteMenuOptions:
    """This class contains properties of Menu Options in the Complete page."""

    DIV = "class:bm-item-list"
    ALL_ITEMS = "id:inventory_sidebar_link"
    ABOUT = "id:about_sidebar_link"
    LOGOUT = "id:logout_sidebar_link"
    RESET_APP_STATE = "id:reset_sidebar_link"
    CLOSE = "id:react-burger-cross-btn"