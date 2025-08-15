import 'package:car_app_ui/utils/constantColor.dart';
import 'package:flutter/material.dart';

class VisaCardUi extends StatefulWidget {
  const VisaCardUi({super.key});

  @override
  State<VisaCardUi> createState() => _VisaCardUiState();
}

class _VisaCardUiState extends State<VisaCardUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Visa Card Ui"),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(
            15,
          ),
          height: 224,
          width: 354,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              10,
            ),
            gradient: ConstantColor.purpleBlueGradient,
          ),
          child: Stack(
            children: [
              Positioned(
                  top: 20,
                  right: 30,
                  child: Image.asset(
                    "assets/images/visa_logo.png",
                    height: 30,
                    width: 80,
                    fit: BoxFit.fill,
                  )),
              Positioned(
                  top: 20,
                  left: 20,
                  child: Image.asset(
                    "assets/images/visa_chip_logo.png",
                    height: 45,
                    width: 60,
                    fit: BoxFit.fill,
                  )),
              Positioned(
                left: 20,
                bottom: 80,
                child: Text(
                  "**** **** **** 2345",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: ConstantColor.whiteColor,
                  ),
                ),
              ),
              Positioned(
                left: 20,
                bottom: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Card Holder name",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: ConstantColor.whiteColor,
                      ),
                    ),
                    Text(
                      "Abu Rasel",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: ConstantColor.whiteColor,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 20,
                bottom: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Expiry Date",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: ConstantColor.whiteColor,
                      ),
                    ),
                    Text(
                      "02/30",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: ConstantColor.whiteColor,
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
