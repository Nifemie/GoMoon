import 'package:first_app/widgets/custom_dropdown_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  HomePage({Key? Key}) : super(key: Key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [_pageTitle(), _bookRide()],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: _astroImageWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _pageTitle() {
    return const Text(
      "#GoMOON",
      style: TextStyle(
        color: Colors.white,
        fontSize: 70,
        fontWeight: FontWeight.w800,
      ),
    );
  }

  Widget _astroImageWidget() {
    return Container(
      height: _deviceHeight * 0.50,
      width: _deviceWidth * 0.65,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  "assets/images/oliver-schwenn-2g0a6478_2-3_1657793853_crop.jpg"))),
    );
  }

  Widget _bookRide() {
    return Container(
      height: _deviceHeight * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationDropDownWidget(),
          _travellersInformationWidget(),
          _rideButton(),
        ],
      ),
    );
  }

  Widget _destinationDropDownWidget() {
    return CustomDropdownButtonClass(
      values: [
        "james web station",
        "preneure web station",
      ],
      width: _deviceWidth,
    );
  }

  Widget _travellersInformationWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropdownButtonClass(
          values: const [
            "1",
            "2",
            "3",
            "4",
          ],
          width: _deviceWidth * 0.45,
        ),
        CustomDropdownButtonClass(
          values: const [
            "economy",
            "business",
            "first",
            "private",
          ],
          width: _deviceWidth * 0.40,
        ),
      ],
    );
  }

  Widget _rideButton() {
    return Container(
      margin: EdgeInsets.only(bottom: _deviceHeight * 0.01),
      width: _deviceWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          "BOOK RIDE!",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
