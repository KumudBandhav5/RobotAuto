#gs_locators.robot
*** Variables ***
${USERNAME_INPUT}      id=user-name
${PASSWORD_INPUT}      id=password
${LOGIN_BUTTON}        id=login-button

${PRODUCTS_TITLE}      xpath=//*[@id="header_container"]/div[2]/span

${ADD_TO_CART_BUTTON}  id=add-to-cart-sauce-labs-backpack

${CART_ICON}           class=shopping_cart_link
${CART_ITEM}           xpath=//div[text()='Sauce Labs Backpack']

${CART_CHECKOUT}              xpath=//*[@id="checkout"]
${FIRST_NAME_INPUT}           xpath=//*[@id="first-name"]
${LAST_NAME_INPUT}            xpath=//*[@id="last-name"]
${ZIP_CODE_INPUT}             xpath=//*[@id="postal-code"]
${CONTINUE}                   xpath=//*[@id="continue"]
${FINISH}                     xpath=//*[@id="finish"]
${ORDER_COMPLETE}             xpath=//*[@id="checkout_complete_container"]/h2

${MENU_BUTTON}         id=react-burger-menu-btn
${LOGOUT_LINK}         id=logout_sidebar_link