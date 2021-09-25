class Sayur {
  int statusCode;
  Data data;

  Sayur({this.statusCode, this.data});

  Sayur.fromJson(Map<String, dynamic> json) {
    statusCode = json['status_code'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status_code'] = this.statusCode;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class Data {
  List<Fruit> fruit;
  List<Vegetable> vegetable;

  Data({this.fruit, this.vegetable});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['fruit'] != null) {
      fruit = new List<Fruit>();
      json['fruit'].forEach((v) {
        fruit.add(new Fruit.fromJson(v));
      });
    }
    if (json['vegetable'] != null) {
      vegetable = new List<Vegetable>();
      json['vegetable'].forEach((v) {
        vegetable.add(new Vegetable.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.fruit != null) {
      data['fruit'] = this.fruit.map((v) => v.toJson()).toList();
    }
    if (this.vegetable != null) {
      data['vegetable'] = this.vegetable.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Fruit {
  Food food;

  Fruit({this.food});

  Fruit.fromJson(Map<String, dynamic> json) {
    food = json['food'] != null ? new Food.fromJson(json['food']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.food != null) {
      data['food'] = this.food.toJson();
    }
    return data;
  }
}

class Food {
  String foodId;
  String uri;
  String label;
  Nutrients nutrients;
  String category;
  String categoryLabel;
  String image;
  String foodContentsLabel;

  Food(
      {this.foodId,
      this.uri,
      this.label,
      this.nutrients,
      this.category,
      this.categoryLabel,
      this.image,
      this.foodContentsLabel});

  Food.fromJson(Map<String, dynamic> json) {
    foodId = json['foodId'];
    uri = json['uri'];
    label = json['label'];
    nutrients = json['nutrients'] != null
        ? new Nutrients.fromJson(json['nutrients'])
        : null;
    category = json['category'];
    categoryLabel = json['categoryLabel'];
    image = json['image'];
    foodContentsLabel = json['foodContentsLabel'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['foodId'] = this.foodId;
    data['uri'] = this.uri;
    data['label'] = this.label;
    if (this.nutrients != null) {
      data['nutrients'] = this.nutrients.toJson();
    }
    data['category'] = this.category;
    data['categoryLabel'] = this.categoryLabel;
    data['image'] = this.image;
    data['foodContentsLabel'] = this.foodContentsLabel;
    return data;
  }
}

class Nutrients {
  double eNERCKCAL;
  double pROCNT;
  double fAT;
  double cHOCDF;
  double fIBTG;

  Nutrients({this.eNERCKCAL, this.pROCNT, this.fAT, this.cHOCDF, this.fIBTG});

  Nutrients.fromJson(Map<String, dynamic> json) {
    eNERCKCAL = json['ENERC_KCAL'];
    pROCNT = json['PROCNT'];
    fAT = json['FAT'];
    cHOCDF = json['CHOCDF'];
    fIBTG = json['FIBTG'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ENERC_KCAL'] = this.eNERCKCAL;
    data['PROCNT'] = this.pROCNT;
    data['FAT'] = this.fAT;
    data['CHOCDF'] = this.cHOCDF;
    data['FIBTG'] = this.fIBTG;
    return data;
  }
}

class Vegetable {
  String foodId;
  String uri;
  String label;
  Nutrients nutrients;
  String category;
  String categoryLabel;
  String image;
  String brand;
  String foodContentsLabel;

  Vegetable(
      {this.foodId,
      this.uri,
      this.label,
      this.nutrients,
      this.category,
      this.categoryLabel,
      this.image,
      this.brand,
      this.foodContentsLabel});

  Vegetable.fromJson(Map<String, dynamic> json) {
    foodId = json['foodId'];
    uri = json['uri'];
    label = json['label'];
    nutrients = json['nutrients'] != null
        ? new Nutrients.fromJson(json['nutrients'])
        : null;
    category = json['category'];
    categoryLabel = json['categoryLabel'];
    image = json['image'];
    brand = json['brand'];
    foodContentsLabel = json['foodContentsLabel'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['foodId'] = this.foodId;
    data['uri'] = this.uri;
    data['label'] = this.label;
    if (this.nutrients != null) {
      data['nutrients'] = this.nutrients.toJson();
    }
    data['category'] = this.category;
    data['categoryLabel'] = this.categoryLabel;
    data['image'] = this.image;
    data['brand'] = this.brand;
    data['foodContentsLabel'] = this.foodContentsLabel;
    return data;
  }
}
