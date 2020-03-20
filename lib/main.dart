import 'package:flutter/material.dart';
import 'package:interviewapp/Tea.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tea(),
    );
  }
}
class Tea extends StatefulWidget{

  ChooseTea createState() => new ChooseTea();
}


class ChooseTea extends State<Tea>{
  var text1 = "Prepare tea with salt";
  String value;
  void buttonName(var text2){
    setState(() {
      text1 = text2;
    });
  }
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(


      home: new Scaffold(
        body: Container(
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.end,

                children: <Widget>[
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(padding: const EdgeInsets.only(top: 140, bottom: 300),
                          child:
                          new SizedBox(
                            width: 175.0,
                            height: 60.0,
                            child: new RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(8.0),
                                ),
                                child: new Text(text1),
                                textColor: Colors.white,
                                color:  Colors.red,
                                onPressed: (){ Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => TeaFlavour(value:text1)
                                )
                                );
                                }
                            ),
                          )
                      )
                    ],
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(padding: const EdgeInsets.only(right: 10.0, bottom: 20.0),
                          child:
                          new SizedBox(
                            width: 120,
                            height: 30,
                            child: new RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(8.0),
                              ),
                              child: new Text("Arrogant"),
                              textColor: Colors.white,
                              color:  Colors.blue,
                              onPressed: ()=> buttonName("Prepare tea with sugar"),
                            ),
                          )


                      ),
                      Padding(padding: const EdgeInsets.only(left: 10.0, bottom: 20.0),
                          child: new SizedBox(
                            width: 120,
                            height: 30,
                            child: new RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10.0),
                              ),
                              child: new Text("Polite"),
                              textColor: Colors.white,
                              color:  Colors.purple,
                              onPressed: ()=> buttonName("Prepare tea with salt"),
                            ),
                          )
                      )
                    ],
                  )])


        ),),
    );
  }
}

