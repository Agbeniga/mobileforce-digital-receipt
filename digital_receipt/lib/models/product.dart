class Product {
  String id;
  String productDesc;
  int quantity;
  double unitPrice;
  int amount;

  Product(
      {this.id, this.productDesc, this.quantity, this.amount, this.unitPrice});
  // please let no one delete this  #francis22
  Product.receipt(
      {this.productDesc, this.quantity, this.amount, this.unitPrice});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        // End point returns id as an int!
        id: json['id'].toString(),
        productDesc: json['name'] as String,
        quantity: json['quantity'] as int,
        unitPrice: (json['unit_price'] as double),
        amount: json['amount'] as int);
  }
  Map<String, dynamic> toJson() => {
        "name": productDesc,
        "quantity": quantity,
        "unit_price": unitPrice,
      };

  static List<Product> dummy() => [];

  @override
  String toString() {
    // TODO: implement toString
    return '$id : $productDesc : $quantity : $unitPrice : $amount';
  }
}
