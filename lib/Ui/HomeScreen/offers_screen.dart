import 'package:flutter/material.dart';

import '../../Const/const.dart';

class OffersScreen extends StatefulWidget {
  const OffersScreen({Key? key}) : super(key: key);

  @override
  State<OffersScreen> createState() => _OffersScreenState();
}

class _OffersScreenState extends State<OffersScreen> {
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
                      "Offers",
                      style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  )),
            )
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10, right: 15, left: 15),
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 93,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xffCA4848),
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
                      child: Text(
                        "Polfish",
                        style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -15,
                    right: 15.0,
                    child: Container(
                      height: 28,
                      width: 135,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff944949),
                      ),
                      child: Text(
                        "Hot Offer",
                        style: kTextStyle.copyWith(
                          color: kWhite,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 93,
                    alignment: Alignment.center,
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
                      child: Text(
                        "Bitslab",
                        style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -15,
                    right: 15.0,
                    child: Container(
                      height: 28,
                      width: 135,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff2C8379),
                      ),
                      child: Text(
                        "Recommended",
                        style: kTextStyle.copyWith(
                          color: kWhite,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 93,
                    alignment: Alignment.center,
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
                      child: Text(
                        "Cpx Research",
                        style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -15,
                    right: 15.0,
                    child: Container(
                      height: 28,
                      width: 135,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green,
                      ),
                      child: Text(
                        "New",
                        style: kTextStyle.copyWith(
                          color: kWhite,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
