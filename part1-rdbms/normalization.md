## Anomaly Analysis

1. Insert Anomaly
In datasets/orders_flat.csv, product information is stored along with order information.
Example - If the company needs to add a new product like a keyboard to the system they cannot do so without an order_id and a customer_id. In the CSV there is no way to record the product P009 unless there is some order_id. You have to leave order_id and customer_id as null.
Columns: product_id, product_name, order_id

2. Update Anomaly
Customer details appear in multiple rows.
Example - In the rows 2, 5 and 8, Priya Sharma (customer_id C002) appears in all three. If we need to update her email and we have updated her email only in row 2 but forgot to update in row 5 and 8 the databse will have conflicting information.
Columns: customer_id, customer_name, customer_email

3. Delete Anomaly
Deleting an order row may remove the only record of a product.
Example - At the row 9 (order_id ORD1075 and customer_id C005) wher Vikram Singh buys the product with product_id P003. If this order is cancelled and they wish to delete it now along with the deletion of employee details other details like the product desk chair also gets deleted.
Columns: order_id, customer_id, product_id, product_name
