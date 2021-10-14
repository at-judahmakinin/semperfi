import 'package:flutter/material.dart';
import 'package:semperfi/ui/home/widgets/activities_widget.dart';
import 'package:semperfi/ui/home/widgets/activity_widget.dart';
import 'package:semperfi/ui/home/widgets/animated_percentage_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _buildTitle(),
          _buildAirPollutionContent(),
          _buildActivitiesWidget(),
        ],
      )),
    );
  }

  Widget _buildTitle() => const Text("Wroclow", textAlign: TextAlign.center);

  Widget _buildAirPollutionContent() => Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            AnimatedPercentageWidget(
              fromValue: 0,
              toValue: 410,
            ),
            Text("norm"),
          ],
        ),
      );
}

  
Widget _buildActivitiesWidget() => const Padding(
    padding: EdgeInsets.only(bottom: 16),
      child: ActivitiesWidget(
        activities: {
          ActivityType.walking: ActivityQuality.good,
          ActivityType.running: ActivityQuality.bad,
          ActivityType.biking: ActivityQuality.bad,
        },
      ),
    );