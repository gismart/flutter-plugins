// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
// Autogenerated from Pigeon (v2.0.4), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, prefer_null_aware_operators, omit_local_variable_types, unused_shown_name
// @dart = 2.12
import 'dart:async';
import 'dart:typed_data' show Uint8List, Int32List, Int64List, Float64List;

import 'package:flutter/foundation.dart' show WriteBuffer, ReadBuffer;
import 'package:flutter/services.dart';

class TextureMessage {
  TextureMessage({
    required this.textureId,
  });

  int textureId;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['textureId'] = textureId;
    return pigeonMap;
  }

  static TextureMessage decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return TextureMessage(
      textureId: pigeonMap['textureId']! as int,
    );
  }
}

class LoopingMessage {
  LoopingMessage({
    required this.textureId,
    required this.isLooping,
  });

  int textureId;
  bool isLooping;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['textureId'] = textureId;
    pigeonMap['isLooping'] = isLooping;
    return pigeonMap;
  }

  static LoopingMessage decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return LoopingMessage(
      textureId: pigeonMap['textureId']! as int,
      isLooping: pigeonMap['isLooping']! as bool,
    );
  }
}

class VolumeMessage {
  VolumeMessage({
    required this.textureId,
    required this.volume,
  });

  int textureId;
  double volume;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['textureId'] = textureId;
    pigeonMap['volume'] = volume;
    return pigeonMap;
  }

  static VolumeMessage decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return VolumeMessage(
      textureId: pigeonMap['textureId']! as int,
      volume: pigeonMap['volume']! as double,
    );
  }
}

class AudioTrackMessage {
  AudioTrackMessage({
    required this.textureId,
    this.audioTrackNames,
    this.index,
  });

  int textureId;
  List<String?>? audioTrackNames;
  int? index;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['textureId'] = textureId;
    pigeonMap['audioTrackNames'] = audioTrackNames;
    pigeonMap['index'] = index;
    return pigeonMap;
  }

  static AudioTrackMessage decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return AudioTrackMessage(
      textureId: pigeonMap['textureId']! as int,
      audioTrackNames: (pigeonMap['audioTrackNames'] as List<Object?>?)?.cast<String?>(),
      index: pigeonMap['index'] as int?,
    );
  }
}

class PlaybackSpeedMessage {
  PlaybackSpeedMessage({
    required this.textureId,
    required this.speed,
  });

  int textureId;
  double speed;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['textureId'] = textureId;
    pigeonMap['speed'] = speed;
    return pigeonMap;
  }

  static PlaybackSpeedMessage decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return PlaybackSpeedMessage(
      textureId: pigeonMap['textureId']! as int,
      speed: pigeonMap['speed']! as double,
    );
  }
}

class PositionMessage {
  PositionMessage({
    required this.textureId,
    required this.position,
  });

  int textureId;
  int position;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['textureId'] = textureId;
    pigeonMap['position'] = position;
    return pigeonMap;
  }

  static PositionMessage decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return PositionMessage(
      textureId: pigeonMap['textureId']! as int,
      position: pigeonMap['position']! as int,
    );
  }
}

class CreateMessage {
  CreateMessage({
    this.asset,
    this.uri,
    this.packageName,
    this.formatHint,
    required this.httpHeaders,
  });

  String? asset;
  String? uri;
  String? packageName;
  String? formatHint;
  Map<String?, String?> httpHeaders;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['asset'] = asset;
    pigeonMap['uri'] = uri;
    pigeonMap['packageName'] = packageName;
    pigeonMap['formatHint'] = formatHint;
    pigeonMap['httpHeaders'] = httpHeaders;
    return pigeonMap;
  }

  static CreateMessage decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return CreateMessage(
      asset: pigeonMap['asset'] as String?,
      uri: pigeonMap['uri'] as String?,
      packageName: pigeonMap['packageName'] as String?,
      formatHint: pigeonMap['formatHint'] as String?,
      httpHeaders: (pigeonMap['httpHeaders'] as Map<Object?, Object?>?)!.cast<String?, String?>(),
    );
  }
}

class MixWithOthersMessage {
  MixWithOthersMessage({
    required this.mixWithOthers,
  });

  bool mixWithOthers;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['mixWithOthers'] = mixWithOthers;
    return pigeonMap;
  }

  static MixWithOthersMessage decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return MixWithOthersMessage(
      mixWithOthers: pigeonMap['mixWithOthers']! as bool,
    );
  }
}

class _AndroidVideoPlayerApiCodec extends StandardMessageCodec {
  const _AndroidVideoPlayerApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is AudioTrackMessage) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else 
    if (value is CreateMessage) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else 
    if (value is LoopingMessage) {
      buffer.putUint8(130);
      writeValue(buffer, value.encode());
    } else 
    if (value is MixWithOthersMessage) {
      buffer.putUint8(131);
      writeValue(buffer, value.encode());
    } else 
    if (value is PlaybackSpeedMessage) {
      buffer.putUint8(132);
      writeValue(buffer, value.encode());
    } else 
    if (value is PositionMessage) {
      buffer.putUint8(133);
      writeValue(buffer, value.encode());
    } else 
    if (value is TextureMessage) {
      buffer.putUint8(134);
      writeValue(buffer, value.encode());
    } else 
    if (value is VolumeMessage) {
      buffer.putUint8(135);
      writeValue(buffer, value.encode());
    } else 
{
      super.writeValue(buffer, value);
    }
  }
  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:       
        return AudioTrackMessage.decode(readValue(buffer)!);
      
      case 129:       
        return CreateMessage.decode(readValue(buffer)!);
      
      case 130:       
        return LoopingMessage.decode(readValue(buffer)!);
      
      case 131:       
        return MixWithOthersMessage.decode(readValue(buffer)!);
      
      case 132:       
        return PlaybackSpeedMessage.decode(readValue(buffer)!);
      
      case 133:       
        return PositionMessage.decode(readValue(buffer)!);
      
      case 134:       
        return TextureMessage.decode(readValue(buffer)!);
      
      case 135:       
        return VolumeMessage.decode(readValue(buffer)!);
      
      default:      
        return super.readValueOfType(type, buffer);
      
    }
  }
}

class AndroidVideoPlayerApi {
  /// Constructor for [AndroidVideoPlayerApi].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  AndroidVideoPlayerApi({BinaryMessenger? binaryMessenger}) : _binaryMessenger = binaryMessenger;

  final BinaryMessenger? _binaryMessenger;

  static const MessageCodec<Object?> codec = _AndroidVideoPlayerApiCodec();

  Future<void> initialize() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.AndroidVideoPlayerApi.initialize', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(null) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }

  Future<TextureMessage> create(CreateMessage arg_msg) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.AndroidVideoPlayerApi.create', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_msg]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else if (replyMap['result'] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyMap['result'] as TextureMessage?)!;
    }
  }

  Future<void> dispose(TextureMessage arg_msg) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.AndroidVideoPlayerApi.dispose', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_msg]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }

  Future<void> setLooping(LoopingMessage arg_msg) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.AndroidVideoPlayerApi.setLooping', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_msg]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }

  Future<void> setVolume(VolumeMessage arg_msg) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.AndroidVideoPlayerApi.setVolume', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_msg]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }

  Future<void> setPlaybackSpeed(PlaybackSpeedMessage arg_msg) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.AndroidVideoPlayerApi.setPlaybackSpeed', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_msg]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }

  Future<AudioTrackMessage> getAvailableAudioTracksList(TextureMessage arg_msg) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.AndroidVideoPlayerApi.getAvailableAudioTracksList', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_msg]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else if (replyMap['result'] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyMap['result'] as AudioTrackMessage?)!;
    }
  }

  Future<void> setActiveAudioTrack(AudioTrackMessage arg_msg) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.AndroidVideoPlayerApi.setActiveAudioTrack', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_msg]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }

  Future<void> setActiveAudioTrackByIndex(AudioTrackMessage arg_msg) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.AndroidVideoPlayerApi.setActiveAudioTrackByIndex', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_msg]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }

  Future<void> play(TextureMessage arg_msg) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.AndroidVideoPlayerApi.play', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_msg]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }

  Future<PositionMessage> position(TextureMessage arg_msg) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.AndroidVideoPlayerApi.position', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_msg]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else if (replyMap['result'] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyMap['result'] as PositionMessage?)!;
    }
  }

  Future<void> seekTo(PositionMessage arg_msg) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.AndroidVideoPlayerApi.seekTo', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_msg]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }

  Future<void> pause(TextureMessage arg_msg) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.AndroidVideoPlayerApi.pause', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_msg]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }

  Future<void> setMixWithOthers(MixWithOthersMessage arg_msg) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.AndroidVideoPlayerApi.setMixWithOthers', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_msg]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }
}
