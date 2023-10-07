import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_challenge/features/home/presentation/model_view/cubit/home_cubit.dart';

class PlayItem extends StatefulWidget {
  const PlayItem({
    super.key,
  });

  @override
  State<PlayItem> createState() => _PlayItemState();
}

class _PlayItemState extends State<PlayItem> {
  bool isPlaying = false;

  final audioPlayer = AudioPlayer();

  Future<void> playAudioFromUrl(String url) async {
    await audioPlayer.play(UrlSource(url));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is HomePlaying) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: isPlaying
                        ? () {
                            setState(() {
                              isPlaying = !isPlaying;
                              audioPlayer.pause();
                            });
                          }
                        : () {
                            setState(() {
                              isPlaying = !isPlaying;
                              playAudioFromUrl(state.quran.audioFile.audioUrl);
                            });
                          },
                    icon: Icon(
                      isPlaying
                          ? Icons.pause_circle_outline_outlined
                          : Icons.play_circle_outline_outlined,
                      color: Colors.deepPurpleAccent,
                    )),
                const Text('Play This'),
              ],
            ),
          );
        } else if (state is HomeFailure) {
          return Center(
            child: Text(state.errMessage),
          );
        } else {
          return Row(
            children: [
              IconButton(
                icon: Icon(
                  isPlaying
                      ? Icons.pause_circle_outline_outlined
                      : Icons.play_circle_outline_outlined,
                  color: Colors.red,
                ),
                onPressed: isPlaying
                    ? () {
                        setState(() {
                          isPlaying = !isPlaying;
                        });
                      }
                    : () {
                        setState(() {
                          isPlaying = !isPlaying;
                        });
                      },
              ),
              const Text('There is an error. Please try again later'),
            ],
          );
        }
      },
    );
  }
}
