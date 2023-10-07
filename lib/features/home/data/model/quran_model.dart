import 'package:equatable/equatable.dart';

class QuranModel extends Equatable {
  final AudioFile audioFile;

  const QuranModel({
    required this.audioFile,
  });

  @override
  List<Object> get props => [
        audioFile,
      ];

  factory QuranModel.fromJson(Map<String, dynamic> json) => QuranModel(
        audioFile:
            AudioFile.fromJson(json['audio_file'] as Map<String, dynamic>),
      );
}

class AudioFile extends Equatable {
  final int id;
  final int chapterId;
  final double fileSize;
  final String format;
  final String audioUrl;

  const AudioFile({
    required this.id,
    required this.chapterId,
    required this.fileSize,
    required this.format,
    required this.audioUrl,
  });

  @override
  List<Object> get props {
    return [
      id,
      chapterId,
      fileSize,
      format,
      audioUrl,
    ];
  }

  factory AudioFile.fromJson(Map<String, dynamic> json) => AudioFile(
        id: json['id'],
        chapterId: json['chapter_id'],
        fileSize: json['file_size'],
        format: json['format'],
        audioUrl: json['audio_url'],
      );
}
