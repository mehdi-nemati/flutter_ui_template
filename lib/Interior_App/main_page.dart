import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color(0xFFF4F6FC),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(32, 24, 24, 34.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset("assets/svg/drawer.svg"),
                        Row(
                          children: [
                            SvgPicture.asset("assets/svg/search.svg"),
                            const SizedBox(
                              width: 18,
                            ),
                            const CircleAvatar(
                              backgroundColor: Color(0xFFE6EEFE),
                              radius: 20,
                              child: CircleAvatar(
                                radius: 16,
                                backgroundImage:
                                    AssetImage("assets/jpg/profile_1.jpg"),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  sectionTitle("Top Designer"),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 32,
                        ),
                        avatarStory("assets/jpg/profile_1.jpg", "Jean-Louis"),
                        avatarStory("assets/jpg/profile_2.jpg", "Mehdi"),
                        avatarStory("assets/jpg/profile_3.jpg", "Jean-Louis"),
                        avatarStory("assets/jpg/profile_4.jpg", "Mehdi"),
                        avatarStory("assets/jpg/profile_5.jpg", "Jean-Louis"),
                        avatarStory("assets/jpg/profile_1.jpg", "Mehdi"),
                        avatarStory("assets/jpg/profile_2.jpg", "Jean-Louis"),
                        avatarStory("assets/jpg/profile_3.jpg", "Mehdi"),
                        avatarStory("assets/jpg/profile_4.jpg", "Mehdi"),
                        avatarStory("assets/jpg/profile_5.jpg", "Mehdi"),
                      ],
                    ),
                  ),
                  sectionTitle("Popular Design", paddingTop: 30),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(32, 0, 32, 14),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        "assets/jpg/furniture_1.jpg",
                        height: 148,
                        width: size.width,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(32, 0, 14, 14),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                "assets/jpg/furniture_2.jpg",
                                height: 148,
                                width: (size.width - 78) * .5,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(32, 0, 14, 14),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                "assets/jpg/furniture_4.jpg",
                                height: 191,
                                width: (size.width - 78) * .5,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 14, 14),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                "assets/jpg/furniture_3.jpg",
                                height: 217,
                                width: (size.width - 78) * .5,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 14, 14),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                "assets/jpg/furniture_2.jpg",
                                height: 117,
                                width: (size.width - 78) * .5,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )));
  }
}

Widget avatarStory(String pictureName, String name) {
  return Padding(
    padding: const EdgeInsets.only(right: 20.2),
    child: Column(children: [
      CircleAvatar(
        backgroundImage: AssetImage(pictureName),
      ),
      const SizedBox(
        height: 16,
      ),
      Text(
        name,
        style: const TextStyle(
            fontFamily: "Sen", fontSize: 10, color: Color(0xFF9F9797)),
      )
    ]),
  );
}

Widget sectionTitle(String title, {double paddingTop = 0}) {
  return Padding(
    padding: EdgeInsets.fromLTRB(32, paddingTop, 32, 30),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        title,
        style: const TextStyle(
            fontFamily: "Sen", fontSize: 24, fontWeight: FontWeight.bold),
      ),
      SvgPicture.asset("assets/svg/forward_arrow.svg")
    ]),
  );
}
