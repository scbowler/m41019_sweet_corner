const router = require('express').Router();
const getAllProducts = require('./get_all');
const getProductDetails = require('./get_details');

// Routes For /api/products

// GET /api/products/
router.get('/', getAllProducts);

// GET /api/products/:product_id
router.get('/:product_id', getProductDetails);

module.exports = router;
