const router = require('express').Router();
const addItemToCart = require('./add_to_cart');

// Routes For /api/cart/items

// POST /api/cart/items/:product_id
router.post('/:product_id', addItemToCart);

module.exports = router;
