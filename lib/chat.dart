import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:offshoot/data/stories_json.dart';
import 'package:offshoot/portfolio_entry.dart';



class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  List<String> profilePics = ["10m.jpg","07w.jpg","06w.jpg","08m.jpg","09w.jpg",];
  List<String> names = ["Clint Bordeaux","Gwen Veltelini","Marla Riesling","Peter Noir","Christina Chardonnay",];
  List<String> messages = ["Wow! Impressive portfolio! Would you like to collaborate on this app I’m making","Love the design, but please remove all instances of the Calibri font. It’s not great","Yes, I can commit to completing this in 3 weeks. The rest of the details are","A little adjustment; can you please make sure to use Helvetica Neue instead","No! It should never have been the default font on Microsoft Word.",];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: NeumorphicAppBar(
        title: Text('Chat', style: TextStyle(fontFamily: "Benzin", fontWeight: FontWeight.w700),),




      ),

      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16),
            child: Container(
              padding: EdgeInsets.only(top: 4, bottom: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),

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
            ),


          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 16, right: 16, top : 8),
              child: ListView.builder(

                itemBuilder: (context, index){
                  return Container(
                    margin: EdgeInsets.all(8),
                    child: NeumorphicButton(
                      onPressed: (){},
                      child: ListTile(
                        contentPadding: EdgeInsets.only(bottom: 10, right: 8),
                        leading: Stack(
                          children: <Widget>[
                            Container(
                              height: 60,
                              width: 60,

                              decoration: BoxDecoration(
                                border: Border.all(width: 1),
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                color: Colors.grey,
                              ),

                              child: ClipOval(
                                child:
                                Image.asset("assets/images/${profilePics[index]}", fit: BoxFit.cover,),
                              ),
                            ),

                            Positioned(
                              child: Container(
                                height: (index %2 == 0) ? 18 : 0,
                                width: 18,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(9)),
                                    color: Colors.green,
                                    border: Border.all(color: Colors.black, width: 3)
                                ),
                              ),
                              bottom: 0,
                              right: 0,
                            )
                          ],
                        ),
                        title: Padding(
                          padding: EdgeInsets.only(bottom: 6),
                          child: Text(names[index], style: TextStyle(

                              fontWeight: FontWeight.w500,

                          ),),
                        ),

                        subtitle: Text(messages[index], style: TextStyle(fontWeight: FontWeight.w400,
                            )
                        ),

                        trailing: Icon(Icons.check_circle,size: 20, color: (index%2 == 0) ? Color.fromRGBO(101, 107, 115, 1) : Colors.transparent,),
                      ),
                    ),
                  );
                },
                itemCount: 5,
              ),
            ),
          ),
        ],
      ),

    );
  }
}
