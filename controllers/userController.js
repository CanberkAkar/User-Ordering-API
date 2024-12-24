const userModel = require('../models/userModel');

// Kullanıcıları listeleme
const getUsers = async (req, res) => {
  try {
    const users = await userModel.getUsers();
    res.status(200).json(users);
  } catch (err) {
    res.status(500).json({ error: 'Veritabanı hatası' });
  }
};
const getUsersOrder = async (req, res) => {
  try {
    const users = await userModel.getUsersOrder();
    res.status(200).json(users);
  } catch (err) {
    res.status(500).json({ error: 'Veritabanı hatası' });
  }
};
const getUsersComment = async (req, res) => {
  try {
    const users = await userModel.getUsersComment();
    res.status(200).json(users);
  } catch (err) {
    res.status(500).json({ error: 'Veritabanı hatası' });
  }
};


// Yeni kullanıcı ekleme
const addUser = async (req, res) => {
  const { name, email } = req.body;
  const userData = { name, email };

  try {
    const newUser = await userModel.addUser(userData);
    res.status(201).json({
      message: 'Kullanıcı başarıyla eklendi',
      user: newUser,
    });
  } catch (err) {
    res.status(500).json({ error: 'Veritabanı hatası' });
  }
};

module.exports = { getUsers, addUser,getUsersOrder,getUsersComment };
