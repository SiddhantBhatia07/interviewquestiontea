import 'package:flutter/material.dart';

class TeaFlavour extends StatefulWidget{
  String value;
  TeaFlavour({Key key,@required this.value}):super(key : key);
  @override
  TeaFlavourChange createState() => TeaFlavourChange(value);
}

class TeaFlavourChange extends State<TeaFlavour>
{
  String value;
  TeaFlavourChange(this.value);
  @override
  Widget build(BuildContext context) {
    if(value == 'Prepare tea with salt'){
      value = 'Salty tea';
    }
    else if(value == 'Prepare tea with sugar')
    {
      value = 'Sweet Tea';
    }
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
          backgroundColor:Colors.white,
          elevation: 0.0,
          iconTheme: new IconThemeData(color: Colors.black)),
      body: Container(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding( padding: EdgeInsets.only(bottom: 20),
                   child: new Image.asset('images/teapicc.jpg'),)
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(value,
                    style: TextStyle(fontWeight: FontWeight.bold))

              ],
            )
          ],
        ),
      ),
    );
  }
}