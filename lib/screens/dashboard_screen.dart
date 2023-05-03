import 'dart:io';
import 'package:flutter/material.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:audioplayers/audioplayers.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final _audioQuery = OnAudioQuery();
  AudioPlayer _audioPlayer = AudioPlayer();

  Future<void> _playSong() async {
    String path = "music/awesome.mp3"; // path to the song file
    // if (await Permission.storage.request().isGranted) {
    //   if (await File(path).exists()) {
    //     await _audioPlayer.play(path, isLocal: true);
    //   }
    // }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Kahuna mp3 player"), actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ]),
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/bg.png"), fit: BoxFit.cover)),
            child: FutureBuilder<List<SongModel>>(
                future: _audioQuery.querySongs(
                    sortType: null,
                    orderType: OrderType.ASC_OR_SMALLER,
                    uriType: UriType.EXTERNAL,
                    ignoreCase: true),
                builder: (context, item) {
                  if (item.data == null) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (item.data!.isEmpty) {
                    return const Center(
                      child: Text(
                        "No music found",
                        style: TextStyle(color: Colors.white),
                      ),
                    );
                  }
                  return ListView.builder(
                    itemBuilder: (context, index) => ListTile(
                      leading: const Icon(
                        Icons.music_note,
                      ),
                      title: Text(
                        item.data![index].displayNameWOExt,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      subtitle: Text(
                        "${item.data![index].artist}",
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      trailing:
                          const Icon(Icons.more_horiz, color: Colors.white),
                      onTap: () async {
                        if (item.data![index].displayName == "awesome.mp3") {
                          await _playSong();
                        }
                      },
                    ),
                    itemCount: item.data!.length,
                  );
                })),
      ),
    );
  }
}
