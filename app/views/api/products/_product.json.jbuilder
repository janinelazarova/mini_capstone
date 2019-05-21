  json.id product.id
  json.name product.name
  json.price product.price
  json.description product.description
  json.is_discounted product.is_discounted?
  json.active product.active
  json.supplier_name product.supplier.name
  json.images product.images
  json.current_user current_user

  
  json.formated_fields do
    json.price number_to_currency(product.price)
    json.tax number_to_currency(product.tax)
    json.total number_to_currency(product.total)
 end 