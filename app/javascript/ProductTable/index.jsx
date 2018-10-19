import React from 'react'
import '@shopify/polaris/styles.css';
import {AppProvider, Page, Form, FormLayout, Checkbox, TextField, Button} from '@shopify/polaris';




class ProductTable extends React.Component {
    state = {
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
  
    renderItem = (item) => {
      const {id, url, name, location} = item;
      const media = <Avatar customer size="medium" name={name} />;
  
      return (
        <ResourceList.Item id={id} url={url} media={media}>
          <h3>
            <TextStyle variation="strong">{name}</TextStyle>
          </h3>
          <div>{location}</div>
        </ResourceList.Item>
      );
    };
  
    render() {
      const resourceName = {
        singular: 'customer',
        plural: 'customers',
      };
  
      const items = [
        {
          id: 341,
          url: 'customers/341',
          name: 'Mae Jemison',
          location: 'Decatur, USA',
        },
        {
          id: 256,
          url: 'customers/256',
          name: 'Ellen Ochoa',
          location: 'Los Angeles, USA',
        },
      ];
  
      const filters = [
        {
          key: 'orderCountFilter',
          label: 'Number of orders',
          operatorText: 'is greater than',
          type: FilterType.TextField,
        },
        {
          key: 'accountStatusFilter',
          label: 'Account status',
          operatorText: 'is',
          type: FilterType.Select,
          options: ['Enabled', 'Invited', 'Not invited', 'Declined'],
        },
      ];
  
      const filterControl = (
        <ResourceList.FilterControl
          filters={filters}
          appliedFilters={this.state.appliedFilters}
          onFiltersChange={this.handleFiltersChange}
          searchValue={this.state.searchValue}
          onSearchChange={this.handleSearchChange}
          additionalAction={{
            content: 'Save',
            onAction: () => console.log('New filter saved'),
          }}
        />
      );
  
      return (
        <AppProvider>
        <Card>
          <ResourceList
            resourceName={resourceName}
            items={items}
            renderItem={this.renderItem}
            filterControl={filterControl}
          />
        </Card>
        </AppProvider>
      );
    }
  }

  export default ProductForm