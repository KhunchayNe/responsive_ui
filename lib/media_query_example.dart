import 'package:flutter/material.dart';

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({super.key});

  Widget _buildSmallScreenLayout() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.phone_android, size: 100),
          SizedBox(height: 20),
          Text('Small Screen Layout'),
        ],
      ),
    );
  }

  Widget _buildLargeScreenLayout() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.computer, size: 100),
          SizedBox(height: 20),
          Text('Large Screen Layout'),
        ],
      ),
    );
  }

  Widget _buildPortaitLayout() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.portrait, size: 100),
          SizedBox(height: 20),
          Text('Portrait Mode'),
        ],
      ),
    );
  }

  Widget _buildLandscapeLayout() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.landscape, size: 100),
          SizedBox(height: 20),
          Text('Landscape Mode'),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final orientation = MediaQuery.of(context).orientation;
    final padding = MediaQuery.of(context).padding;
    final textScaleFactor = MediaQuery.of(context).textScaleFactor;
    final devicePixelRatio = MediaQuery.of(context).devicePixelRatio;

    return Scaffold(
        appBar: AppBar(
          title: const Text('MediaQuery Example'),
        ),
        // body: screenWidth < 600 ? _buildSmallScreenLayout() : _buildLargeScreenLayout(),
        // body: orientation == Orientation.portrait ? _buildPortaitLayout() : _buildLandscapeLayout(),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Screen Width: $screenWidth'),
              Text('Screen Height: $screenHeight'),
              Text('Orientation: $orientation'),
              Text(
                'Padding: $padding',
                style: TextStyle(fontSize: 16 * textScaleFactor),
              ),
              Text(
                'Text Scale Factor: $textScaleFactor',
                style: TextStyle(fontSize: 16 * textScaleFactor),
              ),
              Text(
                'Device Pixel Ratio: $devicePixelRatio',
                style: TextStyle(fontSize: 16 * textScaleFactor),
              ),
            ],
          ),
        ));
  }
}
