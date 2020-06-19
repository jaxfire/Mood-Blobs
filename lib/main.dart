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

class MyBlob extends StatefulWidget {
  final List<MoodData> moods = new List(7);
  final List<Blob> blobs = new List(7);

  MyBlob() {
    moods[0] = MoodData('Relaxing', [Color(0xFF4BC182), Color(0xFFC5FDB5)], 9, 9, 800);
//    moods[1] = MoodData('Comforting', [Color(0xFFBFFFFF), Color(0xFF7688FF)], 8, 9, 100);
//    moods[2] = MoodData('Playful', [Color(0xFF46D37F), Color(0xFF9CA3F5), Color(0xFFFC5EFE)], 7, 9, 800);
//    moods[3] = MoodData('Uplifting', [Color(0xFFFF5858), Color(0xFFFDBC5F)], 6, 9, 100);
//    moods[4] = MoodData('Grounding', [Color(0xFFFFF2B5), Color(0xFFFF7676)], 5, 9, 800);
//    moods[5] = MoodData('Sensual', [Color(0xFFF093FB), Color(0xFFFC4E65)], 4, 9, 100);
//    moods[6] = MoodData('Sleepy', [Color(0xFFF0C1FF), Color(0xFFA28DF5)], 3, 9, 800);

    for (int i = 0; i < moods.length;) {
      blobs[i] = Blob.animatedRandom(
        styles: BlobStyles(
          fillType: BlobFillType.fill,
          gradient: LinearGradient(
            begin: Alignment(0.0, -1.0),
            end: Alignment(0.0, 1.0),
            colors: moods[i].colours,
          ).createShader(
            Rect.fromLTRB(0, 0, 350, 350),
          ),
        ),
        minGrowth: moods[i].minGrowth,
        edgesCount: moods[i].edgesCount,
        duration: Duration(milliseconds: moods[i].milliseconds),
        size: 350,
        loop: true,
        child: Center(
          child: Text(
            moods[i].title,
            style: TextStyle(color: Colors.white, fontFamily: 'HelveticaNeue', fontSize: 22),
          ),
        ),
      );
    }
  }

  @override
  _MyBlobState createState() => _MyBlobState();
}

class _MyBlobState extends State<MyBlob> {
  int moodIndex = 0;

//  String moodTitle;
//  List<Color> moodColours;
//  int minGrowth = 7;
//  int edgesCount = 9;
//  int milliseconds = 1000;

  @override
  void initState() {
    super.initState();
//    moodTitle = widget.moods[moodIndex].title;
//    moodColours = widget.moods[moodIndex].colours;
//    minGrowth = widget.moods[moodIndex].minGrowth;
//    edgesCount = widget.moods[moodIndex].edgesCount;
//    milliseconds = widget.moods[moodIndex].milliseconds;
  }

  @override
  Widget build(BuildContext context) {
    BlobController blobCtrl = BlobController();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              child: widget.blobs[moodIndex],
            ),
            FlatButton(
              child: Text('Change'),
              onPressed: () {
                if (moodIndex < widget.moods.length - 1) {
                  setState(() {
                    moodIndex++;
//                    moodTitle = widget.moods[moodIndex].title;
//                    moodColours = widget.moods[moodIndex].colours;
//                    minGrowth = widget.moods[moodIndex].minGrowth;
//                    edgesCount = widget.moods[moodIndex].edgesCount;
//                    milliseconds = widget.moods[moodIndex].milliseconds;
                  });
//                  blobCtrl.change();
                }
              },
            )
          ],
        ),
      ),
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
