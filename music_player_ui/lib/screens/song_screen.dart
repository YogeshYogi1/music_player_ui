import 'package:flutter/material.dart';
import 'package:music_player_ui/button/neu_button.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SongScreen extends StatefulWidget {
  const SongScreen({Key? key}) : super(key: key);

  @override
  State<SongScreen> createState() => _SongScreenState();
}

class _SongScreenState extends State<SongScreen> {
  void wishcolor() {
    iswishlist = !iswishlist;
  }

  bool iswishlist = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: 60,
                    width: 60,
                    child: NeuButton(
                      child: Icon(Icons.arrow_back_ios),
                    ),
                  ),
                  Text(
                    'PLAY LIST',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 7,
                        color: Colors.grey.shade700),
                  ),
                  const SizedBox(
                    height: 60,
                    width: 60,
                    child: NeuButton(
                      child: Icon(Icons.menu),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              NeuButton(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: SizedBox(
                          height: 440,
                          child: Image.asset(
                            'lib/cover_images/blindinglights.jpg',
                          )),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Blinding Lights',
                                style: TextStyle(
                                    color: Colors.grey.shade800,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 7),
                              const Text(
                                'YOGESH G',
                                style: TextStyle(
                                  color: Colors.teal,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                wishcolor();
                              });
                            },
                            child: Icon(
                              Icons.favorite,
                              color: iswishlist ? Colors.red : Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('0.0'),
                    Icon(Icons.shuffle),
                    Icon(Icons.repeat),
                    Text('4.20'),
                  ],
                ),
              ),
              NeuButton(
                child: LinearPercentIndicator(
                  lineHeight: 10,
                  percent: 0.76,
                  progressColor: Colors.green,
                  backgroundColor: Colors.transparent,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 70,
                child: Row(
                  children: const [
                    Expanded(
                        child: NeuButton(child: Icon(Icons.skip_previous))),
                    Expanded(
                        flex: 2,
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: NeuButton(child: Icon(Icons.play_arrow)))),
                    Expanded(child: NeuButton(child: Icon(Icons.skip_next))),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
