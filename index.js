const express = require('express');
const app = express();

const PORT = 80
app.get('/', (req, res) => {
  res.send('ANOTHER TEST!');
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
