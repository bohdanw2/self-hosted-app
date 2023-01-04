const express = require('express')

const PORT = process.env.PORT || 3000

const app = express()

app.get('/ping', (req, res) => {
  res.write('pong')
  res.end()
})

app.listen(PORT, () => {
  process.stdout.write(`Listening on port ${PORT}\n`);
})