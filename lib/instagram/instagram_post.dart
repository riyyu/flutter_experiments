import 'package:flutter/material.dart';

class InstagramPost extends StatefulWidget {
  const InstagramPost({Key? key}) : super(key: key);

  @override
  _InstagramPostState createState() => _InstagramPostState();
}

class _InstagramPostState extends State<InstagramPost> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    bool _showLike = false;

    void _doubleTapLike() {
      print(_showLike);
      print('double tapped');
      setState(() {
        _showLike = false;
      });
      setState(() {
        _showLike = true;
      });
      print(_showLike);
      Future.delayed(Duration(seconds: 1), () {
        print('end');
        setState(() {
          _showLike = false;
        });
      });
    }

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(),
              SizedBox(
                width: 10,
              ),
              Text('Name'),
              Expanded(child: Container()),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert_outlined,
                ),
              )
            ],
          ),
        ),
        GestureDetector(
          onDoubleTap: _doubleTapLike,
          child: Container(
            width: screenSize.width,
            height: screenSize.width,
            child: Stack(
              children: [
                Placeholder(),
                Visibility(
                  visible: _showLike,
                  child: Align(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.favorite,
                      size: 80,
                      color: Colors.grey[400],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Row(
          children: [
            IconButton(
              onPressed: _doubleTapLike,
              icon: Icon(
                Icons.favorite_border,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.mode_comment_outlined,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.send_outlined,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
