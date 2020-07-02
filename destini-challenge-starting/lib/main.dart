import 'package:destini_challenge_starting/storyData.dart';
import 'package:flutter/material.dart';

import 'story.dart';

void main() => runApp(Destini());

class Destini extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  int storyNumber = 0;
  Story story = StoryData.getStory(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/background.png'), fit: BoxFit.fill)),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    story.storyTitle,
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: FlatButton(
                  onPressed: () {
                    //Choice 1 made by user.
                    setState(() {
                      switch (storyNumber) {
                        case 0:
                          storyNumber = 2;
                          break;
                        case 1:
                          storyNumber = 2;
                          break;
                        case 2:
                          storyNumber = 5;
                          break;
                        case 3:
                          storyNumber = 0;
                          break;
                        case 4:
                          storyNumber = 0;
                          break;
                        case 5:
                          storyNumber = 0;
                          break;
                      }
                      story = StoryData.getStory(storyNumber);
                    });
                  },
                  color: Colors.red,
                  child: Text(
                    story.choice1,
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 2,
                child: Visibility(
                  visible: story.choice2 != '',
                  child: FlatButton(
                    onPressed: () {
                      //Choice 2 made by user.
                      setState(() {
                        switch (storyNumber) {
                          case 0:
                            storyNumber = 1;
                            break;
                          case 1:
                            storyNumber = 3;
                            break;
                          case 2:
                            storyNumber = 4;
                            break;
                          case 3:
                            storyNumber = 0;
                            break;
                          case 4:
                            storyNumber = 0;
                            break;
                          case 5:
                            storyNumber = 0;
                            break;
                        }
                        story = StoryData.getStory(storyNumber);
                      });
                    },
                    color: Colors.blue,
                    child: Text(
                      story.choice2,
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
