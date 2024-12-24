const express = require('express');
const dotenv = require('dotenv');
const userRoutes = require('./routes/userRoutes'); // Doğru path'i kontrol edin
const orderRoutes = require('./routes/orderRoutes'); // Doğru path'i kontrol edin

const { swaggerUi, swaggerSpec } = require('./swagger'); // Swagger yapılandırmasını import et
const cors = require('cors');
const open = require('opn');

//OPEN:BELİRLENEN DOSYA YOLUNUN DİREKT OLARAK AÇILMASINI SAĞLAR
// Çevresel değişkenleri yükle
dotenv.config();

const app = express();
const port = process.env.PORT || 3000;

// JSON verilerini alabilmek için middleware
app.use(express.json());
app.use(cors());

// Swagger UI'yi '/api-docs' yolunda göstermek
app.use('/api-docs', swaggerUi.serve, swaggerUi.setup(swaggerSpec));

// API rotalarını kullan
app.use('/api', userRoutes); // '/api' yolunda userRoutes kullanıyoruz
app.use('/api', orderRoutes);
// Sunucuyu başlat
app.listen(port, () => {
  console.log(`Sunucu http://localhost:${port} adresinde çalışıyor`);

  // Swagger UI'yi otomatik olarak aç
  const swaggerUrl = `http://localhost:${port}/api-docs`;
  open(swaggerUrl).then(() => {
    console.log(`Swagger UI tarayıcıda açıldı: ${swaggerUrl}`);
  }).catch(err => {
    console.error('Tarayıcı açılırken bir hata oluştu:', err);
  });
});
