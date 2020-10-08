import 'package:merchant_app/utilities/standardCard.dart';
import 'package:flutter/material.dart';
import '../utilities/standardCard.dart';
import '../utilities/cancelledCard.dart';

class Appointment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          "Appointments",
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CancelledCard(
                holderName: 'Amey Sawant',
                confNumber: 1,
                reason: "So Gaya",
                date: "29/9",
                time: "10:00AM - 1:00pm",
              ),
              StandardCard(
                holderName: 'Prakash Upadhyay',
                confNumber: 2,
                revenue: 18000,
                date: "30/9",
                time: "12:00AM - 5:00pm",
              ),
              CancelledCard(
                holderName: 'Dhairya Shah',
                confNumber: 1,
                reason: "Bath",
                date: "1/10",
                time: "12:00PM - 4:00pm",
              ),
              StandardCard(
                holderName: 'Jigar Vaishnav',
                confNumber: 2,
                revenue: 1500,
                date: "29/9",
                time: "5:00PM - 9:00pm",
              ),
              CancelledCard(
                holderName: 'Dhruv Purohit',
                confNumber: 1,
                reason: "IPL",
                date: "3/10",
                time: "11:00AM - 2:00pm",
              ),
              StandardCard(
                holderName: 'Harshal Goyal',
                confNumber: 2,
                revenue: 1200,
                date: "3/10",
                time: "5:00PM - 9:00pm",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
