import React from 'react'
import ReactDOM from 'react-dom'
import Product from 'Product'

document.addEventListener('DOMContentLoaded', () => {
  const element = document.getElementById("Product-Component");
   ReactDOM.render(<Product />, element.appendChild(document.createElement('div')));
})