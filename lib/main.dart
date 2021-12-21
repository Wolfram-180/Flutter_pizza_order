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

enum Souce { ostr, kislslad, sirn }

class _PizzaAppHomePageState extends State<PizzaAppHomePage> {
  bool _isTonkoeTesto = false;
  double _pizzaRadius = 15;
  Souce? _souce = Souce.ostr;
  bool _addCheese = true;

  void _onSouceChanged(Souce? value) {
    setState(() {
      _souce = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar: AppBar(title: Text(appTitle)),
        body: Container(
      color: Colors.white,
      child: Column(
        children: [
          //const SizedBox(height: 60),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 170, //MediaQuery.of(context).size.width ,
              child: Image.network(
                'https://staticy.dominospizza.ru/api/medium/ProductOsg/Web/CHIKS4/NULL/NULL/RU',
              ),
              transform: Matrix4.translationValues(-20, -30, 0),
            ),
          ),
          const Text(
            appTitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Выберите параметры:",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 20, bottom: 7),
            child: const Text(
              "Тип теста:",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
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
          Divider(),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Text(
              "Радиус пиццы, в см: $_pizzaRadius",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
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
          const SizedBox(height: 3),
          Divider(),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 20),
            child: const Text(
              "Соус:",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(
            height: 30,
            child: RadioListTile<Souce>(
              title: const Text('Острый'),
              value: Souce.ostr,
              groupValue: _souce,
              onChanged: _onSouceChanged,
            ),
          ),
          SizedBox(
            height: 30,
            child: RadioListTile<Souce>(
              title: const Text('Кисло-сладкий'),
              value: Souce.kislslad,
              groupValue: _souce,
              onChanged: _onSouceChanged,
            ),
          ),
          SizedBox(
            height: 30,
            child: RadioListTile<Souce>(
              title: const Text('Сырный'),
              value: Souce.sirn,
              groupValue: _souce,
              onChanged: _onSouceChanged,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Divider(),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Card(
              elevation: 8,
              color: Color(0xFFF0F0F0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 20,
                    ),
                    child: SizedBox(
                      width: 70,
                      height: 70,
                      child: Image.network(
                        'https://cdn.cnn.com/cnnnext/dam/assets/211125191831-01-europe-best-cheeses-112521-full-169.jpg',
                      ),
                    ),
                  ),
                  Text('Дополнительный сыр'),
                  Switch(
                    value: _addCheese,
                    onChanged: (bool value) {
                      setState(() {
                        _addCheese = value;
                      });
                    },
                    activeThumbImage: new NetworkImage(
                        'https://www.freeiconspng.com/thumbs/yes-png/yes-png-9.png'),
                    inactiveThumbImage: new NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/No_sign.svg/300px-No_sign.svg.png'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
