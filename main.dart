import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
          body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 45,
            color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Image.asset("assets/images/logo.png"),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.add_circle,
                        color: Colors.black87,
                        size: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.black87,
                        size: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8, left: 8, bottom: 8, right: 20),
                      child: Icon(
                        Icons.send,
                        color: Colors.black87,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          StoryWidget(
                              "assets/images/p1.jfif", "keyvan_arasteh"),
                          StoryWidget("assets/images/p2.jfif", "ramazan_sen"),
                          StoryWidget(
                              "assets/images/p3.jfif", "ahmetselimöver"),
                          StoryWidget("assets/images/p4.jfif", "jhonny_deep"),
                          StoryWidget("assets/images/p5.jpg", "alpacino"),
                          StoryWidget("assets/images/p6.jpg", "dicaprio"),
                          StoryWidget(
                              "assets/images/p1.jfif", "keyvan_arasteh"),
                          StoryWidget("assets/images/p2.jfif", "ramazan_sen"),
                          StoryWidget(
                              "assets/images/p3.jfif", "ahmetselimöver"),
                          StoryWidget("assets/images/p4.jfif", "jhonny_deep"),
                          StoryWidget("assets/images/p5.jpg", "alpacino"),
                          StoryWidget("assets/images/p6.jpg", "dicaprio"),
                        ],
                      ),
                    ),
                    Postitem("assets/images/p1.jfif", "assets/images/post1.jpg",
                        "keyvan_arasteh", "İstabul/Kadıköy"),
                    Postitem("assets/images/p2.jfif", "assets/images/post2.jpg",
                        "ramazan_sen", "15 Temmuz Şehitler Köprüsü"),
                    Postitem("assets/images/p1.jfif", "assets/images/post4.jpg",
                        "ahmetselimöver", "İstabulda bir yer"),
                    Postitem("assets/images/p1.jfif", "assets/images/post5.jpg",
                        "jhonny_deep", "İstabulda bir yer"),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
                border: Border.all(
              color: Colors.black12,
            )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(
                    Icons.home,
                    size: 28,
                    color: Colors.black87,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(
                    Icons.search,
                    size: 28,
                    color: Colors.black87,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(
                    Icons.smart_display,
                    size: 28,
                    color: Colors.black87,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(
                    Icons.favorite,
                    size: 28,
                    color: Colors.black87,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(
                    Icons.person,
                    size: 28,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }

  Container Postitem(
      String avatar, String photo, String name, String location) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(avatar),
                        radius: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            location,
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.more_horiz)
                ],
              ),
            ),
            Image.asset(photo),
            LikeCommentBox(),
            CommentBox("keyvan_arasteh",
                "Çok iyi olmuş değerli hocam eline sağlık. Miss . Beni de etiketle.."),
            CommentBox("ramazan_sen", "hocam yine yapmışınız bişiler"),
          ],
        ),
      ),
    );
  }

  Padding LikeCommentBox() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.favorite_border, color: Colors.black87),
              SizedBox(
                width: 8,
              ),
              Icon(Icons.comment_bank, color: Colors.black87),
            ],
          ),
          Icon(Icons.flag_circle_outlined, color: Colors.black87),
        ],
      ),
    );
  }

  Padding CommentBox(String name, String comment) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: RichText(
              maxLines: 3,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 12,
                    ),
                  ),
                  TextSpan(text: " "),
                  TextSpan(
                    text: comment,
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget StoryWidget(String avatar, String name) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: Colors.green,
              gradient: LinearGradient(colors: [
                const Color.fromRGBO(214, 71, 103, 1),
                const Color.fromRGBO(241, 166, 117, 1),
              ]),
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(avatar),
                radius: 35,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 11),
          ),
        ],
      ),
    );
  }
}
