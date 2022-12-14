class CartResponse {
  static Map<String, dynamic> jsonData = {
    "status_code": 200,
    "message": "cart",
    "data": [
      {
        "id": 1,
        "product_name": "Turkish Steak",
        "quantity": 2,
        "quantity_type": "175 Gram",
        "product_price": 12.5,
        "color": "#F9BDAD",
      },
      {
        "id": 2,
        "product_name": "Salmon",
        "quantity": 1,
        "quantity_type": "2 Serving",
        "product_price": 30,
        "color": "#B0EAFD",
      },
      {
        "id": 3,
        "product_name": "Red Juice",
        "quantity": 3,
        "quantity_type": "1 bottle",
        "product_price": 8.33333333333,
        "color": "#FF9DC2",
      },
      {
        "id": 4,
        "product_name": "Cola",
        "quantity": 2,
        "quantity_type": "1 bottle",
        "product_price": 5.5,
        "color": "#CCB8FF",
      },
    ],
  };
}
