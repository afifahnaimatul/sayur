class FoodClass {
  int _totalHits;
  int _currentPage;
  int _totalPages;
  List<int> _pageList;
  FoodSearchCriteria _foodSearchCriteria;
  List<Foods> _foods;

  FoodClass(
      {int totalHits,
      int currentPage,
      int totalPages,
      List<int> pageList,
      FoodSearchCriteria foodSearchCriteria,
      List<Foods> foods}) {
    this._totalHits = totalHits;
    this._currentPage = currentPage;
    this._totalPages = totalPages;
    this._pageList = pageList;
    this._foodSearchCriteria = foodSearchCriteria;
    this._foods = foods;
  }

  int get totalHits => _totalHits;
  set totalHits(int totalHits) => _totalHits = totalHits;
  int get currentPage => _currentPage;
  set currentPage(int currentPage) => _currentPage = currentPage;
  int get totalPages => _totalPages;
  set totalPages(int totalPages) => _totalPages = totalPages;
  List<int> get pageList => _pageList;
  set pageList(List<int> pageList) => _pageList = pageList;
  FoodSearchCriteria get foodSearchCriteria => _foodSearchCriteria;
  set foodSearchCriteria(FoodSearchCriteria foodSearchCriteria) =>
      _foodSearchCriteria = foodSearchCriteria;
  List<Foods> get foods => _foods;
  set foods(List<Foods> foods) => _foods = foods;

  FoodClass.fromJson(Map<String, dynamic> json) {
    _totalHits = json['totalHits'];
    _currentPage = json['currentPage'];
    _totalPages = json['totalPages'];
    _pageList = json['pageList'].cast<int>();
    _foodSearchCriteria = json['foodSearchCriteria'] != null
        ? new FoodSearchCriteria.fromJson(json['foodSearchCriteria'])
        : null;
    if (json['foods'] != null) {
      _foods = new List<Foods>();
      json['foods'].forEach((v) {
        _foods.add(new Foods.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['totalHits'] = this._totalHits;
    data['currentPage'] = this._currentPage;
    data['totalPages'] = this._totalPages;
    data['pageList'] = this._pageList;
    if (this._foodSearchCriteria != null) {
      data['foodSearchCriteria'] = this._foodSearchCriteria.toJson();
    }
    if (this._foods != null) {
      data['foods'] = this._foods.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FoodSearchCriteria {
  String _query;
  String _generalSearchInput;
  int _pageNumber;
  int _numberOfResultsPerPage;
  int _pageSize;
  bool _requireAllWords;

  FoodSearchCriteria(
      {String query,
      String generalSearchInput,
      int pageNumber,
      int numberOfResultsPerPage,
      int pageSize,
      bool requireAllWords}) {
    this._query = query;
    this._generalSearchInput = generalSearchInput;
    this._pageNumber = pageNumber;
    this._numberOfResultsPerPage = numberOfResultsPerPage;
    this._pageSize = pageSize;
    this._requireAllWords = requireAllWords;
  }

  String get query => _query;
  set query(String query) => _query = query;
  String get generalSearchInput => _generalSearchInput;
  set generalSearchInput(String generalSearchInput) =>
      _generalSearchInput = generalSearchInput;
  int get pageNumber => _pageNumber;
  set pageNumber(int pageNumber) => _pageNumber = pageNumber;
  int get numberOfResultsPerPage => _numberOfResultsPerPage;
  set numberOfResultsPerPage(int numberOfResultsPerPage) =>
      _numberOfResultsPerPage = numberOfResultsPerPage;
  int get pageSize => _pageSize;
  set pageSize(int pageSize) => _pageSize = pageSize;
  bool get requireAllWords => _requireAllWords;
  set requireAllWords(bool requireAllWords) =>
      _requireAllWords = requireAllWords;

  FoodSearchCriteria.fromJson(Map<String, dynamic> json) {
    _query = json['query'];
    _generalSearchInput = json['generalSearchInput'];
    _pageNumber = json['pageNumber'];
    _numberOfResultsPerPage = json['numberOfResultsPerPage'];
    _pageSize = json['pageSize'];
    _requireAllWords = json['requireAllWords'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['query'] = this._query;
    data['generalSearchInput'] = this._generalSearchInput;
    data['pageNumber'] = this._pageNumber;
    data['numberOfResultsPerPage'] = this._numberOfResultsPerPage;
    data['pageSize'] = this._pageSize;
    data['requireAllWords'] = this._requireAllWords;
    return data;
  }
}

class Foods {
  int _fdcId;
  String _description;
  String _lowercaseDescription;
  String _dataType;
  String _gtinUpc;
  String _publishedDate;
  String _brandOwner;
  String _brandName;
  String _ingredients;
  String _marketCountry;
  String _foodCategory;
  String _allHighlightFields;
  double _score;
  List<FoodNutrients> _foodNutrients;
  String _commonNames;
  String _additionalDescriptions;
  int _foodCode;
  int _ndbNumber;

  Foods(
      {int fdcId,
      String description,
      String lowercaseDescription,
      String dataType,
      String gtinUpc,
      String publishedDate,
      String brandOwner,
      String brandName,
      String ingredients,
      String marketCountry,
      String foodCategory,
      String allHighlightFields,
      double score,
      List<FoodNutrients> foodNutrients,
      String commonNames,
      String additionalDescriptions,
      int foodCode,
      int ndbNumber}) {
    this._fdcId = fdcId;
    this._description = description;
    this._lowercaseDescription = lowercaseDescription;
    this._dataType = dataType;
    this._gtinUpc = gtinUpc;
    this._publishedDate = publishedDate;
    this._brandOwner = brandOwner;
    this._brandName = brandName;
    this._ingredients = ingredients;
    this._marketCountry = marketCountry;
    this._foodCategory = foodCategory;
    this._allHighlightFields = allHighlightFields;
    this._score = score;
    this._foodNutrients = foodNutrients;
    this._commonNames = commonNames;
    this._additionalDescriptions = additionalDescriptions;
    this._foodCode = foodCode;
    this._ndbNumber = ndbNumber;
  }

  int get fdcId => _fdcId;
  set fdcId(int fdcId) => _fdcId = fdcId;
  String get description => _description;
  set description(String description) => _description = description;
  String get lowercaseDescription => _lowercaseDescription;
  set lowercaseDescription(String lowercaseDescription) =>
      _lowercaseDescription = lowercaseDescription;
  String get dataType => _dataType;
  set dataType(String dataType) => _dataType = dataType;
  String get gtinUpc => _gtinUpc;
  set gtinUpc(String gtinUpc) => _gtinUpc = gtinUpc;
  String get publishedDate => _publishedDate;
  set publishedDate(String publishedDate) => _publishedDate = publishedDate;
  String get brandOwner => _brandOwner;
  set brandOwner(String brandOwner) => _brandOwner = brandOwner;
  String get brandName => _brandName;
  set brandName(String brandName) => _brandName = brandName;
  String get ingredients => _ingredients;
  set ingredients(String ingredients) => _ingredients = ingredients;
  String get marketCountry => _marketCountry;
  set marketCountry(String marketCountry) => _marketCountry = marketCountry;
  String get foodCategory => _foodCategory;
  set foodCategory(String foodCategory) => _foodCategory = foodCategory;
  String get allHighlightFields => _allHighlightFields;
  set allHighlightFields(String allHighlightFields) =>
      _allHighlightFields = allHighlightFields;
  double get score => _score;
  set score(double score) => _score = score;
  List<FoodNutrients> get foodNutrients => _foodNutrients;
  set foodNutrients(List<FoodNutrients> foodNutrients) =>
      _foodNutrients = foodNutrients;
  String get commonNames => _commonNames;
  set commonNames(String commonNames) => _commonNames = commonNames;
  String get additionalDescriptions => _additionalDescriptions;
  set additionalDescriptions(String additionalDescriptions) =>
      _additionalDescriptions = additionalDescriptions;
  int get foodCode => _foodCode;
  set foodCode(int foodCode) => _foodCode = foodCode;
  int get ndbNumber => _ndbNumber;
  set ndbNumber(int ndbNumber) => _ndbNumber = ndbNumber;

  Foods.fromJson(Map<String, dynamic> json) {
    _fdcId = json['fdcId'];
    _description = json['description'];
    _lowercaseDescription = json['lowercaseDescription'];
    _dataType = json['dataType'];
    _gtinUpc = json['gtinUpc'];
    _publishedDate = json['publishedDate'];
    _brandOwner = json['brandOwner'];
    _brandName = json['brandName'];
    _ingredients = json['ingredients'];
    _marketCountry = json['marketCountry'];
    _foodCategory = json['foodCategory'];
    _allHighlightFields = json['allHighlightFields'];
    _score = json['score'];
    if (json['foodNutrients'] != null) {
      _foodNutrients = new List<FoodNutrients>();
      json['foodNutrients'].forEach((v) {
        _foodNutrients.add(new FoodNutrients.fromJson(v));
      });
    }
    _commonNames = json['commonNames'];
    _additionalDescriptions = json['additionalDescriptions'];
    _foodCode = json['foodCode'];
    _ndbNumber = json['ndbNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fdcId'] = this._fdcId;
    data['description'] = this._description;
    data['lowercaseDescription'] = this._lowercaseDescription;
    data['dataType'] = this._dataType;
    data['gtinUpc'] = this._gtinUpc;
    data['publishedDate'] = this._publishedDate;
    data['brandOwner'] = this._brandOwner;
    data['brandName'] = this._brandName;
    data['ingredients'] = this._ingredients;
    data['marketCountry'] = this._marketCountry;
    data['foodCategory'] = this._foodCategory;
    data['allHighlightFields'] = this._allHighlightFields;
    data['score'] = this._score;
    if (this._foodNutrients != null) {
      data['foodNutrients'] =
          this._foodNutrients.map((v) => v.toJson()).toList();
    }
    data['commonNames'] = this._commonNames;
    data['additionalDescriptions'] = this._additionalDescriptions;
    data['foodCode'] = this._foodCode;
    data['ndbNumber'] = this._ndbNumber;
    return data;
  }
}

class FoodNutrients {
  int _nutrientId;
  String _nutrientName;
  String _nutrientNumber;
  String _unitName;
  String _derivationCode;
  String _derivationDescription;
  String _value;

  FoodNutrients(
      {int nutrientId,
      String nutrientName,
      String nutrientNumber,
      String unitName,
      String derivationCode,
      String derivationDescription,
      String value}) {
    this._nutrientId = nutrientId;
    this._nutrientName = nutrientName;
    this._nutrientNumber = nutrientNumber;
    this._unitName = unitName;
    this._derivationCode = derivationCode;
    this._derivationDescription = derivationDescription;
    this._value = value;
  }

  int get nutrientId => _nutrientId;
  set nutrientId(int nutrientId) => _nutrientId = nutrientId;
  String get nutrientName => _nutrientName;
  set nutrientName(String nutrientName) => _nutrientName = nutrientName;
  String get nutrientNumber => _nutrientNumber;
  set nutrientNumber(String nutrientNumber) => _nutrientNumber = nutrientNumber;
  String get unitName => _unitName;
  set unitName(String unitName) => _unitName = unitName;
  String get derivationCode => _derivationCode;
  set derivationCode(String derivationCode) => _derivationCode = derivationCode;
  String get derivationDescription => _derivationDescription;
  set derivationDescription(String derivationDescription) =>
      _derivationDescription = derivationDescription;
  String get value => _value;
  set value(String value) => _value = value;

  FoodNutrients.fromJson(Map<String, dynamic> json) {
    _nutrientId = json['nutrientId'];
    _nutrientName = json['nutrientName'];
    _nutrientNumber = json['nutrientNumber'];
    _unitName = json['unitName'];
    _derivationCode = json['derivationCode'];
    _derivationDescription = json['derivationDescription'];
    _value = json['value'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nutrientId'] = this._nutrientId;
    data['nutrientName'] = this._nutrientName;
    data['nutrientNumber'] = this._nutrientNumber;
    data['unitName'] = this._unitName;
    data['derivationCode'] = this._derivationCode;
    data['derivationDescription'] = this._derivationDescription;
    data['value'] = this._value;
    return data;
  }
}
