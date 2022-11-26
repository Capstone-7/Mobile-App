import 'package:flutter/material.dart';

class HomeScreenCarousel extends StatelessWidget {
  const HomeScreenCarousel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
      child: SizedBox(
        height: 150.0,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 220,
                  decoration: const BoxDecoration(
                      color: Color(0xffD9D9D9),
                      borderRadius: BorderRadius.all(
                          Radius.circular(6.0))),
                ),
              );
            }),
      ),
    );
  }
}
