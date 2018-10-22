import React from 'react'
import '@shopify/polaris/styles.css';
import Products from '../Products';
import NewProduct from '../NewProduct';
import { AppProvider, Page, Layout} from '@shopify/polaris';


class Product extends React.Component {
    constructor(props) {
        super(props);
        this.state = { products: [] };
      }



    componentDidMount() {
        $.getJSON('/api/v1/products.json', (response) => { this.setState({ products: response }) });
    };



    handleSubmit = (product) => {
        var newState = this.state.products.concat(product);
        this.setState({ products: newState })
    };


    handleDelete = (id) => {
        $.ajax({
            url: `/api/v1/products/${id}`,
            type: 'DELETE',
            success: () => { 
                let newProducts = this.state.products.filter((product) => {
                    return product.id != id;
                });
                this.setState({ products: newProducts });
            }
        });
    };

    handleUpdate = (product) => {
        $.ajax({
                url: `/api/v1/products/${product.id}`,
                type: 'PUT',
                data: { product: product },
                success: () => {
                    this.updateProducts(product);

                }
            }
        )};

    updateProducts = (product) => {
        var products = this.state.products.filter((i) => { return i.id != product.id });
        products.push(product);

        this.setState({products: products });
    };


    render() {
        return (
            <div>
                <AppProvider>
                    <Page title="Products">
                        <Layout>
                            <Layout.Section>
                                <Products  products={this.state.products}  handleDelete={this.handleDelete} onUpdate={this.handleUpdate}/>
                            </Layout.Section>
                            <Layout.Section>
                                <NewProduct handleSubmit={this.handleSubmit}/>
                            </Layout.Section>
                        </Layout>
                    </Page>  
                </AppProvider>  
            </div>  
        )
    }
}

export default Product