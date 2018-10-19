import React from 'react'
import ReactDOM from 'react-dom'
import ProductForm from 'ProductForm'

document.addEventListener('turbolinks:load', function() {
  let element = document.getElementById("Product-Form-Component");
  ReactDOM.render(<ProductForm />, element);
})