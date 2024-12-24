const express = require('express');
const router = express.Router();
const orderController = require('../controllers/orderController');

/**
 * @swagger
 * tags:
 *   - name: Endpoints
 *     description: All endpoints
 */
/**
 * @swagger
 * /api/orders:
 *   get:
 *     description: Tüm siparişleri al
 *     responses:
 *       200:
 *         description: Başarıyla alındı
 */
router.get('/orders', orderController.getOrder);

/**
 * @swagger
 * /api/ordersComment:
 *   get:
 *     description: Tüm siparişleri al
 *     responses:
 *       200:
 *         description: Başarıyla alındı
 */
router.get('/ordersComment', orderController.getOrderComment);


module.exports = router;
