const { getOrder, getOrderComment } = require('../controllers/orderController');
const orderModel = require('../models/orderModel');

// Mocking the orderModel methods directly
jest.mock('../models/orderModel');

// Mocking MySQL2 to avoid any real database connections
jest.mock('mysql2', () => ({
  createConnection: jest.fn().mockReturnValue({
    query: jest.fn(),
    end: jest.fn(),
  }),
}));

describe('Order Controller', () => {
  let res;

  beforeEach(() => {
    res = {
      status: jest.fn().mockReturnThis(),
      json: jest.fn(),
    };
  });

  afterAll(() => {
    const mysql = require('mysql2');
    const connection = mysql.createConnection();
    connection.end();
  });

  describe('getOrder', () => {
    test('should return a list of orders with status 200', async () => {
      orderModel.getOrder.mockResolvedValue([{ id: 1, name: 'Order 1' }]);

      await getOrder({}, res);

      expect(res.status).toHaveBeenCalledWith(200);
      expect(res.json).toHaveBeenCalledWith([{ id: 1, name: 'Order 1' }]);
    });

    test('should return status 500 if an error occurs', async () => {
      orderModel.getOrder.mockRejectedValue(new Error('Database error'));

      await getOrder({}, res);

      expect(res.status).toHaveBeenCalledWith(500);
      expect(res.json).toHaveBeenCalledWith({ error: 'Veritabanı hatası' });
    });
  });

  describe('getOrderComment', () => {
    test('should return a list of order comments with status 200', async () => {
      orderModel.getOrderComment.mockResolvedValue([{ id: 1, comment: 'Great product!' }]);

      await getOrderComment({}, res);

      expect(res.status).toHaveBeenCalledWith(200);
      expect(res.json).toHaveBeenCalledWith([{ id: 1, comment: 'Great product!' }]);
    });

    test('should return status 500 if an error occurs', async () => {
      orderModel.getOrderComment.mockRejectedValue(new Error('Database error'));

      await getOrderComment({}, res);

      expect(res.status).toHaveBeenCalledWith(500);
      expect(res.json).toHaveBeenCalledWith({ error: 'Veritabanı hatası' });
    });
  });
});
