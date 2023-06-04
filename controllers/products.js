const pool = require('../database')

let getProductByCategory = (req, res) => {
    const { category } = req.params;
    const sql = `SELECT * FROM products WHERE category = ?`;
    pool.query(sql, [category], (err, result) => {
      if (err) {
        res.send(err);
      } else {
        res.send(result.reverse());
      }
    });
  };
  
let getCategories =(req,res)=>{
  const sql = "SELECT DISTINCT category FROM luxuria.products"
  pool.query(sql, (err, result) => {
    if (err) {
      res.send(err);
    } else {
      res.send(result.reverse());
    }
  });
}

let getProductNames =(req,res)=>{
  const sql = "SELECT title category FROM luxuria.products"
  pool.query(sql, (err, result) => {
    if (err) {
      res.send(err);
    } else {
      res.send(result.reverse());
    }
  });
}

let get12Product =(req,res)=>{
  const {num} = req.params
  const offset = num; // Change this value to fetch different sets of 12 products
  const sql = `SELECT * FROM products LIMIT 12 OFFSET ${offset}`;
  pool.query(sql, (err, result) => {
    if (err) {
      res.send(err);
    } else {
      res.send(result.reverse());
    }
  });
}

let getProdByName =(req,res)=>{
  const {name} = req.params
  const title = name.replace('%',' ')
  const titleS =JSON.stringify(title) 
  console.log(title)
  const sql = `SELECT * FROM products  where title = ${titleS.toString()}`;
  pool.query(sql,[titleS], (err, result) => {
    if (err) {
      res.send(err);
    } else {
      res.send(result.reverse());
    }
  });
}

  module.exports = {
    getProductByCategory,
    getCategories,
    getProductNames,
    get12Product,
    getProdByName
  }