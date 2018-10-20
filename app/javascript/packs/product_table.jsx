import React from 'react'
import ReactDOM from 'react-dom'
import ProductTable from 'ProductTable'

document.addEventListener('DOMContentLoaded', () => {
  const node = document.getElementById('products_data');
  const data = JSON.parse(node.getAttribute('data'));
  console.log(data);
  const element = document.getElementById("Product-Table-Component");
 // ReactDOM.render(
 //   <ProductTable products={data} />,
 //   document.body.appendChild(document.createElement('div')));
   ReactDOM.render(<ProductTable products={data}/>, element.appendChild(document.createElement('div')));
})