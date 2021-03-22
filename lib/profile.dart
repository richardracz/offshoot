import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:offshoot/data/stories_json.dart';
import 'package:offshoot/portfolio_entry.dart';
import 'package:offshoot/widgets/neu_button.dart';
List titles = [
  "Branding for startup company",
  "Logo design for HEALTHJUICE",
  "Photography with coloured powder"
];
List descriptions = [
  "BEKU needed a fresh image, so I...",
  "Soft drinks are out, juices are in..,",
  "Intense expressive shots created for..."
];

List imageAssets = [
  'assets/images/beku.png',
  'assets/images/juice.png',
  'assets/images/red.png'
];

class Profile extends StatefulWidget {
  const Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();

}

class _ProfileState extends State<Profile> {

  bool radioState = true;

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    return CupertinoPageScaffold(
        backgroundColor: NeumorphicTheme.currentTheme(context).baseColor,
        child: SafeArea(
          top: false,
          bottom: false,
          child: Center(
            child: CustomScrollView(
//                controller: _hideButtonController,
              slivers: <Widget>[
                SliverAppBar(
                  actions: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 8, 8),
                      child: IconButton(
                        icon: Icon(
                          Icons.edit,
                          size: 30,
                          color: NeumorphicTheme.currentTheme(context)
                              .defaultTextColor,
                        ),
                        onPressed: () {
                        },
                      ),
                    ),
                  ],
                  brightness: Theme.of(context).brightness,
                  backgroundColor: NeumorphicTheme.baseColor(context),

                  centerTitle: true,
                  expandedHeight: 230,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                    title: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: AutoSizeText('@anna_o',
                          maxLines: 1,
                          minFontSize: 13,
                          style: TextStyle(
                              fontFamily: 'Benzin',
                              fontSize: 26,
                              color: NeumorphicTheme.defaultTextColor(
                                  context))),
                    ),
                    centerTitle: true,
                    background: Padding(
                      padding: const EdgeInsets.all(70.0),
                      child: Container(
                        margin: EdgeInsets.all(15),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white,width: 2),
                          image: DecorationImage(image: AssetImage('assets/images/35w.jpg'),fit: BoxFit.contain),
                        ),
                      ),
                    ),
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate([
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Neumorphic(
                            style: NeumorphicStyle(
                              depth: -4
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(24.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,

                                children: [
                                  NeumorphicSwitch(
                                    value: radioState,
                                    onChanged: (value) {
                                      setState(() {
                                        radioState = value;

                                      });
                                    },
                                  ),
                                  SizedBox(width: 10,),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        AutoSizeText('Seeking opportunites', minFontSize: 16, style: TextStyle( fontWeight: FontWeight.w700),),
                                        AutoSizeText('With this turned on, other users can browse your offerings.',style: TextStyle()),

                                      ],
                                    ),
                                  )

                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 16,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text("Your offerings", style: new TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
                              Text("Edit")
                            ],
                          ),
                          Container(
                            height: 125,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                Offerings(description: 'Logo design', duration: '1 week', price: '£35.00',),
                                Offerings(description: 'eCommerce website', duration: '3 weeks', price: '£65.00',),
                                Offerings(description: 'Total brand package', duration: '2 weeks', price: '40.00',),
                                Offerings(description: 'IAP integration', duration: '5 weeks', price: '£80.00',),
                                Offerings(description: 'Code support', duration: '2 days', price: '20.00',),

                                // makeStory(storyimage: 'assets/images/user4.jpg',userImage: 'assets/images/user4.jpg',userName: 'Veronica Off'),
                                // makeStory(storyimage: 'assets/images/user2.jpg',userImage: 'assets/images/user2.jpg',userName: 'Victor Shoot'),
                                // makeStory(storyimage: 'assets/images/user2.jpeg',userImage: 'assets/images/user1.jpg',userName: 'Joan Maelstrom'),
                                // makeStory(storyimage: 'assets/images/user3.jpg',userImage: 'assets/images/user3.jpg',userName: 'Bo Palos'),
                              ],
                            ),
                          ),
                          SizedBox(height: 16,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text("Portfolio", style: new TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
                              Text("Add")
                            ],
                          ),
                        ],
                      ),
                    ]),
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.all(16.0),
                  sliver: SliverGrid(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 300.0,
                        mainAxisSpacing: 0.0,
                        crossAxisSpacing: 10.0,
                        childAspectRatio: 0.9),
                    delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                          return new PortfolioEntry(
                            titles: titles[index],
                            description: descriptions[index],
                            asset: imageAssets[index],
                          );
                        }, childCount: titles.length),
                  ),
                )

              ],
            ),
          ),
        ),
      );

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
          aspectRatio: 5/3,
          child: Neumorphic(
            margin: EdgeInsets.only(right: 10,),
            style: NeumorphicStyle(
              color: Colors.grey.shade800,
              // borderRadius: BorderRadius.circular(15),
            ),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(.5),
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
                      color: Colors.grey,

                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15,  top: 21),
                    height: 50,
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


}



