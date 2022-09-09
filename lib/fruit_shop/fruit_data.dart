class FruitItem {
  final String? fruitName, price, weight, image;
  final int? colorCode;
  FruitItem(
      {this.fruitName, this.price, this.colorCode, this.weight, this.image});
}

List<FruitItem> allFruits = [
  FruitItem(
    fruitName: 'Strawberry',
    price: '45',
    weight: '2.6 lb',
    image: 'strawberry',
    colorCode: 0xFFFFE3E5,
  ),
  FruitItem(
    fruitName: 'Pineapple',
    price: '6.2 each',
    weight: '.2',
    image: 'pineapple',
    colorCode: 0xFFFFFBD8,
  ),
  FruitItem(
    fruitName: 'Blueberries',
    price: '5.29',
    weight: '3 KG',
    image: 'blueberries',
    colorCode: 0xFFE4E4FE,
  ),
  FruitItem(
    fruitName: 'Dragon Fruit',
    price: '22.3',
    weight: 'Average 1.87 g',
    image: 'dragon-fruit',
    colorCode: 0xFFFFEEFE,
  ),
  FruitItem(
    fruitName: 'Lychee',
    price: '8.22 per lb',
    weight: '1 lb',
    image: 'lychee',
    colorCode: 0xFFD8FFD0,
  ),
  FruitItem(
    fruitName: 'Mango',
    price: '1.01 each',
    weight: '',
    image: 'mango',
    colorCode: 0xFFFFE08E,
  ),
  FruitItem(
    fruitName: 'Strawberry',
    price: '45',
    weight: '2.6 lb',
    image: 'strawberry',
    colorCode: 0xFFFFE3E5,
  ),
  FruitItem(
    fruitName: 'Blueberries',
    price: '5.29',
    weight: '3 KG',
    image: 'blueberries',
    colorCode: 0xFFE4E4FE,
  ),
];
