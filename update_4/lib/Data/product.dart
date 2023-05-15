import 'supplier.dart';
import 'package:uuid/uuid.dart';

final uuid = Uuid(); //for unique ids :)
class Category {
  final String title;

  Category({required this.title});
}
Category electronics = Category(title: 'Electronics');
Category toys = Category(title: 'Toys');
Category fashion = Category(title: 'Fashion');
class Product {
  final String id;
  final String name;
  final List<String> imageUrls;
  final double cost;
  final int quantity;
  final String? description;
  final Category category;

  Product(
      {required this.id,
        required this.name,
      required this.imageUrls,
      required this.cost,
      required this.quantity,
      this.description,
      required this.category});
}

final List<Product> products1 = [
  Product(
    id:uuid.v4(),//unique id
      name: 'Product 1',
      imageUrls: [
        'https://th.bing.com/th/id/R.35b91db87589f4c2640da04cd2156436?rik=0RP2LAjtrh4kHg&riu=http%3a%2f%2f47bf27f91a0b1190a802-5e12d9db40f00b709a94922ff2488490.r40.cf2.rackcdn.com%2fproduct-hugerect-81182-32661-1362643376-a905dab72b012c9acf198186e82776c4.jpg&ehk=TeYTUVJtDo7kml7HrYg56cDJT%2fFMzxBGq05iPEA8rbc%3d&risl=&pid=ImgRaw&r=0',
        'https://th.bing.com/th/id/R.35b91db87589f4c2640da04cd2156436?rik=0RP2LAjtrh4kHg&riu=http%3a%2f%2f47bf27f91a0b1190a802-5e12d9db40f00b709a94922ff2488490.r40.cf2.rackcdn.com%2fproduct-hugerect-81182-32661-1362643376-a905dab72b012c9acf198186e82776c4.jpg&ehk=TeYTUVJtDo7kml7HrYg56cDJT%2fFMzxBGq05iPEA8rbc%3d&risl=&pid=ImgRaw&r=0',
        'https://th.bing.com/th/id/R.35b91db87589f4c2640da04cd2156436?rik=0RP2LAjtrh4kHg&riu=http%3a%2f%2f47bf27f91a0b1190a802-5e12d9db40f00b709a94922ff2488490.r40.cf2.rackcdn.com%2fproduct-hugerect-81182-32661-1362643376-a905dab72b012c9acf198186e82776c4.jpg&ehk=TeYTUVJtDo7kml7HrYg56cDJT%2fFMzxBGq05iPEA8rbc%3d&risl=&pid=ImgRaw&r=0',
        'https://th.bing.com/th/id/R.35b91db87589f4c2640da04cd2156436?rik=0RP2LAjtrh4kHg&riu=http%3a%2f%2f47bf27f91a0b1190a802-5e12d9db40f00b709a94922ff2488490.r40.cf2.rackcdn.com%2fproduct-hugerect-81182-32661-1362643376-a905dab72b012c9acf198186e82776c4.jpg&ehk=TeYTUVJtDo7kml7HrYg56cDJT%2fFMzxBGq05iPEA8rbc%3d&risl=&pid=ImgRaw&r=0'
      ],
      cost: 10.0,
      quantity: 100,
      category: fashion),
       Product(
    id:uuid.v4(),//unique id
      name: 'Product 1',
      imageUrls: [
        'https://th.bing.com/th/id/R.35b91db87589f4c2640da04cd2156436?rik=0RP2LAjtrh4kHg&riu=http%3a%2f%2f47bf27f91a0b1190a802-5e12d9db40f00b709a94922ff2488490.r40.cf2.rackcdn.com%2fproduct-hugerect-81182-32661-1362643376-a905dab72b012c9acf198186e82776c4.jpg&ehk=TeYTUVJtDo7kml7HrYg56cDJT%2fFMzxBGq05iPEA8rbc%3d&risl=&pid=ImgRaw&r=0',
        'https://th.bing.com/th/id/R.35b91db87589f4c2640da04cd2156436?rik=0RP2LAjtrh4kHg&riu=http%3a%2f%2f47bf27f91a0b1190a802-5e12d9db40f00b709a94922ff2488490.r40.cf2.rackcdn.com%2fproduct-hugerect-81182-32661-1362643376-a905dab72b012c9acf198186e82776c4.jpg&ehk=TeYTUVJtDo7kml7HrYg56cDJT%2fFMzxBGq05iPEA8rbc%3d&risl=&pid=ImgRaw&r=0',
        'https://th.bing.com/th/id/R.35b91db87589f4c2640da04cd2156436?rik=0RP2LAjtrh4kHg&riu=http%3a%2f%2f47bf27f91a0b1190a802-5e12d9db40f00b709a94922ff2488490.r40.cf2.rackcdn.com%2fproduct-hugerect-81182-32661-1362643376-a905dab72b012c9acf198186e82776c4.jpg&ehk=TeYTUVJtDo7kml7HrYg56cDJT%2fFMzxBGq05iPEA8rbc%3d&risl=&pid=ImgRaw&r=0',
        'https://th.bing.com/th/id/R.35b91db87589f4c2640da04cd2156436?rik=0RP2LAjtrh4kHg&riu=http%3a%2f%2f47bf27f91a0b1190a802-5e12d9db40f00b709a94922ff2488490.r40.cf2.rackcdn.com%2fproduct-hugerect-81182-32661-1362643376-a905dab72b012c9acf198186e82776c4.jpg&ehk=TeYTUVJtDo7kml7HrYg56cDJT%2fFMzxBGq05iPEA8rbc%3d&risl=&pid=ImgRaw&r=0'
      ],
      cost: 10.0,
      quantity: 100,
      category: electronics),
  Product(
    id:uuid.v4(),
      name: 'Product 2',
      imageUrls: [
        'https://images-na.ssl-images-amazon.com/images/I/51BOanZMflL._AC_SX522_.jpg',
        'https://images-na.ssl-images-amazon.com/images/I/51BOanZMflL._AC_SX522_.jpg',
        'https://images-na.ssl-images-amazon.com/images/I/51BOanZMflL._AC_SX522_.jpg',
        'https://images-na.ssl-images-amazon.com/images/I/51BOanZMflL._AC_SX522_.jpg'
      ],
      cost: 20.0,
      quantity: 200,
      category: electronics),
];

List<Product> products = [
  Product(
    id:uuid.v4(),
    name: '2-Pack Crewneck T-Shirts - Black',
    imageUrls: [
      'https://th.bing.com/th/id/R.35b91db87589f4c2640da04cd2156436?rik=0RP2LAjtrh4kHg&riu=http%3a%2f%2f47bf27f91a0b1190a802-5e12d9db40f00b709a94922ff2488490.r40.cf2.rackcdn.com%2fproduct-hugerect-81182-32661-1362643376-a905dab72b012c9acf198186e82776c4.jpg&ehk=TeYTUVJtDo7kml7HrYg56cDJT%2fFMzxBGq05iPEA8rbc%3d&risl=&pid=ImgRaw&r=0',
      'https://th.bing.com/th/id/R.35b91db87589f4c2640da04cd2156436?rik=0RP2LAjtrh4kHg&riu=http%3a%2f%2f47bf27f91a0b1190a802-5e12d9db40f00b709a94922ff2488490.r40.cf2.rackcdn.com%2fproduct-hugerect-81182-32661-1362643376-a905dab72b012c9acf198186e82776c4.jpg&ehk=TeYTUVJtDo7kml7HrYg56cDJT%2fFMzxBGq05iPEA8rbc%3d&risl=&pid=ImgRaw&r=0',
      'https://th.bing.com/th/id/R.35b91db87589f4c2640da04cd2156436?rik=0RP2LAjtrh4kHg&riu=http%3a%2f%2f47bf27f91a0b1190a802-5e12d9db40f00b709a94922ff2488490.r40.cf2.rackcdn.com%2fproduct-hugerect-81182-32661-1362643376-a905dab72b012c9acf198186e82776c4.jpg&ehk=TeYTUVJtDo7kml7HrYg56cDJT%2fFMzxBGq05iPEA8rbc%3d&risl=&pid=ImgRaw&r=0',
      'https://th.bing.com/th/id/R.35b91db87589f4c2640da04cd2156436?rik=0RP2LAjtrh4kHg&riu=http%3a%2f%2f47bf27f91a0b1190a802-5e12d9db40f00b709a94922ff2488490.r40.cf2.rackcdn.com%2fproduct-hugerect-81182-32661-1362643376-a905dab72b012c9acf198186e82776c4.jpg&ehk=TeYTUVJtDo7kml7HrYg56cDJT%2fFMzxBGq05iPEA8rbc%3d&risl=&pid=ImgRaw&r=0'
    ],
    quantity: 5,
    cost: 12.99,
    category: fashion

  ),
  Product(
    id:uuid.v4(),//unique id
      name: 'Product 1',
      imageUrls: [
        'https://th.bing.com/th/id/R.35b91db87589f4c2640da04cd2156436?rik=0RP2LAjtrh4kHg&riu=http%3a%2f%2f47bf27f91a0b1190a802-5e12d9db40f00b709a94922ff2488490.r40.cf2.rackcdn.com%2fproduct-hugerect-81182-32661-1362643376-a905dab72b012c9acf198186e82776c4.jpg&ehk=TeYTUVJtDo7kml7HrYg56cDJT%2fFMzxBGq05iPEA8rbc%3d&risl=&pid=ImgRaw&r=0',
        'https://th.bing.com/th/id/R.35b91db87589f4c2640da04cd2156436?rik=0RP2LAjtrh4kHg&riu=http%3a%2f%2f47bf27f91a0b1190a802-5e12d9db40f00b709a94922ff2488490.r40.cf2.rackcdn.com%2fproduct-hugerect-81182-32661-1362643376-a905dab72b012c9acf198186e82776c4.jpg&ehk=TeYTUVJtDo7kml7HrYg56cDJT%2fFMzxBGq05iPEA8rbc%3d&risl=&pid=ImgRaw&r=0',
        'https://th.bing.com/th/id/R.35b91db87589f4c2640da04cd2156436?rik=0RP2LAjtrh4kHg&riu=http%3a%2f%2f47bf27f91a0b1190a802-5e12d9db40f00b709a94922ff2488490.r40.cf2.rackcdn.com%2fproduct-hugerect-81182-32661-1362643376-a905dab72b012c9acf198186e82776c4.jpg&ehk=TeYTUVJtDo7kml7HrYg56cDJT%2fFMzxBGq05iPEA8rbc%3d&risl=&pid=ImgRaw&r=0',
        'https://th.bing.com/th/id/R.35b91db87589f4c2640da04cd2156436?rik=0RP2LAjtrh4kHg&riu=http%3a%2f%2f47bf27f91a0b1190a802-5e12d9db40f00b709a94922ff2488490.r40.cf2.rackcdn.com%2fproduct-hugerect-81182-32661-1362643376-a905dab72b012c9acf198186e82776c4.jpg&ehk=TeYTUVJtDo7kml7HrYg56cDJT%2fFMzxBGq05iPEA8rbc%3d&risl=&pid=ImgRaw&r=0'
      ],
      cost: 10.0,
      quantity: 100,
      category: electronics),
  Product(
    id:uuid.v4(),
    name: 'Short Sleeve Henley - Blue',
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/51BOanZMflL._AC_SX522_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/51BOanZMflL._AC_SX522_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/51BOanZMflL._AC_SX522_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/51BOanZMflL._AC_SX522_.jpg'
    ],
    cost: 17.99,
    category: fashion,
    quantity: 5,
    
  ),
  Product(
    id:uuid.v4(),
    name: 'Polo RL V-Neck',
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/61m68nuygSL._AC_UX522_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/61URnzIoCPL._AC_UX522_.jpg',
    ],
    cost: 24.99,
    category: fashion,
    quantity: 5,
    
  ),
  Product(
    id:uuid.v4(),
    name: 'Athletic-Fit Stretch Jeans',
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/91SIuLNN%2BlL._AC_UY679_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/91Qpp%2BRPLtL._AC_UX522_.jpg',
    ],
    cost: 29.99,
    category: fashion,
    quantity: 25,
    
  ),
  Product(
    id:uuid.v4(),
    name: "Levi's Original Jeans",
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/91L4zjZKF-L._AC_UX522_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/91Mf37jbSvL._AC_UX522_.jpg',
    ],
    cost: 39.99,
    category: fashion,
    quantity: 52,
    
  ),
  Product(
    id:uuid.v4(),
    name: '2-Pack Performance Shorts',
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/A1lTY32j6gL._AC_UX679_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/71JYOHJ%2BS-L._AC_UX522_.jpg',
    ],
    cost: 19.99,
    category: fashion,
    quantity: 51,
    
  ),
  Product(
    id:uuid.v4(),
    name: "Levi's Straight 505 Jeans",
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/51D4eXuwKaL._AC_UX679_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/51sHwN6mDzL._AC_UX679_.jpg',
    ],
    cost: 34.99,
  category: fashion,
    
    quantity: 51,
  ),
  Product(
    id:uuid.v4(),
    name: "Levi's 715 Bootcut Jeans",
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/81QwSgeXHTL._AC_UX522_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/81qmkt1Be0L._AC_UY679_.jpg',
    ],
    cost: 34.99,
  category: fashion,
    
    quantity: 35,
  ),
  Product(
    id:uuid.v4(),
    name: '3-Pack - Squeaky Plush Dog Toy',
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/712YaF31-3L._AC_SL1000_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/71K1NzmHCfL._AC_SL1000_.jpg',
    ],
    cost: 9.99,
    category: toys,
    quantity: 5,
  ),
  Product(
    id:uuid.v4(),
    name: 'Wobble Wag Giggle Ball',
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/81XyqDXVwCL._AC_SX355_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/81Ye9KrP3pL._AC_SY355_.jpg',
    ],
    cost: 11.99,
        category: toys,
    
    quantity: 5,
  ),
  Product(
    id:uuid.v4(),
    name: 'Duck Hide Twists',
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/51dS9c0xIdL._SX342_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/81z4lvRtc5L._SL1500_.jpg',
    ],
    cost: 8.99,
        category: toys,
   
    quantity: 5,
  ),
  Product(
    id:uuid.v4(),
    name: "Zuke's Mini Training Treats",
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/81LV2CHtGKL._AC_SY355_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/81K30Bs9C6L._AC_SY355_.jpg',
    ],
    cost: 10.99,
        category: toys,
    quantity: 5,

  ),
];
final List<Product> fashionProducts = products
    .where((product) => product.category == fashion)
    .toList();

final List<Product> electronicsProducts = products
    .where(
        (product) => product.category == 'Electronics')
    .toList();
/*

class Category {
  final String title;
  final List<String> selections;

  Category({required this.title, required this.selections});
}

class Product {
  final String name;
  final List<String> imageUrls;
  final double cost;
  final int quantity;
  final String? description;
  final Category category;
  final String productType;

  Product(
      {required this.name,
      required this.imageUrls,
      required this.cost,
      required this.quantity,
      this.description,
      required this.category,
      required this.productType});
  Product copyWith({
    String? name,
    double? cost,
    int? quantity,
    String? description,
    Category? category,
    String? productType,
  }) {
    return Product(
      name: name ?? this.name,
      cost: cost ?? this.cost,
      quantity: quantity ?? this.quantity,
      description: description ?? this.description,
      category: category ?? this.category,
      productType: productType ?? this.productType,
      imageUrls: [],
    );
  }
}

Category mensCategory = Category(title: 'Men', selections: [
  'Shirts',
  'Jeans',
  'Shorts',
]);
Category womensCategory = Category(title: 'Women', selections: [
  'Shirts',
  'Jeans',
]);
Category petsCategory = Category(title: 'Pets', selections: [
  toys,
  'Treats',
]);
List<Product> products = [
  Product(
    name: '2-Pack Crewneck T-Shirts - Black',
    imageUrls: [
      'https://th.bing.com/th/id/R.35b91db87589f4c2640da04cd2156436?rik=0RP2LAjtrh4kHg&riu=http%3a%2f%2f47bf27f91a0b1190a802-5e12d9db40f00b709a94922ff2488490.r40.cf2.rackcdn.com%2fproduct-hugerect-81182-32661-1362643376-a905dab72b012c9acf198186e82776c4.jpg&ehk=TeYTUVJtDo7kml7HrYg56cDJT%2fFMzxBGq05iPEA8rbc%3d&risl=&pid=ImgRaw&r=0',
      'https://th.bing.com/th/id/R.35b91db87589f4c2640da04cd2156436?rik=0RP2LAjtrh4kHg&riu=http%3a%2f%2f47bf27f91a0b1190a802-5e12d9db40f00b709a94922ff2488490.r40.cf2.rackcdn.com%2fproduct-hugerect-81182-32661-1362643376-a905dab72b012c9acf198186e82776c4.jpg&ehk=TeYTUVJtDo7kml7HrYg56cDJT%2fFMzxBGq05iPEA8rbc%3d&risl=&pid=ImgRaw&r=0',
      'https://th.bing.com/th/id/R.35b91db87589f4c2640da04cd2156436?rik=0RP2LAjtrh4kHg&riu=http%3a%2f%2f47bf27f91a0b1190a802-5e12d9db40f00b709a94922ff2488490.r40.cf2.rackcdn.com%2fproduct-hugerect-81182-32661-1362643376-a905dab72b012c9acf198186e82776c4.jpg&ehk=TeYTUVJtDo7kml7HrYg56cDJT%2fFMzxBGq05iPEA8rbc%3d&risl=&pid=ImgRaw&r=0',
      'https://th.bing.com/th/id/R.35b91db87589f4c2640da04cd2156436?rik=0RP2LAjtrh4kHg&riu=http%3a%2f%2f47bf27f91a0b1190a802-5e12d9db40f00b709a94922ff2488490.r40.cf2.rackcdn.com%2fproduct-hugerect-81182-32661-1362643376-a905dab72b012c9acf198186e82776c4.jpg&ehk=TeYTUVJtDo7kml7HrYg56cDJT%2fFMzxBGq05iPEA8rbc%3d&risl=&pid=ImgRaw&r=0'
    ],
    quantity: 5,
    cost: 12.99,
    category: fashion,
    
  ),
  Product(
    name: 'Short Sleeve Henley - Blue',
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/51BOanZMflL._AC_SX522_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/51BOanZMflL._AC_SX522_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/51BOanZMflL._AC_SX522_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/51BOanZMflL._AC_SX522_.jpg'
    ],
    cost: 17.99,
    category: fashion,
    quantity: 5,
    
  ),
  Product(
    name: 'Polo RL V-Neck',
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/61m68nuygSL._AC_UX522_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/61URnzIoCPL._AC_UX522_.jpg',
    ],
    cost: 24.99,
    category: fashion,
    quantity: 5,
    
  ),
  Product(
    name: 'Athletic-Fit Stretch Jeans',
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/91SIuLNN%2BlL._AC_UY679_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/91Qpp%2BRPLtL._AC_UX522_.jpg',
    ],
    cost: 29.99,
    category: fashion,
    quantity: 25,
    
  ),
  Product(
    name: "Levi's Original Jeans",
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/91L4zjZKF-L._AC_UX522_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/91Mf37jbSvL._AC_UX522_.jpg',
    ],
    cost: 39.99,
    category: fashion,
    quantity: 52,
    
  ),
  Product(
    name: '2-Pack Performance Shorts',
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/A1lTY32j6gL._AC_UX679_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/71JYOHJ%2BS-L._AC_UX522_.jpg',
    ],
    cost: 19.99,
    category: fashion,
    quantity: 51,
    
  ),
  Product(
    name: "Levi's Straight 505 Jeans",
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/51D4eXuwKaL._AC_UX679_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/51sHwN6mDzL._AC_UX679_.jpg',
    ],
    cost: 34.99,
    category: womensCategory,
    
    quantity: 51,
  ),
  Product(
    name: "Levi's 715 Bootcut Jeans",
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/81QwSgeXHTL._AC_UX522_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/81qmkt1Be0L._AC_UY679_.jpg',
    ],
    cost: 34.99,
    category: womensCategory,
    
    quantity: 35,
  ),
  Product(
    name: '3-Pack - Squeaky Plush Dog Toy',
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/712YaF31-3L._AC_SL1000_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/71K1NzmHCfL._AC_SL1000_.jpg',
    ],
    cost: 9.99,
        category: toys,
    
    quantity: 5,
  ),
  Product(
    name: 'Wobble Wag Giggle Ball',
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/81XyqDXVwCL._AC_SX355_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/81Ye9KrP3pL._AC_SY355_.jpg',
    ],
    cost: 11.99,
        category: toys,
    
    quantity: 5,
  ),
  Product(
    name: 'Duck Hide Twists',
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/51dS9c0xIdL._SX342_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/81z4lvRtc5L._SL1500_.jpg',
    ],
    cost: 8.99,
        category: toys,
    productType: 'treats',
    quantity: 5,
  ),
  Product(
    name: "Zuke's Mini Training Treats",
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/81LV2CHtGKL._AC_SY355_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/81K30Bs9C6L._AC_SY355_.jpg',
    ],
    cost: 10.99,
        category: toys,
    quantity: 5,
    productType: 'treats',
  ),
];
*/