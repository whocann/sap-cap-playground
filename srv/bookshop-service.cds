namespace com.playground.bookshop;

using com.playground.bookshop from '../db/bookshop-models';

service CatalogService {
  entity Books @readonly as projection on bookshop.Books;
  entity Authors @readonly as projection on bookshop.Authors;
  //entity Orders @insertonly as projection on bookshop.Orders;
  entity Orders as projection on bookshop.Orders;
}