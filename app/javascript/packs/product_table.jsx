import React from 'react'
import ReactDOM from 'react-dom'
import ProductForm from 'ProductForm'

document.addEventListener('turbolinks:load', function() {
  let element = document.getElementById("Product-Table-Component");
  ReactDOM.render(<ProductTable  products={data}/>, element);
})