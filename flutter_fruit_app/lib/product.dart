class Product {
  final String name;
  final String price;
  final String quantity;
  final String image;
  final String description;

  const Product(
    this.name,
    this.price,
    this.quantity,
    this.image,
    this.description,
  );
}

final List<Product> allData = [
  const Product(
    'Bayam',
    'Rp 2.000',
    'Ikat',
    'assets/bayam.png',
    'Bayam hijau segar langsung dari petani lokal, kaya akan zat besi dan vitamin.',
  ),
  const Product(
    'Avokat',
    'Rp 12.000',
    'Kg',
    'assets/avokat.png',
    'Avokat mentega pilihan dengan daging buah tebal, lembut, dan bernutrisi tinggi.',
  ),
  const Product(
    'Jagung',
    'Rp 10.000',
    'Kg',
    'assets/jagung.png',
    'Jagung manis segar berkualitas tinggi, cocok untuk direbus, dibakar, atau dimasak.',
  ),
  const Product(
    'Kiwi',
    'Rp 22.000',
    'Kg',
    'assets/kiwi.png',
    'Buah kiwi segar kaya vitamin C dan antioksidan untuk menjaga daya tahan tubuh.',
  ),
  const Product(
    'Jeruk',
    'Rp 15.000',
    'Kg',
    'assets/jeruk.png',
    'Jeruk manis segar dengan kandungan air melimpah dan vitamin C tinggi.',
  ),
  const Product(
    'Apel',
    'Rp 20.000',
    'Kg',
    'assets/apel.png',
    'Apel merah renyah dan manis, pilihan sehat untuk camilan keluarga setiap hari.',
  ),
];
