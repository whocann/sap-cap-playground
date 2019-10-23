using com.playground.bookshop.CatalogService from './bookshop-service';

annotate CatalogService.Books with @(
  UI:{
    SelectionFields: [],
    LineItem: [
			{ Value: title, Label: 'title' },            
      { Value: stock, Label: 'stock' },
    ]
  }
);