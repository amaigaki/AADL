import 'package:flutter/material.dart';
import '../utilities/historyCard.dart';

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Scaffold(
        appBar: AppBar(
          title: Text('History'),
          backgroundColor: Colors.deepPurple,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                HistoryCard(
                  date: "29/9",
                  totalrevenue: 1000,
                  cashrevenue: 100,
                  onlinerevenue: 500,
                  checkrevenue: 400,
                  numberOfConference: 1,
                ),
                HistoryCard(
                  date: "30/9",
                  totalrevenue: 1000,
                  cashrevenue: 100,
                  onlinerevenue: 500,
                  checkrevenue: 400,
                  numberOfConference: 1,
                ),
                HistoryCard(
                  date: "1/10",
                  totalrevenue: 1000,
                  cashrevenue: 100,
                  onlinerevenue: 500,
                  checkrevenue: 400,
                  numberOfConference: 1,
                ),
                HistoryCard(
                  date: "2/10",
                  totalrevenue: 1000,
                  cashrevenue: 100,
                  onlinerevenue: 500,
                  checkrevenue: 400,
                  numberOfConference: 1,
                ),
                HistoryCard(
                  date: "3/10",
                  totalrevenue: 1000,
                  cashrevenue: 100,
                  onlinerevenue: 500,
                  checkrevenue: 400,
                  numberOfConference: 1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
