import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../../Const/const.dart';

class PlayQuizScreen extends StatefulWidget {
  const PlayQuizScreen({Key? key}) : super(key: key);

  @override
  State<PlayQuizScreen> createState() => _PlayQuizScreenState();
}

class _PlayQuizScreenState extends State<PlayQuizScreen> {
  List<String> cryptoTypes = ["Coin", "Money", "Dollar", "Rupee"];
  String selectedCrypto = "Money";
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
                      "Play Quiz",
                      style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  )),
            )
          ],
        ),
        const SizedBox(
          height: 60,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 153,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: kSecondlyColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "What is Crypto?",
                        style: kTextStyle.copyWith(color: kWhite, fontSize: 24),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -43,
                    right: 0,
                    left: 0,
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: kWhite,
                      ),
                      child: CircularPercentIndicator(
                        radius: 40.0,
                        animation: true,
                        animationDuration: 1200,
                        lineWidth: 15.0,
                        percent: 0.5,
                        center: const Text(
                          "15",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                        circularStrokeCap: CircularStrokeCap.round,
                        backgroundColor: const Color(0xffABD1C6),
                        progressColor: const Color(0xff4AC2BD),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: cryptoTypes.length, // Display only one item
                itemBuilder: (context, index) {
                  return Card(
                    color: kSecondlyColor,
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          selectedCrypto = cryptoTypes[index];
                        });
                      },
                      title: Text(
                        cryptoTypes[index],
                        style: kTextStyle.copyWith(color: kWhite),
                      ),
                      trailing: Icon(
                        selectedCrypto == cryptoTypes[index] ? Icons.check_circle : Icons.circle_outlined,
                        color: selectedCrypto == cryptoTypes[index] ? Colors.green : Colors.grey,
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff2C8379),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=> const ()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('Next', style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
