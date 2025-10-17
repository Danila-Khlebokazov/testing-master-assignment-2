*** Variables ***
${URL}                 https://www.demoblaze.com/

# Sign Up
${SIGNUP_BTN}          id=signin2
${SIGNUP_USERNAME}     id=sign-username
${SIGNUP_PASSWORD}     id=sign-password
${SIGNUP_SUBMIT}       xpath=//button[text()='Sign up']

# Log In
${LOGIN_BTN}           id=login2
${LOGIN_USERNAME}      id=loginusername
${LOGIN_PASSWORD}      id=loginpassword
${LOGIN_SUBMIT}        xpath=//button[text()='Log in']
${LOGOUT_BTN}          id=logout2
${WELCOME_USER}        id=nameofuser

# Product
${PRODUCT_FIRST}       xpath=(//a[@class='hrefch'])[1]
${ADD_TO_CART}         xpath=//a[text()='Add to cart']
${CART_LINK}           id=cartur
${PLACE_ORDER}         xpath=//button[text()='Place Order']
${PURCHASE_BTN}        xpath=//button[text()='Purchase']

${FILL_NAME_ID}         id=name
${FILL_COUNTRY_ID}     id=country
${FILL_CITY_ID}     id=city
${FILL_CARD_ID}     id=card
${FILL_MONTH_ID}     id=month
${FILL_YEAR_ID}     id=year

# Contact
${CONTACT_BTN}            xpath=//a[contains(text(),'Contact')]
${CONTACT_SEND_BTN}            xpath=//button[contains(text(),'Send message')]
${CONTACT_RECIPIENT_EMAIL_ID}      id=recipient-email
${CONTACT_RECIPIENT_NAME_ID}      id=recipient-name
${CONTACT_MESSAGE_TEXT_ID}      id=message-text

# Category Test
${CATEGORY_LAPTOPS}         xpath=//a[contains(text(),'Laptops')]
${LAPTOP_PRODUCT}         xpath=//a[contains(text(),'MacBook Pro')]
${NOT_LAPTOP_PRODUCT}         xpath=//a[contains(text(),'Samsung galaxy s6')]
