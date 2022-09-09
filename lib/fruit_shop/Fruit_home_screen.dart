import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_ui_template/fruit_shop/fruit_data.dart';

class FruitHomeScreen extends StatelessWidget {
  const FruitHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF4F4F4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Color(0xFF303030),
                          size: 15,
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Icon(
                      Icons.menu,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 30),
                    child: const Text(
                      'Fruits And Berries',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFF8F8F8),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.search,
                          color: Colors.black87,
                        ),
                        const SizedBox(width: 20),
                        Text(
                          'Search',
                          style:
                              TextStyle(color: Colors.black38.withOpacity(0.3)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            Expanded(
                child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.custom(
                physics: const BouncingScrollPhysics(),
                gridDelegate: SliverQuiltedGridDelegate(
                  crossAxisCount: 20,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  repeatPattern: QuiltedGridRepeatPattern.inverted,
                  pattern: [
                    const QuiltedGridTile(13, 11),
                    const QuiltedGridTile(13, 9),
                    const QuiltedGridTile(12, 9),
                    const QuiltedGridTile(12, 11),
                  ],
                ),
                childrenDelegate: SliverChildBuilderDelegate(
                    (context, index) => FruitCard(
                          allFruits[index],
                          'Item $index}',
                          () {},
                        ),
                    childCount: allFruits.length),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class FruitCard extends StatelessWidget {
  const FruitCard(
    this.fruitItem,
    this.heroTag,
    this.onTap, {
    Key? key,
  }) : super(key: key);

  final FruitItem fruitItem;
  final Function onTap;
  final String heroTag;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Color(fruitItem.colorCode!),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text(
                fruitItem.fruitName!,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            fruitItem.weight == ''
                ? const SizedBox()
                : Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                    child: Text(fruitItem.weight!),
                  ),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                child: Text(
                  '\$${fruitItem.price}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                )),
            Align(
              alignment: Alignment.center,
              child: Hero(
                tag: heroTag,
                child: Image.asset(
                  'assets/fruit/${fruitItem.image}.png',
                  fit: BoxFit.contain,
                  width: 100,
                ),
              ),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.purple.withOpacity(0.15),
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(15),
                        topLeft: Radius.circular(15))),
                height: 32,
                width: 40,
                child: const Icon(
                  Icons.check_rounded,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
