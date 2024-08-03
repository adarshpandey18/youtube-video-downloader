import 'package:flutter/material.dart';
import 'package:youtube_video_downloader/services/youtube_service.dart';
import 'package:youtube_video_downloader/view/widgets/custom_button.dart';
import 'package:youtube_video_downloader/view/widgets/search_text_field.dart';

class VideoDownload extends StatefulWidget {
  const VideoDownload({super.key});

  @override
  State<VideoDownload> createState() => _VideoDownloadState();
}

class _VideoDownloadState extends State<VideoDownload> {
  final TextEditingController _videoLink = TextEditingController();
  late YoutubeService youtubeService;
  @override
  void initState() {
    youtubeService = YoutubeService();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('V I D E O   D O W N L O A D'),
        centerTitle: true,
        backgroundColor: Colors.redAccent.shade700,
        foregroundColor: Colors.white,
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Textfield to enter link
            SearchTextField(videoLink: _videoLink),

            // Spacing between text field and button
            const SizedBox(
              height: 20,
            ),

            // download button
            CustomButton(
              text: 'Download',
              function: () => youtubeService.downloadVideo(
                _videoLink.toString().trim(),
                context,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
