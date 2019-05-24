json.array! @orders.each do |order|
  json.id order.id
  json.quantity order.quantity
  json.user_id current_user.id
  json.subtotal order.subtotal
  json.tax order.tax
  json.total order.total
end


