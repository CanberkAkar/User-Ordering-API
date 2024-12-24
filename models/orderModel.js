require('dotenv').config();  // .env dosyasını yükle
const mysql = require('mysql2');

// Veritabanı bağlantısı
const connection = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_DATABASE,
});

// Kullanıcıları veritabanından çekmek
const getOrder = () => {
  return new Promise((resolve, reject) => {
    connection.query('SELECT * FROM `order`', (err, results) => {
      if (err) {
        reject(err);
      } else {
        resolve(results);
      }
    });
  });
};
const getOrderComment = () => {
  return new Promise((resolve, reject) => {
    connection.query('SELECT `order`.order_desc,`comment`.comment_desc FROM `order` LEFT JOIN `comment` ON`order`.`order_comment_id` = `comment`.`comment_id`', (err, results) => {
      if (err) {
      reject(err);
    } else {
      resolve(results);
    }
  });
});
};


// Yeni kullanıcı eklemek
const addOrder = (userData) => {
  return new Promise((resolve, reject) => {
    const { name, email } = userData;
    connection.query(
      'INSERT INTO order (order_desc, order_usr_id,order_comment_id,order_category_id) VALUES (?, ?)',
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

module.exports = { getOrder, addOrder,getOrderComment };
