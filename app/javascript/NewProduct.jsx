import React from 'react'
import '@shopify/polaris/styles.css';
import {Card, Form, FormLayout, TextField, Button} from '@shopify/polaris';


class NewProduct extends React.Component {
    constructor() {
        super();
        this.state = { name: '', product_num: ''};
      }
    
    handleChange = (field) => {
        return (value) => this.setState({[field]: value});
        
      };
    
    handleClick = () => {
        $.ajax({
            url: '/api/v1/products',
            type: 'POST',
            data: { product: { name: this.state.name, product_num: this.state.product_num }},
            success: (product) => {
               this.props.handleSubmit(product);
               this.setState({name: '', product_num: ''});
            }
        });
    }
    render() {
        const {name, product_num} = this.state;
        
        return (
     
            <Form onSubmit={this.handleClick}>
              <FormLayout>
              <TextField
                  value={name}
                  onChange={this.handleChange('name')}
                  label="Name"
                  type="text"
                />
      
                <TextField
                  value={product_num}
                  onChange={this.handleChange('product_num')}
                  label="Product Number"
                  type="number"
                />
      
                <Button submit>Submit</Button>
              </FormLayout>
            </Form>
         
          );
    }
};
export default NewProduct
