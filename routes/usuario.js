const { Router } = require("express");
const router = Router();
/*const nodemailer = require("nodemailer");*/

const { 
    login
} = require("../controllers/usuario");


router.get("/login", login);


module.exports = router;