require('dotenv').config()
const app = require("express")();
const express = require('express');
const path = require('path');


const consign = require("consign");
const db = require("./config/db");
const port = process.env.PORT
const bodyParser = require("body-parser");


app.use(bodyParser.json());
app.use(express.static(path.join(__dirname, 'public')))
app.db = db;

/*
 *  Carregamento automatico das libs
*/
consign()
  .then("./core")
  .then("./controller")
  .then("./config")
  .into(app);

app.listen(port, () => {
  console.log("Backend executando na porta "+process.env.PORT+"...");
});
