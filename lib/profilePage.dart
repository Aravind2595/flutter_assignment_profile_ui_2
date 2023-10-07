import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MaterialApp(
    home: ProfilePage(),
      debugShowCheckedModeBanner:false

  ));
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: const Icon(Icons.arrow_back),
        ),
      endDrawer: const Drawer(),
      body:Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: CircleAvatar(
                radius:70,
                backgroundImage: AssetImage("assets/images/tony.jpg"),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left:20),
                    child: FaIcon(FontAwesomeIcons.facebook,color: Colors.blue,size: 40,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:20),
                    child: CircleAvatar(child: FaIcon(FontAwesomeIcons.twitter)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:20),
                    child: CircleAvatar(child: FaIcon(FontAwesomeIcons.linkedinIn)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:20),
                    child: FaIcon(FontAwesomeIcons.github,size:40),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30,bottom: 5),
              child: Text("Tony Stark",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ),
            const Text("Stark Industries",),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text("CEO of Stark Industries",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 10),
                      child: TextButton(onPressed: (){}, child: ListTile(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                        tileColor: Colors.black12,
                        leading: const Icon(Icons.privacy_tip_outlined,color: Colors.black,),
                        title: const Text("Privacy",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                        trailing: const Icon(Icons.arrow_forward_ios,size: 15,color: Colors.black,),
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                      child: TextButton(onPressed: (){}, child: ListTile(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                        tileColor: Colors.black12,
                        leading: const Icon(Icons.history,color: Colors.black,),
                        title: const Text("Purchase History",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                        trailing: const Icon(Icons.arrow_forward_ios,size: 15,color: Colors.black,),
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                      child: TextButton(onPressed: (){}, child: ListTile(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                        tileColor: Colors.black12,
                        leading: const Icon(Icons.question_mark_outlined,color: Colors.black,),
                        title: const Text("Help & Support",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                        trailing: const Icon(Icons.arrow_forward_ios,size: 15,color: Colors.black,),
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                      child: TextButton(onPressed: (){}, child: ListTile(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                        tileColor: Colors.black12,
                        leading: const Icon(Icons.settings,color: Colors.black,),
                        title: const Text("Settings",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                        trailing: const Icon(Icons.arrow_forward_ios,size: 15,color: Colors.black,),
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                      child: TextButton(onPressed: (){}, child: ListTile(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                        tileColor: Colors.black12,
                        leading: const FaIcon(FontAwesomeIcons.addressBook,color: Colors.black,),
                        title: const Text("Invite a Friend",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                        trailing: const Icon(Icons.arrow_forward_ios,size: 15,color: Colors.black,),
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                      child: TextButton(onPressed: (){}, child: ListTile(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                        tileColor: Colors.black12,
                        leading: const Icon(Icons.logout,color: Colors.black,),
                        title: const Text("Logout",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                        trailing: const Icon(Icons.arrow_forward_ios,size: 15,color: Colors.black,),
                      )),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
