import 'package:flutter/material.dart';


import '../../Const/const.dart';


class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              Container(
                // Background
                color: kBodyContainerColor,
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width,
              ),
              Positioned(
                bottom: -20.0,
                left: 20.0,
                right: 20.0,
                child: Container(
                  height: 63,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kSecondlyColor,
                  ),
                  child: Text(
                    "Payout History",
                    style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
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
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          title: Text("Payout By Bitcoin",
                              style: kTextStyle.copyWith(
                                color: kWhite,
                              )),
                          subtitle: Text("12 Feb, 2024  || 12:14 PM",
                              style: kTextStyle.copyWith(
                                color: kWhite,
                              )),
                          trailing: Container(
                            decoration: const BoxDecoration(shape: BoxShape.circle, color: Color(0xff1A3C66)),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                '500',
                                style: kTextStyle.copyWith(fontWeight: FontWeight.bold, color: kWhite),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );

  }
}
