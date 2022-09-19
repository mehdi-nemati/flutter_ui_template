import 'package:flutter/material.dart';

import 'fruit_data.dart';

class FruitSetailsScreen extends StatelessWidget {
  final FruitItem fruitItem;
  final int index;

  const FruitSetailsScreen(this.fruitItem, this.index, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(fruitItem.colorCode!),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: const Color(0xFFF4F4F4),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF303030),
              size: 15,
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(
              Icons.menu,
              color: Colors.black87,
            ),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .45,
            child: Hero(
                tag: 'Item $index}',
                child: Image.asset('assets/fruit/${fruitItem.image}.png')),
          ),
          /* <--------------- Details of Fruit ---------------> */
          Container(
            height: MediaQuery.of(context).size.height * .55,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(30),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Text(
                    fruitItem.fruitName!,
                    style: const TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  fruitItem.weight == ''
                      ? const SizedBox()
                      : Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: Text(
                            fruitItem.weight!,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black.withOpacity(0.4),
                            ),
                          ),
                        ),
                  const SizedBox(height: 20),
                  /* <--------------- Quantity ---------------> */
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFF8F8F8),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.all(15),
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(Icons.remove),
                            Text('1'),
                            Icon(Icons.add),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          '\$ ${fruitItem.price}',
                          style: const TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    'Product Description',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: const Text(
                        '''Mangos are the national pastime in the Caribbean. Each village passionately claims they grow the best mango and that every man, women and child has their own favorite. The locals hold the mango in reverence as if it where the key to the universe.
                    '''),
                  ),
                  /* <-----------------------> 
                              Button
                   <-----------------------> */
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Color(fruitItem.colorCode!),
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(
                          Icons.favorite,
                          color: Color(fruitItem.colorCode!),
                          size: 40,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(left: 15),
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Color(fruitItem.colorCode!),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Text(
                            'Add To Cart',
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
