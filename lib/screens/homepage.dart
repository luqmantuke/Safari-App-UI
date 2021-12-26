import 'package:flutter/material.dart';
import 'package:safariappui/utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:auto_size_text/auto_size_text.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    final size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: white.withOpacity(0.2),
        selectedItemColor: green,
        unselectedItemColor: white.withOpacity(0.6),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_add),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.userAlt),
            label: 'Saved',
          ),
        ],
      ),
      backgroundColor: backColor,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 15, right: 2, top: 15),
                  width: 290,
                  height: 55,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Search places",
                      hintStyle: GoogleFonts.ubuntu(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: whiteopacity),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(65),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                ClipOval(
                  child: Image.asset(
                    user,
                    width: 42,
                    height: 42,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 3,
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 2, top: 15),
              child: Text(
                "Hi, Keneth!",
                style: GoogleFonts.ubuntu(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: grey6,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15, right: 2, top: 15),
              child: RichText(
                text: TextSpan(
                  text: ' ',
                  children: [
                    TextSpan(
                        text: 'Welcome to ',
                        style: GoogleFonts.ubuntu(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: whiteopacity)),
                    TextSpan(
                        text: ' Safari tour',
                        style: GoogleFonts.ubuntu(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: grey6)),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  tourMethod(size, magoroto, "Magoroto", "Forest"),
                  tourMethod(size, tavavil, "Tavavil", "Village"),
                  tourMethod(size, magoroto, "Magoroto", "Forest"),
                  tourMethod(size, tavavil, "Tavavil", "Village"),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Category",
                    style: GoogleFonts.ubuntu(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: grey6,
                    ),
                  ),
                  Text(
                    "See All",
                    style: GoogleFonts.ubuntu(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: grey5,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 45,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 81,
                    height: 32,
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(66.0),
                      color: green,
                    ),
                    child: Container(
                      padding:
                          const EdgeInsets.only(left: 15, top: 5, right: 10),
                      child: Text(
                        "Related",
                        style: GoogleFonts.ubuntu(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 81,
                    height: 32,
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(66.0),
                      color: white.withOpacity(0.1),
                    ),
                    child: Container(
                      padding:
                          const EdgeInsets.only(left: 15, top: 5, right: 10),
                      child: Text(
                        "Zoo",
                        style: GoogleFonts.ubuntu(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 81,
                    height: 32,
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(66.0),
                      color: white.withOpacity(0.1),
                    ),
                    child: Container(
                      padding:
                          const EdgeInsets.only(left: 15, top: 5, right: 10),
                      child: Text(
                        "Villages",
                        style: GoogleFonts.ubuntu(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 81,
                    height: 32,
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(66.0),
                      color: white.withOpacity(0.1),
                    ),
                    child: Container(
                      padding:
                          const EdgeInsets.only(left: 15, top: 5, right: 10),
                      child: Text(
                        "Parks",
                        style: GoogleFonts.ubuntu(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 25, right: 20, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular",
                    style: GoogleFonts.ubuntu(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: grey6,
                    ),
                  ),
                  Text(
                    "See All",
                    style: GoogleFonts.ubuntu(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: grey5,
                    ),
                  ),
                ],
              ),
            ),
            Stack(children: [
              Container(
                  margin: const EdgeInsets.only(left: 25, right: 20, top: 15),
                  width: 364,
                  height: 202,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: white.withOpacity(0.1),
                  ),
                  child: Image.asset(panda, fit: BoxFit.fill)),
              Positioned(
                top: 190,
                left: 230,
                child: Text(
                  "Dar es Salaam Zoo",
                  style: GoogleFonts.ubuntu(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: white,
                    backgroundColor: green,
                  ),
                ),
              ),
            ]),
            Stack(children: [
              Container(
                  margin: const EdgeInsets.only(left: 25, right: 20, top: 15),
                  width: 364,
                  height: 202,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: white.withOpacity(0.1),
                  ),
                  child: Image.asset(mountain, fit: BoxFit.fill)),
              Positioned(
                top: 190,
                left: 230,
                child: Text(
                  "Mount Kilimanjaro",
                  style: GoogleFonts.ubuntu(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: white,
                    backgroundColor: green,
                  ),
                ),
              ),
            ]),
            Stack(children: [
              Container(
                  margin: const EdgeInsets.only(left: 25, right: 20, top: 15),
                  width: 364,
                  height: 202,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: white.withOpacity(0.1),
                  ),
                  child: Image.asset(
                    zanzibar,
                    fit: BoxFit.fill,
                  )),
              Positioned(
                top: 190,
                left: 230,
                child: Text(
                  "Zanzibar Beaches",
                  style: GoogleFonts.ubuntu(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: white,
                    backgroundColor: green,
                  ),
                ),
              ),
            ]),
          ],
        )),
      ),
    );
  }

  Container tourMethod(Size size, String image, String name, String type) {
    return Container(
      width: 173,
      height: 181,
      decoration: BoxDecoration(
        color: green,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.only(left: 15, right: 2, top: 15),
      child: Stack(
        children: [
          SizedBox(
            height: size.height / 6,
            width: size.width,
            child: Image.asset(
              image,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 135,
            left: 10,
            child: Text(
              name,
              style: GoogleFonts.ubuntu(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: white,
              ),
            ),
          ),
          Positioned(
            top: 155,
            left: 10,
            child: Text(
              type,
              style: GoogleFonts.ubuntu(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: white.withOpacity(0.6),
              ),
            ),
          ),
          Positioned(
            top: 120,
            left: 130,
            child: SizedBox(
              width: 34,
              height: 34,
              child: Icon(
                FontAwesomeIcons.heart,
                color: white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
