import 'package:flutter/material.dart';

import 'package:hello_money_app/Ui/HomeScreen/play_quiz_screen.dart';
import 'package:hello_money_app/Ui/HomeScreen/ptc_ads_screen.dart';
import 'package:hello_money_app/Ui/HomeScreen/spin_screen.dart';
import 'package:hello_money_app/Ui/HomeScreen/user_account_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../Const/const.dart';
import 'offers_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final PageController _pageController;
  int selectedPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: selectedPage);
  }

  List<String> days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];
  List<String> iconDays = List.filled(7, "images/SunIcon.png");

  List<String> adBannerImage = [
    "images/HitAndEarn.png",
    "images/SpinAndGet.png",
    "images/GetPaidWith.png",
  ];
  List<String> adBannerText = [
    "Hit and\nEarn",
    "Spin and Get\nUnlimited Coins",
    "Get Paid with\nCrypto",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 170,
              height: 48,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: kSecondlyColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
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
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const UserAccountScreen()));
              },
              child: Container(
                width: 35,
                height: 35,
                decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('images/UserProfileIcon.png'), fit: BoxFit.cover)),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                height: 80,
                width: double.infinity,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: adBannerImage.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(image: AssetImage(adBannerImage[index]), fit: BoxFit.cover),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          adBannerText[index],
                          style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold),
                        ),
                      ),
                    );
                  },
                  onPageChanged: (page) {
                    setState(() {
                      selectedPage = page;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: SmoothPageIndicator(
                controller: _pageController,
                count: adBannerImage.length,
                effect: const WormEffect(
                  dotHeight: 8,
                  dotWidth: 22,
                  type: WormType.thinUnderground,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 50,
              color: kBodyContainerColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Collect your Daily Reward",
                      style: kTextStyle.copyWith(color: kWhite),
                    ),
                    Text(
                      "10+",
                      style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: GridView.builder(
                itemCount: days.length,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, crossAxisSpacing: 10, mainAxisSpacing: 10, mainAxisExtent: 97),
                itemBuilder: (_, index) {
                  Color dayColor = kSecondlyColor;
                  if (days[index] == "Mon") {
                    dayColor = const Color(0xff4BBC8D);
                  }

                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: dayColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            days[index],
                            style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(iconDays[index]), fit: BoxFit.cover)),
                          ),
                          Text(
                            "10+",
                            style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 50,
              color: kBodyContainerColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Text(
                      "Earn Money With",
                      style: kTextStyle.copyWith(color: kWhite),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 15),
                shrinkWrap: true,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const PtcAdsScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Container(
                        height: 97,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kSecondlyColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(image: AssetImage("images/PTC.png"), fit: BoxFit.cover),
                                ),
                              ),
                              Text(
                                "PTC",
                                style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const OffersScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Container(
                        height: 97,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kSecondlyColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(image: AssetImage("images/Offers.png"), fit: BoxFit.cover),
                                ),
                              ),
                              Text(
                                "Offers",
                                style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>  const SpinScreen ()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Container(
                        height: 97,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kSecondlyColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(image: AssetImage("images/Spin.png"), fit: BoxFit.cover),
                                ),
                              ),
                              Text(
                                "Spin",
                                style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const PlayQuizScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Container(
                        height: 97,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kSecondlyColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(image: AssetImage("images/Quiz.png"), fit: BoxFit.cover),
                                ),
                              ),
                              Text(
                                "Quiz",
                                style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
