import React from 'react'
import '@shopify/polaris/styles.css';
import {AppProvider, Page, Form, FormLayout, Checkbox, TextField, Button} from '@shopify/polaris';


class ProductForm extends React.Component {
    state = {
      name: '',
      productNum: ''
    };
  
    render() {
      const {name, productNum} = this.state;
  
      return (
          <AppProvider>
              <Page title="Product Form">
          <FormLayout> 
            <TextField
              value={name}
              onChange={this.handleChange('name')}
              label="Name"
              name="product[name]"
              type="text"
            />
            <TextField
              value={productNum}
              onChange={this.handleChange('productNum')}
              label="Product Number"
              name="product[product_num]"
              type="number"
              helpText={
                <span>
                  If you require an custom id for your product, type it here.
                </span>
              }
            />

            <Button submit>Submit</Button>
           
          </FormLayout>
        </Page>
        </AppProvider>
        
      );
    }
  
    handleSubmit = (event) => {
      this.setState({name: '', productNum: ''});
    };
  
    handleChange = (field) => {
      return (value) => this.setState({[field]: value});
    };
  }

  export default ProductForm