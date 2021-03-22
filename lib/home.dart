import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:offshoot/data/stories_json.dart';
import 'package:offshoot/widgets/neu_button.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: NeumorphicAppBar(
        title: Text('OFFSHOOT', style: TextStyle(fontFamily: "Benzin", fontWeight: FontWeight.w700),),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text("Featured creators", style: new TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
                      Text("See All")
                    ],
                  ),
                  SizedBox(width: 30,),
                  Container(
                    height: 220,
                    padding: EdgeInsets.only(top: 20),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeStory(storyimage: 'assets/images/v.png',userImage: 'assets/images/user4.jpg',userName: 'Veronica Off'),
                        makeStory(storyimage: 'assets/images/user2.jpg',userImage: 'assets/images/user2.jpg',userName: 'Victor Shoot'),
                        makeStory(storyimage: 'assets/images/jo.png',userImage: 'assets/images/user1.jpg',userName: 'Joan Maelstrom'),
                        makeStory(storyimage: 'assets/images/bo.png',userImage: 'assets/images/user3.jpg',userName: 'Bo Palos'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Text("Career advice from UCL", style: new TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 8),
                    height: 120,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeAdvice(storyimage: 'assets/images/cv.png',title: 'Build your CV', description: "Make the most out of your uni years. Get hands on"),
                        makeAdvice(storyimage: 'assets/images/interview.png',title: 'Ace interviews', description: "Make sure your charisma, uniqueness, knowledge, and talent shines through."),
                        makeAdvice(storyimage: 'assets/images/burnout.png',title: 'Burnout', description: "6 deadlines in 5 days? See what you can do to not burn out"),
                        makeAdvice(storyimage: 'assets/images/path.png',title: 'Find your path',description: "How to find out which career path is your match."),

                        // makeStory(storyimage: 'assets/images/user4.jpg',userImage: 'assets/images/user4.jpg',userName: 'Veronica Off'),
                        // makeStory(storyimage: 'assets/images/user2.jpg',userImage: 'assets/images/user2.jpg',userName: 'Victor Shoot'),
                        // makeStory(storyimage: 'assets/images/user2.jpeg',userImage: 'assets/images/user1.jpg',userName: 'Joan Maelstrom'),
                        // makeStory(storyimage: 'assets/images/user3.jpg',userImage: 'assets/images/user3.jpg',userName: 'Bo Palos'),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
              child: Text("Feed", style: new TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),

            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 10, bottom: 10),
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: List.generate(stories_data.length, (index) {
                  return GestureDetector(
                    child: Container(
                      width: (size.width),
                      height: 230,
                      child: Stack(
                        children: [
                          Container(
                            width: (size.width),
                            height: 230,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        (stories_data[index]['img'])),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            width: (size.width),
                            height: 230,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.black.withOpacity(0.25),
                                      Colors.black.withOpacity(0),
                                    ],
                                    end: Alignment.topCenter,
                                    begin: Alignment.bottomCenter)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: Text(
                                          stories_data[index]['name'],
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5, left: 10, bottom: 10),
                                        child: Text(
                                          stories_data[index]['date'],
                                          style: TextStyle(
                                              color: Colors.white.withOpacity(0.7),
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Icon(CupertinoIcons.heart, color: Colors.white, size: 30,),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }



  @override
  void dispose() {
    super.dispose();
    print('dispose called');
//    storeSips();
  }

  @override
  void initState() {
    super.initState();
    print('init called');
//    getSips();



  }




  Widget makeStory({storyimage,userImage,userName}){
    return(
        AspectRatio(
          aspectRatio: 1.4/2,
          child: Container(
            margin: EdgeInsets.only(right: 10,),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(image: AssetImage(storyimage),fit: BoxFit.cover),
            ),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(.9),
                        Colors.black.withOpacity(.1)
                      ]
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Visibility(
                    visible: false,
                    child: Container(
                      margin: EdgeInsets.all(15),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white,width: 2),
                        image: DecorationImage(image: AssetImage(userImage),fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15,  top: 21),
                    height: 40,
                    child: Text(
                      userName, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
  Widget makeAdvice({storyimage,title, description}){
    return(
        AspectRatio(
          aspectRatio: 1.5,
          child: Container(
            margin: EdgeInsets.only(right: 10,),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(image: AssetImage(storyimage),fit: BoxFit.cover),
            ),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(.9),
                        Colors.black.withOpacity(.1)
                      ]
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Visibility(
                    visible: false,
                    child: Container(
                      margin: EdgeInsets.all(15),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white,width: 2),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15,  top: 21),
                    height: 60,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        AutoSizeText(
                          description, maxLines: 2, style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }


}


