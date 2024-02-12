import 'package:flutter/material.dart';

import '../../Const/const.dart';

class UserAccountScreen extends StatefulWidget {
  const UserAccountScreen({Key? key}) : super(key: key);

  @override
  State<UserAccountScreen> createState() => _UserAccountScreenState();
}

class _UserAccountScreenState extends State<UserAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Stack(
          clipBehavior: Clip.none,
          children: <Widget>[
            Container(
              // Background
              color: kBodyContainerColor,
              height: MediaQuery.of(context).size.height * 0.20,
              width: MediaQuery.of(context).size.width,
            ),
            Positioned(
              top: 40,
              left: 15.0,
              child: Container(
                  height: 44,
                  width: 44,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kSecondlyColor,
                  ),
                  child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        color: kSubTitleColor,
                      ))),
            ),
            Positioned(
              bottom: -20.0,
              left: 15.0,
              right: 15.0,
              child: Container(
                  height: 63,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kSecondlyColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Text(
                      "Account",
                      style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  )),
            )
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0,left: 15,right: 15),
          child: Container(
            decoration: BoxDecoration(
              color: kSecondlyColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: kTitleColor.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading:  Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage('images/UserProfileIcon.png'), fit: BoxFit.cover)),
                ),
                title: Text("Hasan", style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold)),
                subtitle: Text("hasan@gmail.com",
                    style: kTextStyle.copyWith(
                      color: kWhite,
                    )),

              ),
            ),
          ),
        ),
        const SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Card(
                color: kSecondlyColor,
                child: ListTile(
                  onTap: (){
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => const ()));
                  },
                  title: Text('Edit Profile',style: kTextStyle.copyWith(color: kWhite),),
                  trailing: const Icon(Icons.arrow_forward_ios,color:kSubTitleColor,size: 20,),
                ),
              ),

              Card(
                color: kSecondlyColor,
                child: ListTile(
                  onTap: (){
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => const ()));
                  },
                  title: Text('Change Password',style: kTextStyle.copyWith(color: kWhite),),
                  trailing: const Icon(Icons.arrow_forward_ios,color:kSubTitleColor,size: 20,),
                ),
              ),


              Card(
                color: kSecondlyColor,
                child: ListTile(
                  onTap: (){
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => const ()));
                  },
                  title: Text('Notifications',style: kTextStyle.copyWith(color: kWhite),),
                  trailing: const Icon(Icons.arrow_forward_ios,color:kSubTitleColor,size: 20,),
                ),
              ),

              Card(
                color: kSecondlyColor,
                child: ListTile(
                  onTap: (){
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => const ()));
                  },
                  title: Text('Logout',style: kTextStyle.copyWith(color: kWhite),),
                  trailing: const Icon(Icons.arrow_forward_ios,color:kSubTitleColor,size: 20,),
                ),
              ),
            ],
          ),
        ),


      ]),
    );
  }
}
