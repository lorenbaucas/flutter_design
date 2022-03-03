import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'animation.dart';
import 'model.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final List categories = [
    'One Piece',
    'Naruto',
    'Shingeki no Kyojin',
    'Dragon Ball',
    'Pokemon',
    'Mahoutsukai no Yome',
  ];
  final List featured = [
    'Nuevos',
    'Populares',
    'Próximos',
  ];
  int categoriescurrentIndex = 0;
  int featuredcurrentIndex = 1;
  int newcurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        topCategoriesWidget(width, height),
        SizedBox(
          height: 10,
        ),
        middleCategoriesWidget(width, height),
        SizedBox(
          height: 5,
        ),
        proximosText(),
        lastCategoriesWidget(width, height),
      ],
    );
  }

// Top Categories Widget Components
  topCategoriesWidget(width, height) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          width: width,
          height: height / 18,
          child: ListView.builder(
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      categoriescurrentIndex = index;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      categories[index],
                      style: TextStyle(
                          fontSize: categoriescurrentIndex == index ? 21 : 18,
                          color: categoriescurrentIndex == index
                              ? Color(0xff171717)
                              : Color(0xffc9c9c9),
                          fontWeight: categoriescurrentIndex == index
                              ? FontWeight.bold
                              : FontWeight.w400),
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }

// Middle Categories Widget Components
  middleCategoriesWidget(width, height) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          width: width / 16,
          height: height / 2.7,
          child: RotatedBox(
            quarterTurns: -1,
            child: ListView.builder(
                itemCount: featured.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        featuredcurrentIndex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        featured[index],
                        style: TextStyle(
                            fontSize: featuredcurrentIndex == index ? 19 : 17,
                            color: featuredcurrentIndex == index
                                ? Color(0xff171717)
                                : Color(0xffc9c9c9),
                            fontWeight: featuredcurrentIndex == index
                                ? FontWeight.bold
                                : FontWeight.w400),
                      ),
                    ),
                  );
                }),
          ),
        ),
        Container(
          width: width / 1.2,
          height: height / 2.4,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: animeModel.length,
            itemBuilder: (ctx, index) {
              Models model = animeModel[index];
              return GestureDetector(
                child: Container(
                  margin: EdgeInsets.all(15),
                  width: width / 1.6,
                  child: Stack(
                    children: [
                      Container(
                        width: width / 1.81,
                        decoration: BoxDecoration(
                          color: model.modelColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        child: FadeAnimation(
                          delay: 1,
                          child: Row(
                            children: [
                              Text(
                                model.name,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                width: 200,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite_border,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 45,
                        left: 10,
                        child: FadeAnimation(
                          delay: 1.5,
                          child: Text(
                            model.season,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 80,
                        left: 10,
                        child: FadeAnimation(
                          delay: 2,
                          child: Text(
                            "Episodio " + model.episode.toStringAsFixed(0),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 5,
                        top: 105,
                        child: FadeAnimation(
                          delay: 2,
                          child: Hero(
                            tag: model.imgAddress,
                            child: Container(
                              width: 210,
                              height: 200,
                              child: Image(
                                image: AssetImage(model.imgAddress),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 240,
                        left: 170,
                        child: IconButton(
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.arrowCircleRight,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }

  proximosText() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Text(
            "Próximos episodios",
            style: TextStyle(
                fontSize: 22,
                color: Color(0xff171717),
                fontWeight: FontWeight.bold),
          ),
          Expanded(child: Container()),
          IconButton(
              onPressed: () {},
              icon: FaIcon(
                FontAwesomeIcons.longArrowAltRight,
                size: 27,
              ))
        ],
      ),
    );
  }

// Last Categories Widget Components
  lastCategoriesWidget(width, height) {
    return Container(
      width: width,
      height: height / 4,
      child: ListView.builder(
          itemCount: animeModel.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            Models model = animeModel[index];
            return GestureDetector(
              child: Container(
                margin: EdgeInsets.all(10),
                width: width / 2.24,
                height: height / 4.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 5,
                      child: FadeAnimation(
                        delay: 1,
                        child: Container(
                          width: width / 13,
                          height: height / 10,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 140,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border,
                          color: Color(0xff171717),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 26,
                      left: 25,
                      child: FadeAnimation(
                        delay: 1.5,
                        child: Container(
                          width: width / 3,
                          height: height / 9,
                          child: Image(
                            image: AssetImage(model.imgAddress),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 124,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "${model.name}",
                              style: TextStyle(
                                color: Color(0xff171717),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 145,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2.2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              model.episode.toStringAsFixed(0),
                              style: TextStyle(
                                color: Color(0xff171717),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
