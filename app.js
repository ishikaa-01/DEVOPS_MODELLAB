// Import the express module
const express = require('express');
const app = express();
const port = 3000;

// Define a simple route
app.get('/', (req, res) => {
  res.send('Hello from Dockerized Node.js App!');
});

// Make the app listen on port 3000
app.listen(port, () => {
  console.log(`App listening at http://localhost:${port}`);
});
