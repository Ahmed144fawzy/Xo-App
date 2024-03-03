import 'package:flutter/material.dart';
import 'package:xo_pro/board_btn.dart';

class XoGame extends StatefulWidget {
  XoGame({super.key});

  @override
  State<XoGame> createState() => _XoGameState();
}

class _XoGameState extends State<XoGame> {
  int score1 = 0;

  int score2 = 0;

  List<String> boardState = [
    "X",
    "",
    "",
    "",
    "",
    "",
    "",
    "O",
    "",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Xo Game",
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "player1",
                      style: TextStyle(fontSize: 26),
                    ),
                    Text(
                      "$score1",
                      style: TextStyle(fontSize: 22),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "player1",
                      style: TextStyle(fontSize: 26),
                    ),
                    Text(
                      "$score2",
                      style: TextStyle(fontSize: 22),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BoardBtn(
                  label: boardState[0],
                  onClick: onBoardClick,
                  index: 0,
                ),
                BoardBtn(
                  label: boardState[1],
                  onClick: onBoardClick,
                  index: 1,
                ),
                BoardBtn(
                  label: boardState[2],
                  onClick: onBoardClick,
                  index: 2,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BoardBtn(
                  label: boardState[3],
                  onClick: onBoardClick,
                  index: 3,
                ),
                BoardBtn(
                  label: boardState[4],
                  onClick: onBoardClick,
                  index: 4,
                ),
                BoardBtn(
                  label: boardState[5],
                  onClick: onBoardClick,
                  index: 5,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BoardBtn(
                  label: boardState[6],
                  onClick: onBoardClick,
                  index: 6,
                ),
                BoardBtn(
                  label: boardState[7],
                  onClick: onBoardClick,
                  index: 7,
                ),
                BoardBtn(
                  label: boardState[8],
                  onClick: onBoardClick,
                  index: 8,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  onBoardClick(index) {
    boardState[index] = "X";
    setState((){});
  }
}
