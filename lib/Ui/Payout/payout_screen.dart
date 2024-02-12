import 'package:flutter/material.dart';

import '../../Const/const.dart';
class PayoutScreen extends StatefulWidget {
  const PayoutScreen({Key? key}) : super(key: key);

  @override
  State<PayoutScreen> createState() => _PayoutScreenState();
}

class _PayoutScreenState extends State<PayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kSecondlyColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Balance",
                            style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                'images/BalanceIcon.png',
                                width: 21,
                                height: 20,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                "500",
                                style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold, fontSize: 20),
                              )
                            ],
                          ),
                        ],
                      ),
                    )),
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              "Payout with different currency",
              style: kTextStyle.copyWith(
                color: kWhite,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),




          Container(
            height: 77,
            alignment: Alignment.center,
            color: kBodyContainerColor,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: ListTile(
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("images/Bitcoin.png"), fit: BoxFit.cover)),
                ),
                title: Text("Bitcoin",
                    style: kTextStyle.copyWith(
                      color: kWhite,
                    )),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 77,
            alignment: Alignment.center,
            color: kBodyContainerColor,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: ListTile(
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("images/Litecoin.png"), fit: BoxFit.cover)),
                ),
                title: Text("Litecoin",
                    style: kTextStyle.copyWith(
                      color: kWhite,
                    )),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 77,
            alignment: Alignment.center,
            color: kBodyContainerColor,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: ListTile(
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("images/Dogscoin.png"), fit: BoxFit.cover)),
                ),
                title: Text("Dogscoin",
                    style: kTextStyle.copyWith(
                      color: kWhite,
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}