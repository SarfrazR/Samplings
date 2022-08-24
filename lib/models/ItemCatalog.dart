class catalog{
  final Items = [
  Item(
    id : 1,
    name : 'Iphone 12' ,
    desc :  'Apple iPhone 12th Generation',
    price :  999,
    color :  'Green',
    image : 'sda'
    )
];
}



class Item{
  final int? id;
  final String? name;
  final String? desc;
  final num? price;
  final String? color;
  final String? image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}

