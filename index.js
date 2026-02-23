const express = require('express');
const app = express();
const port = 80;

app.get('/', (req, res) => {
  res.send('<h1>Success! CI/CD Pipeline is Working!</h1>');
});

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});