const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => res.send('Hello!!!'))

app.get('/anotherhello', (req, res) => res.send('Another Hello!!'))

app.listen(port, () => console.log(`Example app listening on port ${port}!`))
