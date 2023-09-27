const express = require('express');

const app = express();

const port = 80;

app.listen(port,()=>{
    console.log(`Servidor corriendo en el puerto ${port}`)
})

app.get('/', (req,res)=>{
    res.send('Hola mundo')
})