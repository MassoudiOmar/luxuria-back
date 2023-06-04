const express = require('express');
const app = express();
const cors = require('cors')
const bodyParser = require("body-parser");

const port = 5000;



const product = require('./routes/products.route')



//use midllewars
app.use(cors({ origin: "*" }));
app.use(bodyParser.json({limit: '50mb'}));
app.use(bodyParser.urlencoded({limit: '50mb', extended: true}));
app.use(express.json());
app.use(function(req, res, next) {
  console.log(req.method, req.url);
  next();
});



app.use('/api/products',product)


app.get('/', (req, res) => {
  res.send('Hello, World!');
});

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
