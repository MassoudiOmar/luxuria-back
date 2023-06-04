const router = require('express').Router();
const product = require('../controllers/products')

router.get('/getProductsbycategory/:category',product.getProductByCategory)
router.get('/getcategory',product.getCategories)
router.get('/getNames',product.getProductNames)
router.get('/getProductslimit/:num',product.get12Product)
router.get('/getProdByName/:name',product.getProdByName)

module.exports = router;
