const knex = require("../db/config");


console.log('entro al controller usuario')


const login = (req, res) => {
  console.log('entro al metodo login');

  knex.from("usuario")
    .where("user", req.body.user).andWhere('password', req.body.password)
    .then(() => {
      console.log();
      res.render('index.hbs')
    }).catch((err) => 
    res.send('Acceso Incorrecto'));
};



module.exports = {
  login,
};




