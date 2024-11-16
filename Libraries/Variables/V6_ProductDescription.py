class ProductHeader:
    """This class contains properties to be used in the Header of Product Description page."""

    DIV = "class:app_logo"
class ProductDescriptionLink:
    """This class contains properties of links of Product Description page."""

    BACK = "id:back-to-products"
    SHOPPING_CART = "class:shopping_cart_link"
class ProductDescriptionItem:
    """This class contains properties of an item in the Product Description page."""

    DIV = "class:inventory_details_container"
    NAME = "css:.inventory_details_name.large_size"
    DESCRIPTION = "css:.inventory_details_desc.large_size"
    PRICE = "class:inventory_details_price"
    IMAGE = "class:inventory_details_img"
    BUTTON = """css:div.inventory_details_desc_container button"""
class ProductDescriptionFooter:
    """This class contains properties of footer in the Product Description page."""

    DIV = "class:footer"
class ProductDescriptionMenu:
    """This class contains properties of Menu icon in the Product Description page."""

    BUTTON = "id:react-burger-menu-btn"
class ProductDescriptionMenuOptions:
    """This class contains properties of Menu Options in the Product Description page."""

    DIV = "class:bm-item-list"
    ALL_ITEMS = "id:inventory_sidebar_link"
    ABOUT = "id:about_sidebar_link"
    LOGOUT = "id:logout_sidebar_link"
    RESET_APP_STATE = "id:reset_sidebar_link"
    CLOSE = "id:react-burger-cross-btn"