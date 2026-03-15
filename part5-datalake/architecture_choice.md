## Architecture Recommendation

For a fast-growing food delivery startup collecting GPS location logs, customer text reviews, payment transactions, and restaurant menu images, the most suitable storage architecture would be a Data Lakehouse. A Data Lakehouse combines the flexibility of a data lake with the structured performance of a data warehouse, making it ideal for handling diverse and rapidly growing datasets.  

First, the startup deals with multiple data types such as structured data (payment transactions), semi-structured data (GPS logs), and unstructured data (customer reviews and menu images). Traditional data warehouses are optimized for structured data but struggle with unstructured formats. A data lakehouse can store all these formats in a single system while still allowing structured analytics.  

Second, the company needs both real-time analytics and machine learning capabilities. For example, GPS logs can be used for delivery route optimization, customer reviews can be analyzed using natural language processing for sentiment analysis, and menu images can be used in recommendation systems. A lakehouse architecture supports these advanced analytics workloads while maintaining strong data governance and schema enforcement.  

Third, a lakehouse provides cost-effective scalability. As the startup grows, the volume of logs, images, and transaction data will increase rapidly. Data lakehouses store data on inexpensive object storage while enabling fast SQL queries through engines like DuckDB, Spark, or Trino. This balances performance and cost, which is crucial for a fast-scaling startup.  

Therefore, a Data Lakehouse architecture is the best choice because it supports diverse data formats, advanced analytics, and scalable cost-efficient storage in a unified platform.
