class ProductModel {
  final String image;
  final String productName;

  ProductModel({required this.image, required this.productName});
}

List<ProductModel> myFavorite = [
  ProductModel(image: 'assets/icons/wifi.png', productName: 'Internet & TV Kabel'),
  ProductModel(image: 'assets/icons/pulsa-and-data.png', productName: 'Pulsa & Data'),
  ProductModel(image: 'assets/icons/uang-elektronik.png', productName: 'Uang Elektronik'),
];
List<ProductModel> daily = [
  ProductModel(image: 'assets/icons/pulsa-and-data.png', productName: 'Pulsa & Data'),
  ProductModel(image: 'assets/icons/uang-elektronik.png', productName: 'Uang Elektronik'),

];
List<ProductModel> bills = [
  ProductModel(image: 'assets/icons/air.png', productName: 'Air'),
  ProductModel(image: 'assets/icons/wifi.png', productName: 'Listrik PLN'),
  ProductModel(image: 'assets/icons/wifi.png', productName: 'Internet & TV Kabel'),
  ProductModel(image: 'assets/icons/pendidikan.png', productName: 'Pendidikan'),
  ProductModel(image: 'assets/icons/pulsa-and-data.png', productName: 'Pasca Bayar'),
];
List<ProductModel> entertainment = [
  ProductModel(image: 'assets/icons/games.png', productName: 'Games'),
];