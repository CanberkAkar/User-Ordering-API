const express = require('express');
const router = express.Router();
const userController = require('../controllers/userController');

/**
 * @swagger
 * tags:
 *   - name: Endpoints
 *     description: All endpoints
 */
/**
 * @swagger
 * /api/users:
 *   get:
 *     description: Tüm kullanıcıları al
 *     responses:
 *       200:
 *         description: Başarıyla alındı
 *         content:
 *           application/json:
 *             schema:
 *               type: array
 *               items:
 *                 type: object
 *                 properties:
 *                   id:
 *                     type: integer
 *                   name:
 *                     type: string
 *                   email:
 *                     type: string
 */
router.get('/users', userController.getUsers);
/**
 * @swagger
 * /api/users/getUsersOrder:
 *   get:
 *     description: Tüm kullanıcıları al
 *     responses:
 *       200:
 *         description: Başarıyla alındı
 *         content:
 *           application/json:
 *             schema:
 *               type: array
 *               items:
 *                 type: object
 *                 properties:
 *                   id:
 *                     type: integer
 *                   name:
 *                     type: string
 *                   email:
 *                     type: string
 */
router.get('/users/getUsersOrder', userController.getUsersOrder);
/**
 * @swagger
 * /api/users/getUsersComment:
 *   get:
 *     description: Tüm kullanıcıları al
 *     responses:
 *       200:
 *         description: Başarıyla alındı
 *         content:
 *           application/json:
 *             schema:
 *               type: array
 *               items:
 *                 type: object
 *                 properties:
 *                   id:
 *                     type: integer
 *                   name:
 *                     type: string
 *                   email:
 *                     type: string
 */
router.get('/users/getUsersComment', userController.getUsersComment);


module.exports = router;
