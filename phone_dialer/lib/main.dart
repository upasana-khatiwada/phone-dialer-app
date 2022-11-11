import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

void main() =>runApp(const MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'dialer app',
  home: HomePage(),
));
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var contactList = ["Upasana Khatiwada","Srijana Adhikari","hello Meow","tyalor swift"];
  var phoneNumber = ["9876543213","98765432223","9876543233","9876543240"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFE21717),
        title: const Text("Phone Dialer App"),
      ),
      body: ListView.builder(
        itemCount: contactList.length,
        itemBuilder: (context,index){
          return ListTile(
            leading: const Icon(Icons.supervised_user_circle),
            title: Text(contactList[index]),
            subtitle: Text(phoneNumber[index]),
            trailing: IconButton(
              icon: const Icon(Icons.call),
              onPressed: (){
                launchUrlString("tel://${phoneNumber[index]}");

              },
            ),
          );
        },),

    );
    
  }
}