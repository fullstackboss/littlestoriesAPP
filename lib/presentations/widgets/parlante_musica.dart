import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:littlestories/configs/icons.dart';

class ReproduceAudio extends StatefulWidget {
  final String pistaMusica;
  const ReproduceAudio({Key? key, required this.pistaMusica}) : super(key: key);

  @override
  State<ReproduceAudio> createState() => _ReproduceAudioState();
}

class _ReproduceAudioState extends State<ReproduceAudio> {
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
      AssetSource('audio/${widget.pistaMusica}'),
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
    return IconButton.filled(
      onPressed: _togglePlayer,
      icon: _isPlaying
          ? const Icon(IcoStrIcons.conSonido)
          : const Icon(IcoStrIcons.sinSonido),
    );
  }
}
