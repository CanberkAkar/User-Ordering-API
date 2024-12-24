require('dotenv').config();  // .env dosyasını yükle
const mysql = require('mysql2');
const redis = require('redis');
const redisClient = redis.createClient();

redisClient.on('error', (err) => {
    console.error('Redis error:', err);
});

// Veritabanı bağlantısı
const connection = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_DATABASE,
});

// Kullanıcıları veritabanından çekmek
const getUsers = () => {
  return new Promise((resolve, reject) => {
    connection.query('SELECT * FROM users', (err, results) => {
      if (err) {
        reject(err);
      } else {
        resolve(results);
      }
    });
  });
};
const getUsersOrder = () => {
  return new Promise((resolve, reject) => {
    connection.query("SELECT `order`.`order_desc`, `users`.`usr_name` FROM `order` LEFT JOIN `users` ON `order`.`order_usr_id` = `users`.`usr_id`", (err, results) => {
      if (err) {
        reject(err);
      } else {
        resolve(results);
      }
    });
  });
};
const getUsersComment = () => {
  return new Promise((resolve, reject) => {
    connection.query("SELECT `comment`.`comment_desc`, `users`.`usr_name` FROM `comment` LEFT JOIN `users` ON `comment`.`comment_usr_id` = `users`.`usr_id`", (err, results) => {
      if (err) {
        reject(err);
      } else {
        resolve(results);
      }
    });
  });
};

// Yeni kullanıcı eklemek
const addUser = (userData) => {
  return new Promise((resolve, reject) => {
    const { name, email } = userData;
    connection.query(
      'INSERT INTO users (name, email) VALUES (?, ?)',
      [name, email],
      (err, result) => {
        if (err) {
          reject(err);
        } else {
          resolve({ id: result.insertId, name, email });
        }
      }
    );
  });
};

module.exports = { getUsers, addUser,getUsersOrder,getUsersComment};
