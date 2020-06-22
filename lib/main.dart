import 'package:blobs/blobs.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyBlob(), // Examples() for all demo
    );
  }
}

class MoodData {
  String title;
  List<Color> colours;
  int minGrowth = 7; // 2 - 9
  int edgesCount = 9; // 3 - 20
  int milliseconds = 1000;
  MoodData(this.title, this.colours, this.minGrowth, this.edgesCount, this.milliseconds);
}

class MyBlob extends StatefulWidget {
  final List<MoodData> moods = new List(7);

  MyBlob() {
    moods[0] = MoodData('Relaxing', [Color(0xFF4BC182), Color(0xFFC5FDB5)], 7, 8, 1500);
    moods[1] = MoodData('Comforting', [Color(0xFFBFFFFF), Color(0xFF7688FF)], 7, 10, 1000);
    moods[2] = MoodData('Playful', [Color(0xFF46D37F), Color(0xFF9CA3F5), Color(0xFFFC5EFE)], 5, 14, 600);
    moods[3] = MoodData('Uplifting', [Color(0xFFFF5858), Color(0xFFFDBC5F)], 6, 8, 900);
    moods[4] = MoodData('Grounding', [Color(0xFFFFF2B5), Color(0xFFFF7676)], 8, 7, 700);
    moods[5] = MoodData('Sensual', [Color(0xFFF093FB), Color(0xFFFC4E65)], 5, 12, 750);
    moods[6] = MoodData('Sleepy', [Color(0xFFF0C1FF), Color(0xFFA28DF5)], 9, 12, 900);
  }

  @override
  _MyBlobState createState() => _MyBlobState();q
}

class _MyBlobState extends State<MyBlob> {
  int moodIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    print(widget.moods[0].title);
                  },
                  child: Opacity(
                    opacity: moodIndex == 0 ? 1.0 : 0.0,
                    child: Blob.animatedRandom(
                      styles: BlobStyles(
                        fillType: BlobFillType.fill,
                        gradient: LinearGradient(
                          begin: Alignment(0.0, -1.0),
                          end: Alignment(0.0, 1.0),
                          colors: widget.moods[0].colours,
                        ).createShader(
                          Rect.fromLTRB(0, 0, 350, 350),
                        ),
                      ),
                      minGrowth: widget.moods[0].minGrowth,
                      edgesCount: widget.moods[0].edgesCount,
                      duration: Duration(milliseconds: widget.moods[0].milliseconds),
                      size: 350,
                      loop: true,
                      child: Center(
                        child: Text(
                          widget.moods[0].title,
                          style: TextStyle(color: Colors.white, fontFamily: 'HelveticaNeue', fontSize: 22),
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print(widget.moods[1].title);
                  },
                  child: Opacity(
                    opacity: moodIndex == 1 ? 1.0 : 0.0,
                    child: Blob.animatedRandom(
                      styles: BlobStyles(
                        fillType: BlobFillType.fill,
                        gradient: LinearGradient(
                          begin: Alignment(0.0, -1.0),
                          end: Alignment(0.0, 1.0),
                          colors: widget.moods[1].colours,
                        ).createShader(
                          Rect.fromLTRB(0, 0, 350, 350),
                        ),
                      ),
                      minGrowth: widget.moods[1].minGrowth,
                      edgesCount: widget.moods[1].edgesCount,
                      duration: Duration(milliseconds: widget.moods[1].milliseconds),
                      size: 350,
                      loop: true,
                      child: Center(
                        child: Text(
                          widget.moods[1].title,
                          style: TextStyle(color: Colors.white, fontFamily: 'HelveticaNeue', fontSize: 22),
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print(widget.moods[2].title);
                  },
                  child: Opacity(
                    opacity: moodIndex == 2 ? 1.0 : 0.0,
                    child: Blob.animatedRandom(
                      styles: BlobStyles(
                        fillType: BlobFillType.fill,
                        gradient: LinearGradient(
                          begin: Alignment(0.0, -1.0),
                          end: Alignment(0.0, 1.0),
                          colors: widget.moods[2].colours,
                        ).createShader(
                          Rect.fromLTRB(0, 0, 350, 350),
                        ),
                      ),
                      minGrowth: widget.moods[2].minGrowth,
                      edgesCount: widget.moods[2].edgesCount,
                      duration: Duration(milliseconds: widget.moods[2].milliseconds),
                      size: 350,
                      loop: true,
                      child: Center(
                        child: Text(
                          widget.moods[2].title,
                          style: TextStyle(color: Colors.white, fontFamily: 'HelveticaNeue', fontSize: 22),
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print(widget.moods[3].title);
                  },
                  child: Opacity(
                    opacity: moodIndex == 3 ? 1.0 : 0.0,
                    child: Blob.animatedRandom(
                      styles: BlobStyles(
                        fillType: BlobFillType.fill,
                        gradient: LinearGradient(
                          begin: Alignment(0.0, -1.0),
                          end: Alignment(0.0, 1.0),
                          colors: widget.moods[3].colours,
                        ).createShader(
                          Rect.fromLTRB(0, 0, 350, 350),
                        ),
                      ),
                      minGrowth: widget.moods[3].minGrowth,
                      edgesCount: widget.moods[3].edgesCount,
                      duration: Duration(milliseconds: widget.moods[3].milliseconds),
                      size: 350,
                      loop: true,
                      child: Center(
                        child: Text(
                          widget.moods[3].title,
                          style: TextStyle(color: Colors.white, fontFamily: 'HelveticaNeue', fontSize: 22),
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print(widget.moods[4].title);
                  },
                  child: Opacity(
                    opacity: moodIndex == 4 ? 1.0 : 0.0,
                    child: Blob.animatedRandom(
                      styles: BlobStyles(
                        fillType: BlobFillType.fill,
                        gradient: LinearGradient(
                          begin: Alignment(0.0, -1.0),
                          end: Alignment(0.0, 1.0),
                          colors: widget.moods[4].colours,
                        ).createShader(
                          Rect.fromLTRB(0, 0, 350, 350),
                        ),
                      ),
                      minGrowth: widget.moods[4].minGrowth,
                      edgesCount: widget.moods[4].edgesCount,
                      duration: Duration(milliseconds: widget.moods[4].milliseconds),
                      size: 350,
                      loop: true,
                      child: Center(
                        child: Text(
                          widget.moods[4].title,
                          style: TextStyle(color: Colors.white, fontFamily: 'HelveticaNeue', fontSize: 22),
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print(widget.moods[5].title);
                  },
                  child: Opacity(
                    opacity: moodIndex == 5 ? 1.0 : 0.0,
                    child: Blob.animatedRandom(
                      styles: BlobStyles(
                        fillType: BlobFillType.fill,
                        gradient: LinearGradient(
                          begin: Alignment(0.0, -1.0),
                          end: Alignment(0.0, 1.0),
                          colors: widget.moods[5].colours,
                        ).createShader(
                          Rect.fromLTRB(0, 0, 350, 350),
                        ),
                      ),
                      minGrowth: widget.moods[5].minGrowth,
                      edgesCount: widget.moods[5].edgesCount,
                      duration: Duration(milliseconds: widget.moods[5].milliseconds),
                      size: 350,
                      loop: true,
                      child: Center(
                        child: Text(
                          widget.moods[5].title,
                          style: TextStyle(color: Colors.white, fontFamily: 'HelveticaNeue', fontSize: 22),
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print(widget.moods[6].title);
                  },
                  child: Opacity(
                    opacity: moodIndex == 6 ? 1.0 : 0.0,
                    child: Blob.animatedRandom(
                      styles: BlobStyles(
                        fillType: BlobFillType.fill,
                        gradient: LinearGradient(
                          begin: Alignment(0.0, -1.0),
                          end: Alignment(0.0, 1.0),
                          colors: widget.moods[6].colours,
                        ).createShader(
                          Rect.fromLTRB(0, 0, 350, 350),
                        ),
                      ),
                      minGrowth: widget.moods[6].minGrowth,
                      edgesCount: widget.moods[6].edgesCount,
                      duration: Duration(milliseconds: widget.moods[6].milliseconds),
                      size: 350,
                      loop: true,
                      child: Center(
                        child: Text(
                          widget.moods[6].title,
                          style: TextStyle(color: Colors.white, fontFamily: 'HelveticaNeue', fontSize: 22),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            RaisedButton(
              child: Text('Change'),
              onPressed: () {
                if (moodIndex < widget.moods.length - 1) {
                  setState(() {
                    moodIndex++;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
