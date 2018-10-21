import React from 'react'
import '@shopify/polaris/styles.css';
import {ResourceList, AppProvider, Card, TextStyle, Avatar, Page} from '@shopify/polaris';

class ProductTable extends React.Component {

  state = {
    selectedItems: [],
    searchValue: '',
    appliedFilters: [
      {
        key: 'accountStatusFilter',
        value: 'Account enabled',
      },
    ],
  };

  handleSearchChange = (searchValue) => {
    this.setState({searchValue});
  };

  handleFiltersChange = (appliedFilters) => {
    this.setState({appliedFilters});
  };

  handleSelectionChange = (selectedItems) => {
    this.setState({selectedItems});
    console.log(selectedItems);
  };

//  removeItemClient = (id) => {
//    var newItems = this.state.items.filter((item) => {
//        return item.id != id;
//    });
//
//    this.setState({ items: newItems });
//};


  renderItem = (item) => {
    const {id, name, product_num} = item;
    const media = <Avatar customer size="medium" name={name} />;
    const url = "products/" + id;
    const shortcutActions = url
        ? [{content: 'View Product', url: url}]
        : null;
    console.log(url);
    console.log(product_num);
    return (
      <ResourceList.Item
        id={id}
        name={name}
        url={url}
        media={media}
        accessibilityLabel={`View details for ${name}`}
        shortcutActions={shortcutActions}
      >
        <h3>
          <TextStyle variation="strong">{name}</TextStyle>
        </h3>
        <div> <h2> Product Number: {product_num}</h2></div>
      </ResourceList.Item>
    );
  };
  

  render() {
    const resourceName = {
      singular: 'product',
      plural: 'products',
    };
    const items = [];
    let i = 0;
    const products = this.props.products;
    for (var prop in products) {
      items[i] = products[prop];
      i++;
  }



  const promotedBulkActions = [
    {
      content: 'Delete Products',
      onAction: () => 
      {
        console.log(this.state.selectedItems);
        for (let select in this.state.selectedItems ){
          let selected = this.state.selectedItems[select];
        for (let key in items) {
          console.log("ID: " + items[key].id);
          console.log("Selected ID: " + selected);
            if (items[key].id == selected){
              
              console.log("Success");
              $.ajax({
                url: `/products/${selected}`,
                //type: 'DELETE',
                method: 'delete',
                success(response) { 
                    console.log('successfully removed item')
                }
            });
              //return fetch('products/' + selected, {
              //    method: 'DELETE',
              //    headers: {
              //      'Content-Type': 'application/json'
              //    }
              //  })
              //  .then((response) => { 
              //    console.log('Item was deleted!');
              //  })   
            }
        }
        return console.log(items);
      }
     }
    },
  ];

  const filterControl = (
    <ResourceList.FilterControl
    searchValue=""
      onSearchChange={(searchValue) => {
        this.handleSearchChange(searchValue);
      }}
    />
  )

    return (
      <AppProvider>
        <Page title="Products">
      <Card>
        <ResourceList
          resourceName={resourceName}
          items={items}
          selectedItems={this.state.selectedItems}
          onSelectionChange={this.handleSelectionChange}
          renderItem={this.renderItem}
          filterControl={filterControl}
          promotedBulkActions={promotedBulkActions}
        />
      </Card>
      </Page>
      </AppProvider>
    );
  }
}
  export default ProductTable