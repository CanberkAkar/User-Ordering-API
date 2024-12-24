const orderModel = require('../models/orderModel');

// Kullanıcıları listeleme
const getOrder = async (req, res) => {
  try {
    const order = await orderModel.getOrder();
    res.status(200).json(order);
  } catch (err) {
    res.status(500).json({ error: 'Veritabanı hatası' });
  }
};
const getOrderComment = async (req, res) => {
  try {
    const order = await orderModel.getOrderComment();
    res.status(200).json(order);
  } catch (err) {
    res.status(500).json({ error: 'Veritabanı hatası' });
  }
};


module.exports = {getOrder, getOrderComment};
