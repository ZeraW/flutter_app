import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/first_screen.dart';
import 'package:flutter_app/app_screens/second_screen.dart';

var sTtitle = "My Hero App";

void main() => runApp(new MyFlutterApp()); //run App

class MyFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: sTtitle,
        home: Scaffold(
          body: ListClass(),
          floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              tooltip: 'Add one more item',
              onPressed: () {
                snackBar(context);
              }),
        )
    );
  }
}

List getlist() {
  return List<String>.generate(10, (counter) => "Item $counter");
}

Widget getListView() {
  var mList = getlist();

  var listView = ListView.builder(itemBuilder: (context, index) {
    return ListTile(
        leading: Icon(Icons.account_balance),
        trailing: Icon(Icons.arrow_forward_ios),
        title: Text(mList[index]),
        onTap: () => snackBar(context));
  });

  return listView;
}

void snackBar(BuildContext context) {
  var snackBar = SnackBar(
    content: Text("Show Snack bar"),
    action: SnackBarAction(label: "Click", onPressed: ()=> debugPrint("lol")),
  );
  Scaffold.of(context).showSnackBar(snackBar);
}
