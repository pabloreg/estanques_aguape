const express = require("express");
const app = express();
const port = 5500;
const hbs = require("hbs");
const path = require("path");
const res = require("express/lib/response");

// middlewares 
app.use(express.json());
app.use(express.static(path.join(__dirname, "public")));
app.use(express.urlencoded({extended: false}));


//plantillas
app.set('view engine','hbs')
app.set('views',path.join(__dirname,'views'))
hbs.registerPartials(path.join(__dirname,'views/partials'))

//ruteo
app.use('/api/usuario',require('./routes/usuario'))
app.get('/api/usuario', ()=>{res.render('index')})


app.listen(port, () => {
  console.log(`Example listening at http://localhost:${port}`);
});

app.on("error", (err) => {
  console.log(`El error es:${error}`);
});


