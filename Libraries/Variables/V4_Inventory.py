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
    DESCRIPTION = "class:inventory_item_desc"
    PRICE = "class:inventory_item_price"
    IMAGE = "css:img.inventory_item_img"
    ADD_TO_CART_BUTTON = """xpath://button[text()="Add to cart"]"""
class InventoryFooter:
    """This class contains properties of footer in the Inventory page."""

    DIV = "class:footer"