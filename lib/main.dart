import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:concentric_transition/concentric_transition.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_tags/flutter_tags.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:offshoot/home.dart';
import 'package:offshoot/navigation_controller.dart';

void main() {
  runApp(OFFSHOOT());
}

class OFFSHOOT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      debugShowCheckedModeBanner: false,
      theme: NeumorphicThemeData(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {


    final List<PageData> pages = [
      PageData(
        icon: Image.asset('assets/images/off_white.png'),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              'An exclusive entrepreneurial network for UCL students.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontFamily: "Benzin",
                  fontWeight: FontWeight.w600),
            ),
            AutoSizeText(
              'Tap the circle or swipe to continue.',
              textAlign: TextAlign.center,
              maxLines: 2,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
        textColor: Colors.white,
        bgColor: Color.fromRGBO(70, 98, 94, 1),
      ),
      PageData(
          icon: Icon(
            CupertinoIcons.person_2_square_stack,
            size: 130,
            color: Colors.white,
          ),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Discover talented students',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontFamily: "Benzin",
                    fontWeight: FontWeight.w600),
              ),
              AutoSizeText(
                'Browse the portfolios of excellent UCL students with skills across multiple disciplines.',
                textAlign: TextAlign.center,
                maxLines: 2,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          bgColor: Color.fromRGBO(203, 156, 140, 1),
          textColor: Colors.white),
      PageData(
          icon: Icon(
            CupertinoIcons.square_stack_3d_down_right_fill,
            size: 130,
            color: Colors.white,
          ),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Expand your portfolio',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontFamily: "Benzin",
                    fontWeight: FontWeight.w600),
              ),
              AutoSizeText(
                'Showcase your spirit. Attract people for future projects. Get paid.',
                textAlign: TextAlign.center,
                maxLines: 2,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          bgColor: Color.fromRGBO(242, 210, 189, 1),
          textColor: Colors.white),
      PageData(
          icon: Icon(
            CupertinoIcons.chat_bubble_text_fill,
            size: 130,
            color: Colors.white,
          ),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Interact with faculty',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontFamily: "Benzin",
                    fontWeight: FontWeight.w600),
              ),
              AutoSizeText(
                'Take advantage of the talented career help offered by UCL through the platform.',
                textAlign: TextAlign.center,
                maxLines: 2,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          bgColor: Color.fromRGBO(70, 98, 94, 1),
          textColor: Colors.white),
      PageData(
          icon: Icon(
            CupertinoIcons.signature,
            size: 130,
            color: Colors.white,
          ),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                'Jump in',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: "Benzin",
                    fontWeight: FontWeight.w600),
              ),
              AutoSizeText(
                'Please note that OFFSHOOT is only available for UCL students and faculty at the moment.',
                textAlign: TextAlign.center,
                maxLines: 2,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              Column(
                children: [
                  SizedBox(height: 5,),
                  Neumorphic(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: CupertinoTextField(
                        obscureText: false,
                        placeholder: 'Email',
                      ),
                    ),
                  ),
                  SizedBox(height: 8,),
                  Neumorphic(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: CupertinoTextField(
                        obscureText: true,
                        placeholder: 'Password',

                      ),
                    ),
                  ),
                ],
              ),


            ],
          ),
          bgColor: Colors.blueGrey.shade900,
          textColor: Colors.white),
      PageData(
          icon: Icon(
            CupertinoIcons.profile_circled,
            size: 130,
            color: Colors.white,
          ),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                'Tell us about yourself',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: "Benzin",
                    fontWeight: FontWeight.w600),
              ),
              AutoSizeText(
                "We need a few details about you and your interests. It'll only take a minute.",
                textAlign: TextAlign.center,
                maxLines: 2,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5,),
                  Text('Full name', style: TextStyle(color: Colors.white),),
                  SizedBox(height: 2,),
                  Neumorphic(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: CupertinoTextField(
                        obscureText: false,

                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text('Username', style: TextStyle(color: Colors.white),),
                  SizedBox(height: 2,),
                  Neumorphic(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: CupertinoTextField(
                        obscureText: false,

                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text('Department', style: TextStyle(color: Colors.white),),
                  SizedBox(height: 2,),
                  Neumorphic(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: CupertinoTextField(
                        obscureText: false,

                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          bgColor: Colors.blueGrey,
          textColor: Colors.white),
      PageData(
          icon: Icon(
            CupertinoIcons.rocket,
            color: NeumorphicTheme.defaultTextColor(context),
            size: 130,
          ),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                'One more thing',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              AutoSizeText(
                "Are you a student or a faculty member?",
                textAlign: TextAlign.center,
                maxLines: 2,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NeumorphicToggle(
                    selectedIndex: _selectedIndex,
                    height: 50,
                    thumb: Neumorphic(
                      style: NeumorphicStyle(
                        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12))
                      )
                    ),
                    onChanged: (value) {
                      setState(() {
                        _selectedIndex = value;
                        print("_firstSelected: $_selectedIndex");
                      });
                    },
                    children: [
                      ToggleElement(
                        background: Center(child: Text("Student", style: TextStyle(fontWeight: FontWeight.w500),)),
                        foreground: Center(child: Text("Student", style: TextStyle(fontWeight: FontWeight.w700),)),
                      ),
                      ToggleElement(
                        background: Center(child: Text("Faculty member", style: TextStyle(fontWeight: FontWeight.w500),)),
                        foreground: Center(child: Text("Faculty member", style: TextStyle(fontWeight: FontWeight.w700),)),
                      ),
                    ],
                  )
                ],
              ),


            ],
          ),
          bgColor: NeumorphicTheme.currentTheme(context).baseColor,
          textColor: NeumorphicTheme.defaultTextColor(context)),
      PageData(
          icon: Icon(
            CupertinoIcons.star,
            size: 50,
            color: Colors.white,
          ),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Select your tribes',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: "Benzin",
                    fontWeight: FontWeight.w600),
              ),
              AutoSizeText(
                "Tribes are broad areas of interest that will show up next to your profile.",
                textAlign: TextAlign.center,
                maxLines: 2,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),

              Expanded(child: TagsBox()),

            ],
          ),
          bgColor: Colors.redAccent.shade700,
          textColor: Colors.white),
      PageData(
          icon: Icon(
            CupertinoIcons.star_fill,
            size: 50,
            color: Colors.white,
          ),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'You are ready!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: "Benzin",
                    fontWeight: FontWeight.w600),
              ),
              AutoSizeText(
                'By going forward, you accept our terms and conditions and privacy policy. More information can be found at our website.',
                textAlign: TextAlign.center,
                maxLines: 5,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              NeumorphicButton(
                onPressed: (){
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) {
                    return NavigationController();
                  }));

                },
                style: NeumorphicStyle(color: Colors.redAccent.shade700),
                child: Text('Jump in', style: TextStyle(fontSize: 20, color: Colors.white, fontFamily: 'Benzin', fontWeight: FontWeight.w700),),
              )


            ],
          ),
          bgColor: Colors.redAccent.shade700,
          textColor: Colors.white),

    ];

    return Scaffold(
      body: ConcentricPageView(
        colors: pages.map((p) => p.bgColor).toList(),
        opacityFactor: 1.0,
        pageController: PageController(initialPage: 0),
        scaleFactor: 0.1,
        radius: 60,
        curve: Curves.ease,
        duration: Duration(seconds: 2),
        verticalPosition: 0.7,
        direction: Axis.horizontal,
        itemCount: pages.length,

        itemBuilder: (index, value) {
          _currentIndex = index;

          PageData page = pages[index % pages.length];

          return Container(
            child: Theme(
              data: ThemeData(
                textTheme: TextTheme(
                  title: TextStyle(
                    color: page.textColor,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.0,
                    fontSize: 36,
                  ),
                  subtitle: TextStyle(
                    color: page.textColor,
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                  ),
                ),
              ),
              child: PageCard(page: page),
            ),
          );
        },
      ),
    );
  }
}

class PageData {
  final Widget title;
  final Widget icon;
  final Color bgColor;
  final Color textColor;

  PageData({
    this.title,
    this.icon,
    this.bgColor = Colors.white,
    this.textColor = Colors.black,
  });
}

class PageCard extends StatelessWidget {
  final PageData page;

  const PageCard({
    Key key,
    @required this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: Column(
//        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(flex: 9, child: _buildPicture(context)),
          Expanded(flex: 12, child: page.title),
          Expanded(
            flex: 10,
            child: Container(),
          )
        ],
      ),
    );
  }

  Widget _buildPicture(
    BuildContext context, {
    double size = 190,
    double iconSize = 170,
  }) {
    return Container(
      child: Container(
          alignment: Alignment.bottomCenter, width: size, child: page.icon),
    );
  }
}

class TagsBox extends StatefulWidget {
  @override
  _TagsBoxState createState() => _TagsBoxState();
}

class _TagsBoxState extends State<TagsBox> {
  List _items = [Item(title: 'Technology', active: false),
    Item(title: 'UI/UX design', active: false),
    Item(title: 'Visual arts', active: false),
    Item(title: 'Music creation', active: false),
    Item(title: 'Business Analytics', active: false),
    Item(title: 'Accounting', active: false),
    Item(title: 'Psychology', active: false),
    Item(title: 'Marketing', active: false),
    Item(title: 'Computer science', active: false),
    Item(title: 'Medical', active: false),
    Item(title: 'Education', active: false),
    Item(title: 'Video games', active: false),
    Item(title: 'Geography', active: false),
    Item(title: 'Journalism', active: false),
    Item(title: 'Languages', active: false),
    Item(title: 'Fashion', active: false),];
  double _fontSize = 12;

  @override
  Widget build(BuildContext context) {
    return Tags(
      key:_tagStateKey,

      itemCount: _items.length, // required
      itemBuilder: (int index){
        final item = _items[index];

        return ItemTags(
          // Each ItemTags must contain a Key. Keys allow Flutter to
          // uniquely identify widgets.
          key: Key(index.toString()),
          index: index, // required
          title: item.title,
          active: item.active,
          customData: item.customData,
          textStyle: TextStyle( fontSize: _fontSize, ),
          combine: ItemTagsCombine.withTextBefore,
 // OR null,

          onPressed: (item) => print(item),
          onLongPressed: (item) => print(item),
        );

      },
    );
  }

  final GlobalKey<TagsState> _tagStateKey = GlobalKey<TagsState>();
// Allows you to get a list of all the ItemTags
  _getAllItem(){
    List<Item> lst = _tagStateKey.currentState?.getAllItem;
    if(lst!=null)
      lst.where((a) => a.active==true).forEach( ( a) => print(a.title));
  }
  }

