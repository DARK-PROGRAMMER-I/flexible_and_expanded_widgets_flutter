

import 'package:flexible_expanded_widgets/widgets/labeled_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlexScreen extends StatelessWidget {
  const FlexScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Flexible and Expanded Widgets", style: TextStyle(color: Color(
            0xffb6c499)),),
        backgroundColor: Color(0xff081c15),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ..._header(context, "Expanded"), // this is header for the expanded widget
          _buildExpanded(context),
          ..._header(context, "Flexible"),
          _buildFlexible(context),
          
          Expanded(child:Container(),),
          _button(context)
        ],
      )
    ));
  }

  Iterable<Widget> _header(BuildContext context, String title){
    return [
      SizedBox(height: 20,),
      Text(title, style: Theme.of(context).textTheme.headline4, )
    ];
  }
  Widget _buildExpanded(BuildContext context){
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          LabeledContainer(
              width: 100,
              text: '100',
              color: Color(0xffa01a58),
          ),
          Expanded(

            child: LabeledContainer(
              text: 'The Remaining',
              color: Color(0xff455e89),
            ),

          ),

          LabeledContainer(
            width: 40,
            text: "40",
            color: Color(0xff723c70),
          )
        ],
      ),
    );
  }
  Widget _buildFlexible(BuildContext context){
    return SizedBox(
      height: 100,
      child: Row(
        children: <Widget>[
          Flexible(
            flex: 3,
            child: LabeledContainer(
              text: '25%', color: Color(0xff013a63),
            )
          ),
          Flexible(
            flex: 4,
            child: LabeledContainer(
              text: '25%', color:  Color(0xffa9d6e5),)
          ),
          Flexible(
            flex: 2,
            child: LabeledContainer(text: '50%', color: Color(0xff0091ad),)
          )
        ],
      ),
    );
  }
  Widget _button(BuildContext context){
    return Center(
      child: Container(

        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
          child:ElevatedButton(
            onPressed: (){},
            child: Text("Pinned to the bottom", style: TextStyle(color: Colors.black),),

            style: ElevatedButton.styleFrom(
              primary: Colors.yellow,
              elevation: 2,


            ),
          ),
        )
      ),
    );
  }
}
