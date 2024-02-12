import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../../Const/const.dart';
import '../../Models/spin_models.dart';

class SpinScreen extends StatefulWidget {
  const SpinScreen({Key? key}) : super(key: key);

  @override
  State<SpinScreen> createState() => _SpinScreenState();
}

class _SpinScreenState extends State<SpinScreen> {
  StreamController<int> selected = StreamController<int>();

  @override
  void dispose() {
    selected.close();
    super.dispose();
  }

  MySpinController mySpinController = MySpinController();

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
                      "Spin & Earn",
                      style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  )),
            )
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              "Spin and earn lots of coins everytime",
              style: kTextStyle.copyWith(
                color: kWhite,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        MySpinner(
          mySpinController: mySpinController,
          wheelSize: 253,
          itemList: [
            SpinItem(
                label: '100\$',
                labelStyle: kTextStyle.copyWith(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                color: const Color(0xfff47b16)),
            SpinItem(
                label: '200\$',
                labelStyle: kTextStyle.copyWith(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                color: const Color(0xfffdaa14)),
            SpinItem(
                label: '300\$',
                labelStyle: kTextStyle.copyWith(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                color: const Color(0xff20b3ff)),
            SpinItem(
                label: '400\$',
                labelStyle: kTextStyle.copyWith(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                color: const Color(0xffed0a57)),
            SpinItem(
                label: '500\$',
                labelStyle: kTextStyle.copyWith(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                color: const Color(0xff480bf0)),
            SpinItem(
                label: '600\$',
                labelStyle: kTextStyle.copyWith(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                color: const Color(0xff018d7a)),
            SpinItem(
                label: '700\$',
                labelStyle: kTextStyle.copyWith(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                color: const Color(0xff828383)),
            SpinItem(
                label: '800\$',
                labelStyle: kTextStyle.copyWith(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                color: const Color(0xfff9300d)),
          ],
          onFinished: (p0) {},
        ),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width / 1.4,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () async {
                  int rdm = Random().nextInt(6);

                  await mySpinController.spinNow(luckyIndex: rdm + 1, totalSpin: 8, baseSpinDuration: 20);
                },
                child:  Text('Spin Now',style: kTextStyle.copyWith(fontWeight: FontWeight.bold,color: kWhite,fontSize: 20),)),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
      ]),
    );
  }
}



class MySpinner extends StatefulWidget {
  final MySpinController mySpinController;
  final List<SpinItem> itemList;
  final double wheelSize;
  final Function(void) onFinished;
  const MySpinner({
    Key? key,
    required this.mySpinController,
    required this.onFinished,
    required this.itemList,
    required this.wheelSize,
  }) : super(key: key);

  @override
  State<MySpinner> createState() => _MySpinnerState();
}

class _MySpinnerState extends State<MySpinner> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    widget.mySpinController.initLoad(
      tickerProvider: this,
      itemList: widget.itemList,
    );
  }

  @override
  void dispose() {
    super.dispose();
    null;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      //alignment: Alignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          child: AnimatedBuilder(
            animation: widget.mySpinController._baseAnimation,
            builder: (context, child) {
              double value = widget.mySpinController._baseAnimation.value;
              double rotationValue = (360 * value);
              return RotationTransition(
                turns: AlwaysStoppedAnimation(rotationValue / 360),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    RotatedBox(
                      quarterTurns: 3,
                      child: Container(
                        decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: kWhite, width: 5)),
                        child: Container(
                            width: widget.wheelSize,
                            height: widget.wheelSize,
                            padding: const EdgeInsets.all(15),
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Colors.black, Colors.black38, Colors.black, Colors.black38, Colors.black], // Define the colors for the gradient
                                  begin: Alignment.topLeft, // Define the starting point of the gradient
                                  end: Alignment.bottomRight, // Define the ending point of the gradient
                                  // You can also define more stops and their positions if needed
                                  // stops: [0.2, 0.7],
                                  // tileMode: TileMode.clamp,
                                ),
                                //color: Colors.white.withOpacity(0.2),
                                shape: BoxShape.circle),
                            child: Container(
                              decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                              padding: const EdgeInsets.all(5),
                              child: CustomPaint(
                                painter: SpinWheelPainter(items: widget.itemList),
                              ),
                            )),
                      ),
                    ),
                    ...widget.itemList.map((each) {
                      int index = widget.itemList.indexOf(each);
                      double rotateInterval = 360 / widget.itemList.length;
                      double rotateAmount = (index + 0.5) * rotateInterval;
                      return RotationTransition(
                        turns: AlwaysStoppedAnimation(rotateAmount / 360),
                        child: Transform.translate(
                          offset: Offset(0, -widget.wheelSize / 4),
                          child: RotatedBox(
                            quarterTurns: 3,
                            child: Text(each.label, style: each.labelStyle),
                          ),
                        ),
                      );
                    }).toList(),
                    Container(
                      alignment: Alignment.center,
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(color: Colors.transparent, shape: BoxShape.circle),
                    )
                  ],
                ),
              );
            },
          ),
        ),
        Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.all(0),
            child: Image.asset(
              'images/ArrowIcon.png',
              width: 15,
              height: 33,
            )),
      ],
    );
  }
}

class MySpinController {
  late AnimationController _baseAnimation;
  late TickerProvider _tickerProvider;
  bool _xSpinning = false;
  List<SpinItem> _itemList = [];

  Future<void> initLoad({
    required TickerProvider tickerProvider,
    required List<SpinItem> itemList,
  }) async {
    _tickerProvider = tickerProvider;
    _itemList = itemList;
    await setAnimations(_tickerProvider);
  }

  Future<void> setAnimations(TickerProvider tickerProvider) async {
    _baseAnimation = AnimationController(
      vsync: tickerProvider,
      duration: const Duration(milliseconds: 200),
    );
  }

  Future<void> spinNow({required int luckyIndex, int totalSpin = 10, int baseSpinDuration = 100}) async {
    //getWhereToStop
    int itemsLength = _itemList.length;
    int factor = luckyIndex % itemsLength;
    if (factor == 0) factor = itemsLength;
    double spinInterval = 1 / itemsLength;
    double target = 1 - ((spinInterval * factor) - (spinInterval / 2));

    if (!_xSpinning) {
      _xSpinning = true;
      int spinCount = 0;

      do {
        _baseAnimation.reset();
        _baseAnimation.duration = Duration(milliseconds: baseSpinDuration);
        if (spinCount == totalSpin) {
          await _baseAnimation.animateTo(target);
        } else {
          await _baseAnimation.forward();
        }
        baseSpinDuration = baseSpinDuration + 50;
        _baseAnimation.duration = Duration(milliseconds: baseSpinDuration);
        spinCount++;
      } while (spinCount <= totalSpin);

      _xSpinning = false;
    }
  }
}

class SpinWheelPainter extends CustomPainter {
  final List<SpinItem> items;

  SpinWheelPainter({required this.items});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = math.min(size.width, size.height) / 2;

    final paint = Paint()..style = PaintingStyle.fill;

    final shadowPaint = Paint()
      ..color = Colors.white // Adjust the shadow color and opacity as needed
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 1.0); // Adjust the blur radius as needed

    const spaceBetweenItems = 0.05; // Adjust this value to set the desired space between items
    final totalSections = items.length;
    const totalAngle = 2 * math.pi;
    final sectionAngleWithSpace = (totalAngle - (totalSections * spaceBetweenItems)) / totalSections;
    const spaceOnBothSides = spaceBetweenItems / 2;

    for (var i = 0; i < items.length; i++) {
      final startAngle = i * (sectionAngleWithSpace + spaceBetweenItems) + spaceOnBothSides;

      paint.color = items[i].color;

      // Draw shadow before drawing the arc
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startAngle,
        sectionAngleWithSpace,
        true,
        shadowPaint,
      );

      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startAngle,
        sectionAngleWithSpace,
        true,
        paint,
      );
    }

    // Draw a circle at the center of the wheel
    final centerCircleRadius = radius * 0.15; // Adjust the radius of the center circle as needed
    final centerCirclePaint = Paint()..color = kTitleColor; // Adjust the color of the center circle as needed
    canvas.drawCircle(center, centerCircleRadius, centerCirclePaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
