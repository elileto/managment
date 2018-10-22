import React from 'react'
import '@shopify/polaris/styles.css';
import {TextContainer, Heading, Form, FormLayout, TextField, Button, Stack, Link} from '@shopify/polaris';


class AProduct extends React.Component {
    constructor(props) {
        super(props);
        this.state = { editable: false, name: this.props.product.name, product_num: this.props.product.product_num };
        console.log(this.props.product.id);
      }

    handleChange = (field) => {
      return (value) => this.setState({[field]: value});
      
    };

    handleEdit = () => {
        if(this.state.editable) {
            let name = this.state.name;
            let id = this.props.product.id;
            let product_num = this.state.product_num;
            let product = {id: id , name: name , product_num: product_num};
            this.props.handleUpdate(product);

        }
        this.setState({ editable: !this.state.editable })
    };

    handleView = () => {
        const url = 'products/' + this.props.product.id; 

    }

     

    render() {
        const {name, product_num} = this.state;

    const NameField = this.state.editable ?
            <TextField
            value={name}
            onChange={this.handleChange('name')}
            label="Name"
            type="text"
          /> :
          <TextContainer> 
            <Heading>{name}</Heading>
          </TextContainer>
        

     const ProductNumField = this.state.editable ?
            <TextField
                  value={product_num}
                  onChange={this.handleChange('product_num')}
                  label="Product Number"
                  type="number"
            />  :
            <p>Product Number: {product_num}</p>
        

        
        
        return (
            <Form onSubmit={this.props.handleDelete}>
            
              <FormLayout>
                <Stack>
                <Stack.Item fill>
                    <Stack alignment="center">
                     {NameField}
                    {ProductNumField}
                    </Stack>
                    </Stack.Item>
                    <Stack.Item > 
                        <Stack spacing="loose" alignment="center">
                        <Button plain  submit>Delete</Button>
                        <Button plain onClick={this.handleEdit}> {this.state.editable ? 'Submit' : 'Edit' } </Button>
                        <Link url={`products/${this.props.product.id}`} ><Button>View</Button></Link>
                        </Stack> 
                    </Stack.Item>
                </Stack>
              </FormLayout>
            </Form>
          )  
        };

};

export default AProduct