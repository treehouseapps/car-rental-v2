const express = require('express');
const dotenv = require('dotenv');
const vehicle = require('./router/vehicle');
const login = require('./router/login');
const reserve = require("./router/reserve")
const bodyParser = require('body-parser');

dotenv.config()

const app = express()
app.use(bodyParser.urlencoded())
app.use(express.json())
const port = 4000

app.use('/api', login)
app.use('/api', vehicle)
app.use('/api', reserve)

app.listen(port , (req , res )=>{
    console.log(`backend is running on port ${port}`)

})