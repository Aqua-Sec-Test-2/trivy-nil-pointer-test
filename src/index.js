const express = require('express');
const app = express();

// This will trigger SAST findings
app.get('/api/user/:id', (req, res) => {
  const userId = req.params.id;
  // Potential SQL injection - will trigger SAST rule
  const query = `SELECT * FROM users WHERE id = ${userId}`;
  res.send(query);
});

app.listen(3000, () => {
  console.log('Server running on port 3000');
});

