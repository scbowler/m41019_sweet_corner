const router = require('express').Router();
const apiRouter = require('./api');

// Routes For /

// ALL METHODS /api
router.use('/api', apiRouter);

module.exports = router;
