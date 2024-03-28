class Product {
  int? _totalSize;
  int? _typeId;
  int? _offset;
  late List<ProductModel> _products;
  List<ProductModel> get products => _products;

  Product(
      {required totalSize,
      required typeId,
      required offset,
      required products}) {
    this._totalSize = totalSize;
    this._typeId = typeId;
    this._offset = offset;
    this._products = products;
  }

  Product.fromJson(Map<String, dynamic> json) {
    _totalSize = json['total_size'];
    _typeId = json['type_id'];
    _offset = json['offset'];
    if (json['products'] != null) {
      _products = <ProductModel>[];
      json['products'].forEach((v) {
        _products.add(ProductModel.fromJson(v));
      });
    }
  }

}

class ProductModel {
  int? id;
  // int id;
  String? name;
  String? description;
  int? price;
  int? stars;
  String? img;
  String? location;
  String? createdAt;
  String? updatedAt;
  int? typeId;

  // String? get img => _img;
  // String? get name => _name;

  ProductModel(
      {required id,
      required name,
      required description,
      required price,
      required stars,
      required img,
      required location,
      required createdAt,
      required updatedAt,
      required typeId}) {
    this.id = id;
    this.name = name;
    this.description = description;
    this.price = price;
    this.stars = stars;
    this.img = img;
    this.location = location;
    this.createdAt = createdAt;
    this.updatedAt = updatedAt;
    this.typeId = typeId;
  }

  ProductModel.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.name = json['name'];
    this.description = json['description'];
    this.price = json['price'];
    this.stars = json['stars'];
    this.img = json['img'];
    this.location = json['location'];
    this.createdAt = json['created_at'];
    this.updatedAt = json['updated_at'];
    this.typeId = json['type_id'];
  }
  Map<String, dynamic> toJson() {
    return {
      "id": this.id,
      "name": this.name,
      "price": this.price,
      "img": this.img,
      "location": this.location,
      "createdAt": this.createdAt,
      "updatedAt": this.updatedAt,
      "typeId": this.typeId,
    };
  }
}