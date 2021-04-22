import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/controllers/question_controller1.dart';
import 'package:quiz_app/screens/welcome/welcome_screen.dart';
import 'package:websafe_svg/websafe_svg.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage()),
            );
          },
        ),

      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          WebsafeSvg.asset("assets/icons/bg.svg", fit: BoxFit.fill),
          Column(
            children: [
              Spacer(),
              Text(
                "Your Score",
                  style: new TextStyle(
                    backgroundColor: kGreenColor,
                    fontSize: 48.0,
                    color: Colors.blueGrey,
                  )
              ),
              Spacer(),
              Align(
                  alignment: Alignment.center,
                  child: Icon(Icons.check),
              ),
              Container(

                  child: Text(
                    "True Answers",

                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(color: kSecondaryColor),
                  )
              ),
              Spacer(),
              Text(
                "${_qnController.correctAns }",

                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: kSecondaryColor),
              ),
              Spacer(),
              Align(
                alignment: Alignment.center,
                child: Icon(Icons.close),
              ),
              Text(
                "Wrong Answers",

                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: kRedColor),
              ),
              Spacer(),

              Text(
                "${_qnController.wrongAns}",

                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: kRedColor),
              ),
              Spacer(flex: 3),
            ],
          )
        ],
      ),
    );
  }
}
