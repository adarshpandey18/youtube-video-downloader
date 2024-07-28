import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:youtube_video_downloader/view/screens/playlist_download.dart';
import 'package:youtube_video_downloader/view/screens/video_download.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _widgets = [
    const VideoDownload(),
    const PlaylistDownload(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.redAccent.shade700,
        backgroundColor: const Color.fromRGBO(33, 33, 33, 1),
        index: _currentIndex,
        items: const [
          Icon(
            Icons.videocam_rounded,
            size: 30,
          ),
          Icon(
            Icons.video_collection_rounded,
            size: 30,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: _widgets[_currentIndex],
    );
  }
}
