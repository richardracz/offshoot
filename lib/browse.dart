import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_tags/flutter_tags.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:offshoot/data/stories_json.dart';


class Browse extends StatefulWidget {
  Browse({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _BrowseState createState() => _BrowseState();
}

class _BrowseState extends State<Browse> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 120,
            padding: EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 10),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Neumorphic(
                    style: NeumorphicStyle(
                      depth: -8
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search, color: Colors.grey,),
                          hintText: 'Search',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: EdgeInsets.all(23),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Search by tribes", style: new TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
                    SizedBox(
                      height: 16,
                    ),
                    TagsBox(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }


}class TagsBox extends StatefulWidget {
  @override
  _TagsBoxState createState() => _TagsBoxState();
}

class _TagsBoxState extends State<TagsBox> {
  List _items = [Item(title: 'Technology', active: false),
    Item(title: 'UI/UX design', active: false),
    Item(title: 'Visual arts', active: false),
    Item(title: 'Music creation', active: false),
    Item(title: 'Copyrighting', active: false),
    Item(title: 'Business Analytics', active: false),
    Item(title: 'Accounting', active: false),
    Item(title: 'Biology', active: false),
    Item(title: 'Psychology', active: false),
    Item(title: 'Literature', active: false),
    Item(title: 'Marketing', active: false),
    Item(title: 'Fashion', active: false),
    Item(title: 'Engineering', active: false),
    Item(title: 'Agriculture', active: false),
    Item(title: 'Architecture', active: false),
    Item(title: 'Management', active: false),
    Item(title: 'Chemistry', active: false),
    Item(title: 'Civil engineering', active: false),
    Item(title: 'Computer science', active: false),
    Item(title: 'Medical', active: false),
    Item(title: 'Education', active: false),
    Item(title: 'Video games', active: false),
    Item(title: 'Geography', active: false),
    Item(title: 'Journalism', active: false),
    Item(title: 'Languages', active: false),
    Item(title: 'Law', active: false),
    Item(title: 'Civil engineering', active: false),
    Item(title: 'Math', active: false),
    Item(title: 'Media', active: false),
    Item(title: 'Philosophy', active: false),
    Item(title: 'Psychology', active: false),

  ];
  double _fontSize = 14;

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
          pressEnabled: false,
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