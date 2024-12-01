class InventoryHeader:
    """This class contains properties to be used in the Header of Inventory page."""

    DIV = "class:app_logo"
class InventorySubHeader:
    """This class contains properties to be used in the Sub-Header of Inventory page."""

    DIV = "class:title"
class InventoryCart:
    """This class contains properties to be used in the Shopping Cart of Inventory page."""

    LINK = "class:shopping_cart_link"
class InventoryFilter:
    """This class contains properties to be used in the Filter of Inventory page."""

    DROPDOWN = "class:product_sort_container"
class InventoryProduct:
    """This class contains properties of a product in the Inventory page."""

    DIV = "class:inventory_item"
    NAME = "class:inventory_item_name"
    LINK = "css:.inventory_item_label a"
    DESCRIPTION = "class:inventory_item_desc"
    PRICE = "class:inventory_item_price"
    IMAGE = "css:img.inventory_item_img"
    BUTTON = "css:div.inventory_item div div.pricebar button"
    ADD_TO_CART_BUTTON = """xpath://button[text()="Add to cart"]"""
class InventoryFooter:
    """This class contains properties of footer in the Inventory page."""

    DIV = "class:footer"
    FB_LINK = "class:social_facebook"
    TWITTER_LINK = "class:social_twitter"
    LINKEDIN_LINK = "class:social_linkedin"
    NOTES = "class:footer_copy"