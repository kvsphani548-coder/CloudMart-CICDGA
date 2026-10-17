const express = require('express');

const app = express();
const PORT = process.env.PORT || 3000;

app.use(express.static('public'));

app.get('/health', (req, res) => {
  res.json({ status: 'healthy', app: 'CloudMart' });
});

app.get('/api', (req, res) => {
  res.json({ message: 'Welcome to CloudMart!' });
});

app.listen(PORT, '0.0.0.0', () => {
  console.log(`CloudMart server running on port ${PORT}`);
});
