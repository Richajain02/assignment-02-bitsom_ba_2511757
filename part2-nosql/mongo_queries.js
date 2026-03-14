// OP1: insertMany() — insert all 3 documents from sample_documents.json

db.products.insertMany([
{
  "product_name": "Wireless Headphones",
  "category": "Electronics",
  "price": 25000,
  "brand": "Sony",
  "specifications": {
    "battery_life": "30 hours",
    "noise_cancellation": true,
    "bluetooth_version": "5.2"
  },
  "available_colors": ["Black", "Blue", "Silver"],
  "ratings": {
    "average": 4.5,
    "reviews_count": 320
  }
},
{
  "product_name": "Ergonomic Office Chair",
  "category": "Furniture",
  "price": 8500,
  "material": "Mesh and Steel",
  "dimensions": {
    "height": "120 cm",
    "width": "60 cm",
    "depth": "65 cm"
  },
  "features": ["Adjustable Height", "Lumbar Support", "360° Rotation"],
  "ratings": {
    "average": 4.2,
    "reviews_count": 150
  }
},
{
  "product_name": "Organic Milk Pack",
  "category": "Groceries",
  "price": 150,
  "brand": "Amul",
  "expiry_date": "2024-12-20",
  "pack_details": {
    "quantity": "1 litre",
    "type": "Full Cream"
  },
  "storage_instructions": [
    "Keep Refrigerated",
    "Consume within 2 days after opening"
  ],
  "ratings": {
    "average": 4.6,
    "reviews_count": 210
  }
}
]);

// OP2: find() — retrieve all Electronics products with price > 20000

db.products.find({
  category: "Electronics",
  price: { $gt: 20000 }
});

// OP3: find() — retrieve all Groceries expiring before 2025-01-01

db.products.find({
  category: "Groceries",
  expiry_date: { $lt: new Date("2025-01-01") }
});


// OP4: updateOne() — add a "discount_percent" field to a specific product

db.products.updateOne(
  { product_name: "Wireless Headphones" },
  { $set: { discount_percent: 10 } }
);

// OP5: createIndex() — create an index on category field

db.products.createIndex({ category: 1 });
