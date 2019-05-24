json.order_id @order.id
json.product_id @order.product_id
json.quantity @order.quantity
json.user_id current_user.id
json.subtotal @order.subtotal
json.tax @order.tax
json.total @order.total