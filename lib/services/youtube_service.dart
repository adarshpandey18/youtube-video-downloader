import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';
import 'dart:io';

class YoutubeService {
  Future<void> downloadVideo(String url, BuildContext context) async {
    final yt = YoutubeExplode();
    final id = VideoId(url);
    final video = await yt.videos.get(id);

    var manifest = await yt.videos.streamsClient.getManifest(id);
    var streamInfo = manifest.muxed.withHighestBitrate();

    var directory = await getDownloadsDirectory();
    var filePath = '${directory?.path}/${video.id}.mp4';
    var file = File(filePath);
    var output = file.openWrite();

    var stream = yt.videos.streamsClient.get(streamInfo);
    await stream.pipe(output);

    await output.flush();
    await output.close();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Video Downloaded: ${file.path}')),
    );
  }

  Future<void> downloadPlaylist(String url, BuildContext context) async {
    final yt = YoutubeExplode();
    final id = PlaylistId(url);
    final playlist = await yt.playlists.get(id);
    final videos = yt.playlists.getVideos(id);

    await for (var video in videos) {
      var manifest = await yt.videos.streamsClient.getManifest(video.id);
      var streamInfo = manifest.muxed.withHighestBitrate();

      var directory = await getDownloadsDirectory();
      var filePath = '${directory?.path}/${video.id}.mp4';
      var file = File(filePath);
      var output = file.openWrite();

      var stream = yt.videos.streamsClient.get(streamInfo);
      await stream.pipe(output);

      await output.flush();
      await output.close();

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Video Downloaded: ${file.path}')),
      );
    }
  }
}
