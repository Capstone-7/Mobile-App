class DataOfferingModel {
  final String offering;
  final int finalPrice;
  final String description;

  DataOfferingModel(
      {required this.offering,
      required this.finalPrice,
      required this.description});
}

List<DataOfferingModel> dataOfferings = [
  DataOfferingModel(
      offering: 'Xtra ON 2GB', finalPrice: 25000, description: ''),
  DataOfferingModel(
      offering: 'Xtra Hotrod special 6.5GB, 7hr',
      finalPrice: 25000,
      description:
          'Kuota utama 2GB, Dapat digunakan di jaringan 2G/3G/4G dari jam 00.00-24.00 WIB, Dapat digunakan untuk apps Microsoft Teams, Zoom, Google Meet, Google Hangout, Google Classroom, Masa aktif 1 hari.'),
  DataOfferingModel(
      offering: 'Xtra Combo Double Youtube 5GB+10GB',
      finalPrice: 60000,
      description: ''),
  DataOfferingModel(
      offering: 'Akrab 28GB, 2 Anggota, 30hr',
      finalPrice: 62000,
      description: ''),
  DataOfferingModel(
      offering: 'Xtra Combo Double Youtube 10GB+20GB',
      finalPrice: 89000,
      description: ''),
];
