const express = require('express');
const axios = require('axios');
const dotenv = require('dotenv');

dotenv.config();

const app = express();

const SHOPIFY_ACCESS_TOKEN = process.env.SHOPIFY_ACCESS_TOKEN;
const SHOP_NAME = process.env.SHOP_NAME;
const SHOPIFY_API_VERSION = process.env.SHOPIFY_API_VERSION;
const PORT = process.env.PORT || 3000;

// Root URL handler
app.get('/', (req, res) => {
  res.send('Welcome to Kaiszn CloudCommerce App');
});

app.get('/products', async (req, res) => {
  try {
    const response = await axios.get(`https://${SHOP_NAME}.myshopify.com/admin/api/${SHOPIFY_API_VERSION}/products.json`, {
      headers: {
        'X-Shopify-Access-Token': SHOPIFY_ACCESS_TOKEN
      }
    });
    res.json(response.data);
  } catch (error) {
    res.status(500).send(error.toString());
  }
});

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
