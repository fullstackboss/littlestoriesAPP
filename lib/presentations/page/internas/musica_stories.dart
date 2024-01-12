import 'package:flutter/material.dart';

class PageMusicStories extends StatelessWidget {
  const PageMusicStories({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('PAge');
  }
}

/* import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class PageMusicStories extends StatefulWidget {
  final String pistaMusica;
  const PageMusicStories({Key? key, required this.pistaMusica})
      : super(key: key);

  @override
  State<PageMusicStories> createState() => _PageMusicStoriesState();
}

class _PageMusicStoriesState extends State<PageMusicStories> {
  AudioPlayer? _player;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _initializeAudio();
  }

  void _initializeAudio() async {
    _player?.dispose();
    final player = AudioPlayer();

    player.onPlayerComplete.listen((event) {
      // Reproducir nuevamente al completar la reproducción
      _initializeAudio();
    });

    await player.play(
      AssetSource(widget.pistaMusica),
    );
    setState(() {
      _player = player;
      _isPlaying = true;
    });
  }

  @override
  void dispose() {
    _player?.dispose();
    super.dispose();
  }

  void _togglePlayer() {
    if (_isPlaying) {
      _player?.pause();
    } else {
      _initializeAudio();
    }

    setState(() {
      _isPlaying = !_isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            FilledButton(
              onPressed: _togglePlayer,
              child: Text(_isPlaying ? 'Pause' : 'Play'),
            ),
            Text(widget.pistaMusica),
          ],
        ),
      ),
    );
  }
}
 */