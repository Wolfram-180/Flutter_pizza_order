import 'package:flutter/material.dart';

import '../styling/main_screen_styles.dart';

class pizzaPhotoInCornerWidget extends StatelessWidget {
  const pizzaPhotoInCornerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        width: 170, //MediaQuery.of(context).size.width ,
        child: Image.network(
          'https://staticy.dominospizza.ru/api/medium/ProductOsg/Web/CHIKS4/NULL/NULL/RU',
        ),
        transform: Matrix4.translationValues(-20, -30, 0),
      ),
    );
  }
}

class testoTypeTextWidget extends StatelessWidget {
  const testoTypeTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 20, bottom: 7),
      child: Text(
        "Тип теста:",
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }
}

class chooseParamsTextWidget extends StatelessWidget {
  const chooseParamsTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Выберите параметры:",
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headline5,
      //TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
    );
  }
}

class appTitleTextWidget extends StatelessWidget {
  const appTitleTextWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headline4,
    );
  }
}

class pizzaSizeTextWidget extends StatelessWidget {
  const pizzaSizeTextWidget({
    Key? key,
    required int pizzaRadius,
  })  : _pizzaRadius = pizzaRadius,
        super(key: key);

  final int _pizzaRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(top: 20, left: 20),
      child: Text(
        "Радиус пиццы, в см: $_pizzaRadius",
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }
}

class orderButtonWidget extends StatelessWidget {
  const orderButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: buyBtnStyle,
      onPressed: () {},
      child: const Text('Заказать'),
    );
  }
}

class souceTextWidget extends StatelessWidget {
  const souceTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        "Соус:",
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }
}
