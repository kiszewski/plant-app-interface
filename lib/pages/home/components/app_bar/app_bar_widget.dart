import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Container(
      height: _height * .35,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              height: _height * .3,
              width: _width,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35),
                  )),
            ),
          ),
          Positioned(
            width: _width,
            top: 0,
            child: Container(
              height: _height * .15,
              margin: EdgeInsets.only(top: _height * .07),
              padding: EdgeInsets.symmetric(horizontal: _width * .05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [SvgPicture.asset('assets/icons/menu.svg')],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hi Uishophy!',
                        style: Theme.of(context).textTheme.headline5.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Image.asset(
                        'assets/images/logo.png',
                        width: _width * .15,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: _height * 0.01,
            left: _width * .05,
            right: _width * .05,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 15,
              color: Colors.white,
              shadowColor: Theme.of(context).primaryColor,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: _width * .2,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SvgPicture.asset('assets/icons/search.svg')
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
