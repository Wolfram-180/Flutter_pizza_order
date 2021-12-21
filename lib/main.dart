import 'package:flutter/material.dart';
import 'package:sliding_switch/sliding_switch.dart';

void main() {
  runApp(const PizzaApp());
}

const String appTitle = 'Калькулятор пиццы';

class PizzaApp extends StatelessWidget {
  const PizzaApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PizzaAppHomePage(),
    );
  }
}

class PizzaAppHomePage extends StatefulWidget {
  const PizzaAppHomePage({Key? key}) : super(key: key);
  @override
  State<PizzaAppHomePage> createState() => _PizzaAppHomePageState();
}

class _PizzaAppHomePageState extends State<PizzaAppHomePage> {
  bool _isTonkoeTesto = false;
  double _pizzaRadius = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar: AppBar(title: Text(appTitle)),
        body: Container(
      color: Colors.white,
      child: Column(
        children: [
          const SizedBox(height: 60),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 100,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: NetworkImage(
                      'https://images.saymedia-content.com/.image/t_share/MTc2MjcyOTg3MTczOTU0NzMz/best-cicis-pizza-types.png'),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            appTitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Выберите параметры:",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "Размер:",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          SlidingSwitch(
            value: _isTonkoeTesto,
            width: 280,
            onChanged: (bool _isTonkoeTesto) {
              _isTonkoeTesto = !_isTonkoeTesto;
            },
            height: 35,
            animationDuration: const Duration(milliseconds: 400),
            onTap: () {},
            onDoubleTap: () {},
            onSwipe: () {},
            textOff: "Обычное тесто",
            textOn: "Тонкое тесто",
            colorOn: const Color(0xffdc6c73),
            colorOff: const Color(0xff6682c0),
            background: const Color(0xffe4e5eb),
            buttonColor: const Color(0xfff7f5f7),
            inactiveColor: const Color(0xff636f7b),
          ),
          Slider(
            value: _pizzaRadius,
            min: 15,
            max: 60,
            divisions: 3,
            label: _pizzaRadius.round().toString(),
            onChanged: (double value) {
              setState(() {
                _pizzaRadius = value;
              });
            },
          ),
          Stack(
            children: [
              Container(
                //width: 320,
                //height: 582,
                padding: const EdgeInsets.all(20)
                //left: 10,
                //right: 9,
                //top: 154,
                //bottom: 37,
                ,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 300,
                      height: 64,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 9),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.71),
                    Container(
                      width: 300,
                      height: 34,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 300,
                            height: 34,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(36),
                              color: Color(0xffeceff1),
                            ),
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: 150,
                                      height: 34,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(83),
                                        color: Color(0xff0078d0),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 20,
                                  top: 7,
                                  child: Text(
                                    "Обычное тесто",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 175,
                                  top: 7,
                                  child: Text(
                                    "Тонкое тесто",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0x66000000),
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.71),
                    SizedBox(height: 10.71),
                    Container(
                      width: 300,
                      height: 34,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xffeceff1),
                      ),
                    ),
                    SizedBox(height: 10.71),
                    Text(
                      "Соус:",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10.71),
                    Container(
                      width: 293,
                      height: 48,
                      padding: const EdgeInsets.only(
                        top: 15,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Острый",
                            style: TextStyle(
                              color: Color(0xff333333),
                              fontSize: 16,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(
                            width: 16,
                            height: 16,
                            child: Stack(
                              children: [
                                Container(
                                  width: 16,
                                  height: 16,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Color(0xff4b9360),
                                      width: 1,
                                    ),
                                  ),
                                ),
                                Positioned.fill(
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      width: 12,
                                      height: 12,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xff5db074),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 293,
                            height: 1,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.71),
                    Container(
                      width: 293,
                      height: 48,
                      padding: const EdgeInsets.only(
                        top: 16,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Кисло-сладкий",
                            style: TextStyle(
                              color: Color(0xff333333),
                              fontSize: 16,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Color(0xff333333),
                                width: 1,
                              ),
                            ),
                          ),
                          Container(
                            width: 293,
                            height: 1,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.71),
                    Container(
                      width: 293,
                      height: 48,
                      padding: const EdgeInsets.only(
                        top: 16,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Сырный",
                            style: TextStyle(
                              color: Color(0xff333333),
                              fontSize: 16,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Color(0xff333333),
                                width: 1,
                              ),
                            ),
                          ),
                          Container(
                            width: 293,
                            height: 1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 25,
                top: 630,
                child: Text(
                  "Стоимость:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              Positioned(
                left: 18,
                top: 564,
                child: Container(
                  width: 291,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xfff0f0f0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 291,
                        height: 56,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width: 291,
                              height: 56,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 48,
                                    top: 8,
                                    child: SizedBox(
                                      width: 203,
                                      height: 40,
                                      child: Text(
                                        "Дополнительный сыр",
                                        style: TextStyle(
                                          color: Color(0xff263238),
                                          fontSize: 16,
                                          letterSpacing: 0.16,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 235,
                                    top: 16,
                                    child: Container(
                                      width: 40,
                                      height: 24,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 40,
                                            height: 24,
                                            child: Stack(
                                              children: [
                                                Positioned.fill(
                                                  child: Align(
                                                    alignment: Alignment.center,
                                                    child: Opacity(
                                                      opacity: 0.24,
                                                      child: Container(
                                                        width: 34,
                                                        height: 14,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(34),
                                                          color:
                                                              Color(0xff0e4ca4),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned.fill(
                                                  child: Align(
                                                    alignment:
                                                        Alignment.topRight,
                                                    child: Container(
                                                      width: 20,
                                                      height: 20,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Color(
                                                                0x89304ffe),
                                                            blurRadius: 2,
                                                            offset:
                                                                Offset(0, 1),
                                                          ),
                                                        ],
                                                        color:
                                                            Color(0xff0e4ca4),
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
                                  ),
                                  Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        width: 36,
                                        height: 34,
                                        child: FlutterLogo(size: 34),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: 340,
                    height: 39,
                    child: Text(
                      "Соус:",
                      style: TextStyle(
                        color: Color(0xff263238),
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 83,
                top: 728,
                child: Container(
                  width: 154,
                  height: 42,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 154,
                        height: 42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          color: Color(0xff0078d0),
                        ),
                        padding: const EdgeInsets.only(
                          top: 11,
                          bottom: 12,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Заказать",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 10,
                top: 661,
                child: Container(
                  width: 300,
                  height: 34,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36),
                    color: Color(0xffeceff1),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
