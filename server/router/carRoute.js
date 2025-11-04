const express = require('express');

const router = express.Router()

router.get("/",(req, res) =>{
    res.send("the home page is running.")
})

router.post("/add", (req,res)=>{
    
})
router.put('/:id', (req, res)=>{

})

router.delete('/:id', (req , res) =>{

})


module.exports = router