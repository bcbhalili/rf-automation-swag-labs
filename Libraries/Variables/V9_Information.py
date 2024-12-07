class InformationHeader:
    """This class contains properties to be used in the Header of Information page."""

    DIV = "class:app_logo"
class InformationSubHeader:
    """This class contains properties to be used in the Sub-Header of Information page."""

    DIV = "class:title"
class InformationForm:
    """This class contains properties of fields in Information page."""

    FIRST_NAME_FIELD = "id:first-name"
    LAST_NAME_FIELD = "id:last-name"
    POSTAL_CODE_FIELD = "id:postal-code"
class InformationButtons:
    """This class contains properties of buttons in Information page."""

    CANCEL = "id:cancel"
    CONTINUE = "id:continue"
class InformationFooter:
    """This class contains properties of footer in the Information page."""

    DIV = "class:footer"
class InformationMenu:
    """This class contains properties of Menu icon in the Information page."""

    BUTTON = "id:react-burger-menu-btn"
class InformationMenuOptions:
    """This class contains properties of Menu Options in the Information page."""

    DIV = "class:bm-item-list"
    ALL_ITEMS = "id:inventory_sidebar_link"
    ABOUT = "id:about_sidebar_link"
    LOGOUT = "id:logout_sidebar_link"
    RESET_APP_STATE = "id:reset_sidebar_link"
    CLOSE = "id:react-burger-cross-btn"