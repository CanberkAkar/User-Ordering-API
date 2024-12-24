const swaggerJSDoc = require('swagger-jsdoc');
const swaggerUi = require('swagger-ui-express');

const options = {
  definition: {
    openapi: '3.0.0',
    info: {
      title: 'API CANBERK-AKAR',
      version: '1.0.0',
      description: 'This project is an order API. It includes tables for users, categories, comments, and orders. You can use GET requests to fetch data from these tables and integrate it into your frontend application.',
    },
  },
  
  apis: ['./routes/*.js'],
};

const swaggerSpec = swaggerJSDoc(options);

module.exports = {
  swaggerUi,
  swaggerSpec
};
