import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes  for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom FREAK',
      price: '8695',
      description:
          ' It pairs smooth leather, synthetic leather and tough textiles with a nubby Waffle sole—creating that vintage gridiron look. Step into a piece of sneaker history and carve your own path into the future.',
      imagePath: 'lib/images/shoe 2.png',
    ),
    Shoe(
      name: 'Nike Air Force 1LV8',
      price: '14999',
      description:
          'A classic remixed with at least 20% recycled materials by weight.We replaced leather with recycled and synthetic materials that keeps the soul of the original style.',
      imagePath: 'lib/images/shoe 3.png',
    ),
    Shoe(
      name: 'Nike Air Force 1',
      price: '8999',
      description:
          'The padded, mid-cut collar with classic hook-and-loop closure adds heritage b-ball comfort while perforations on the toe keep you cool.',
      imagePath: 'lib/images/shoe 4.png',
    ),
    Shoe(
      name: 'Nike Air Force ',
      price: '9207',
      description:
          'Based on the classic game shoe from 1990, it has all the iconic details, including the bump-out collar, lace toggle and fighter plane-inspired design lines.',
      imagePath: 'lib/images/shoe 5.png',
    ),
    Shoe(
      name: 'Nike Air Force 1 Low',
      price: '12795',
      description:
          'The classic \'80s construction is paired with pristine materials for style that tracks whether you \'re on court or on the go. A subtle platform gives you just the right amount of height.',
      imagePath: 'lib/images/shoe 6.png',
    ),
    Shoe(
      name: 'Nike Dunk Low',
      price: '8695',
      description:
          'This Nike Air Force 1 \'07 reinvents itself again, pairing classic \'80s construction with metallic flash and bold contrast vibes for style that tracks whether you \'re on court or on the go.',
      imagePath: 'lib/images/shoe 1.png',
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
