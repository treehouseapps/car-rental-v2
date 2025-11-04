const express = require('express');
const dotenv = require('dotenv');
const router = require('./router/carRoute');
const login = require('./router/login');
const bodyParser = require('body-parser');

dotenv.config()

const app = express()
app.use(bodyParser.urlencoded())
app.use(express.json())
const port = 4000

app.use('/api', router)
app.use('/api', login)

app.listen(port , (req , res )=>{
    console.log(`backend is running on port ${port}`)

})