class GroceryResponse {
  static Map<String, dynamic> groceryResponse = {
    "status_code": 200,
    "message": "grocery",
    "category": [
      {"id": 1, "color": "#F9BDAD", "name": "Steak"},
      {"id": 2, "color": "#FAD96D", "name": "Vegetables"},
      {"id": 3, "color": "#CCB8FF", "name": "Beverages"},
      {"id": 4, "color": "#B0EAFD", "name": "Fish"},
      {"id": 5, "color": "#FF9DC2", "name": "Juice"}
    ],
    "today_deals": [
      {
        "product_id": 1,
        "is_fav": false,
        "name": "Summer Sun Cream Pack",
        "color": "#FBEDD8",
        "distance": "15 Minutes Away",
        "old_price": "18",
        "new_price": "12",
        "quantity_type": "Pieces 5"
      },
      {
        "product_id": 2,
        "is_fav": false,
        "name": "Turkish Steak",
        "color": "#CDF5E7",
        "distance": "15 Minutes Away",
        "old_price": "18",
        "new_price": "12",
        "quantity_type": "Gram 175"
      }
    ],
    "banner": {
      "name": "Mega",
      "owner_name": "Whopper",
      "expire_date": "24 December 2020",
      "old_price": 32,
      "new_price": 17
    }
  };
}
