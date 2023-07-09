import 'package:flutter/widgets.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier{
  //list of shoe foe sale

  List<Shoe> shoeShop = [
    Shoe(name: 'Zoom FREAK',
     price: '70000',
      desctiption: 'The farward-thinking design of his latest signature shoe .',
       imagePath: 'lib/images/nike1.jpeg'
       ),
        Shoe(name: 'Air Jordans ',
     price: '70000',
      desctiption: 'You\'ve got the hops and the speed-lace up in shoe that enhance .',
       imagePath: 'lib/images/nike2.jpeg'
       ),
        Shoe(name: 'KD Treys',
     price: '70000',
      desctiption: 'A secured midfoot strap is suited for scoring binges and defensive  .',
       imagePath: 'lib/images/nike3.jpeg'
       ),
        Shoe(name: 'Zoom FREAK',
     price: '70000',
      desctiption: 'The farward-thinking design of his latest signature shoe .',
       imagePath: 'lib/images/nike4.png'
       )
  ];
  //list of items in user cart
  List<Shoe> userCart =[];

  //get list of items for sale
  List<Shoe> getShoeList(){
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart(){
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();

  }


  //remove items from cart
  void removeItem(Shoe shoe)
  {
    userCart.remove(shoe);
    notifyListeners();
  }

}