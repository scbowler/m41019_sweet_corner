const jwt = require('jwt-simple');
const cartConfig = require('../config/cart_jwt.json');

module.exports = (req, res, next) => {
    const token = req.headers['x-cart-token'];
    req.cart = null;
    req.token = null;

    // token = '[object Object]';

    if(!token || token.indexOf('Object') > -1) {
        next();
        return;
    }

    req.token = token;

    const tokenData = jwt.decode(token, cartConfig.secret);

    req.cart = {
        id: tokenData.cartId
    };

    next();
};
