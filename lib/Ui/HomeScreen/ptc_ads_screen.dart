import 'package:flutter/material.dart';

import '../../Const/const.dart';

class PtcAdsScreen extends StatefulWidget {
  const PtcAdsScreen({Key? key}) : super(key: key);

  @override
  State<PtcAdsScreen> createState() => _PtcAdsScreenState();
}

class _PtcAdsScreenState extends State<PtcAdsScreen> {
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
                      "PTC Ads",
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
          padding: const EdgeInsets.only(left: 15.0, right: 15),
          child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 2,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
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
                        title: Text("paidltc.com", style: kTextStyle.copyWith(color: const Color(0xff4EDBC2), fontWeight: FontWeight.bold)),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text("Visit the site for 10 Sec",
                              style: kTextStyle.copyWith(
                                color: kWhite,
                              )),
                        ),
                        trailing: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 77,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                  color: kTitleColor.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 3,
                                  offset: const Offset(0, 3), // changes position of shadow
                                ),
                              ], color: const Color(0xff2C8379), borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Text(
                                  'Open',
                                  style: kTextStyle.copyWith(fontWeight: FontWeight.bold, color: kWhite),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              '10+ Coin',
                              style: kTextStyle.copyWith(fontWeight: FontWeight.bold, color: kWhite),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
        ),
      ]),
    );
  }
}
