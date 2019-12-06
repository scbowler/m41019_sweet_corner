const router = require('express').Router();
const itemsRouter = require('./items');

// Routes for /api/cart

// ALL METHODS /api/cart/items
router.use('/items', itemsRouter);

module.exports = router;
