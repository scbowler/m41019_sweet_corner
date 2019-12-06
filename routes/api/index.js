const router = require('express').Router();
const productsRouter = require('./products');

// Routes For /api

// ALL METHODS /api/products
router.use('/products', productsRouter);

module.exports = router;
