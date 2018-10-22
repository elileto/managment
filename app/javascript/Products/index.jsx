import React from 'react'
import '@shopify/polaris/styles.css';
import {ResourceList, AppProvider, Card, TextStyle, Avatar, Page} from '@shopify/polaris';
import AProduct from '../AProduct';

class Products extends React.Component {
    constructor(props) {
        super(props);
      }

    handleDelete =(id) => {
        this.props.handleDelete(id);
    };

    onUpdate = (product) => {
        this.props.onUpdate(product);
    };

    renderProduct = (product) => {
        const {id, name, product_num} = product;
        const media = <Avatar customer size="medium" name={name} />;
        return (
          <ResourceList.Item id={id} media={media}>
                <AProduct product={product}
                          handleDelete={this.handleDelete.bind(this, product.id)}
                          handleUpdate={this.onUpdate}/>
          </ResourceList.Item>
        );
      };

    render() {
        const resourceName = {
            singular: 'customer',
            plural: 'customers',
          };

            let products = [];
            products = this.props.products.map((product => product));
                
           

        return(
            <Card>
                <ResourceList
                resourceName={resourceName}
                items={products}
                renderItem={this.renderProduct}
                />
            </Card>   
        )
    }
}
export default Products