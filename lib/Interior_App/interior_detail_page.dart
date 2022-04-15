import 'package:flutter/material.dart';

class InteriorDetailPage extends StatefulWidget {
  const InteriorDetailPage({Key? key}) : super(key: key);

  @override
  State<InteriorDetailPage> createState() => _InteriorDetailPageState();
}

class _InteriorDetailPageState extends State<InteriorDetailPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Hero(
                tag: "pic",
                child: Image.asset(
                  "assets/jpg/furniture_1.jpg",
                  height: size.height * .55,
                  width: size.width,
                  fit: BoxFit.cover,
                )),
            const Positioned(right: 32, top: 70, child: Icon(Icons.share)),
            const Positioned(
                right: 69, top: 70, child: Icon(Icons.favorite_border)),
            const Positioned(
                left: 32, top: 70, child: Icon(Icons.arrow_back_rounded)),
            Positioned(
                bottom: 0,
                child: Container(
                  width: size.width,
                  height: size.height * .50,
                  padding: const EdgeInsets.symmetric(horizontal: 41),
                  decoration: const BoxDecoration(
                      color: Color(0xFFF4F6FC),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      )),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 23, bottom: 18.5),
                          width: 121,
                          height: 6,
                          color: const Color(0xFFF1E7E7),
                        ),
                        const Text(
                            "10 best interior ideas for your living room",
                            style: TextStyle(
                                fontFamily: "Sen",
                                fontSize: 20,
                                height: 1.4,
                                color: Color(0xFF333333))),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 20.5, bottom: 17.6),
                          child: Row(
                            children: [
                              const CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/jpg/profile_1.jpg"),
                              ),
                              const SizedBox(
                                width: 13.6,
                              ),
                              Column(
                                children: const [
                                  Text("Jean-Louis",
                                      style: TextStyle(
                                          fontFamily: "Sen",
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF333333))),
                                  Text("Interior Designer",
                                      style: TextStyle(
                                          fontFamily: "Sen",
                                          fontSize: 10,
                                          color: Color(0xFFBFBFBF)))
                                ],
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            tag("Interior"),
                            tag("40"),
                            tag("programmer"),
                          ],
                        ),
                        const SizedBox(
                          height: 22.6,
                        ),
                        const Text(
                            "Nobody wants to stare at a blank wall all day long, which is why wall art is such a crucial step in the decorating process. And once you start brainstorming, the rest is easy. From gallery walls to DIY pieces like framing your accessories and large-scale photography, we've got plenty of wall art ideas to spark your creativity. And where better to look for inspiration that interior designer-decorated walls",
                            style: TextStyle(
                                fontFamily: "Sen",
                                fontSize: 14,
                                height: 1.4,
                                color: Color(0xFF383838)))
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

Widget tag(String title) {
  return Container(
    margin: const EdgeInsets.only(right: 14),
    padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
    decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFDEDCDC)),
        borderRadius: BorderRadius.circular(4)),
    child: Text(
      title,
      style: TextStyle(
          fontFamily: "Sen",
          fontSize: 12,
          color: const Color(0xFF383838).withOpacity(.8)),
    ),
  );
}
