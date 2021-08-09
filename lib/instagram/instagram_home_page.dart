import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_experiments/instagram/instagram_post.dart';

class InstagramHomePage extends StatefulWidget {
  const InstagramHomePage({Key? key}) : super(key: key);

  @override
  _InstagramHomePageState createState() => _InstagramHomePageState();
}

class _InstagramHomePageState extends State<InstagramHomePage> {
  bool _showLike = false;

  Timer? t;

  void _doubleTapLike() {
    setState(() {
      _showLike = false;
    });

    Future.delayed(Duration(milliseconds: 50), () {
      setState(() {
        _showLike = true;
      });
    });

    if (t != null) {
      t!.cancel();
      t = null;
    }

    t = Timer(Duration(seconds: 1), () {
      setState(() {
        _showLike = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.network(
          'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Instagram_logo.svg/1024px-Instagram_logo.svg.png',
          height: 40,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
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
                  Text('username'),
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
            Container(
              width: screenSize.width,
              height: screenSize.width,
              child: GestureDetector(
                onTap: _doubleTapLike,
                child: Stack(
                  children: [
                    GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onDoubleTap: _doubleTapLike,
                      child: Container(
                        child: Container(
                          height: screenSize.width,
                          child: Image.network(
                            'https://cdn.wallpapersafari.com/92/45/p7rbaM.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Visibility(
                      visible: _showLike,
                      child: Align(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.favorite,
                          size: 80,
                          color: Colors.white,
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
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 14,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '96 Likes',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Halo Aku Kucing ^_^',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
