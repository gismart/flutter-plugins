// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(PigeonOptions(
  dartOut: 'lib/src/messages.g.dart',
  dartTestOut: 'test/test_api.g.dart',
  objcHeaderOut: 'ios/Classes/messages.g.h',
  objcSourceOut: 'ios/Classes/messages.g.m',
  objcOptions: ObjcOptions(
    prefix: 'FLT',
  ),
  copyrightHeader: 'pigeons/copyright.txt',
))
class TextureMessage {
  TextureMessage(this.textureId);
  int textureId;
}

class LoopingMessage {
  LoopingMessage(this.textureId, this.isLooping);
  int textureId;
  bool isLooping;
}

class VolumeMessage {
  VolumeMessage(this.textureId, this.volume);
  int textureId;
  double volume;
}

class AudioTrackMessage {
  AudioTrackMessage(this.textureId, this.audioTrackNames, this.index);
  int textureId;
  List<String?>? audioTrackNames;
  int? index;
}

class PlaybackSpeedMessage {
  PlaybackSpeedMessage(this.textureId, this.speed);
  int textureId;
  double speed;
}

class PositionMessage {
  PositionMessage(this.textureId, this.position);
  int textureId;
  int position;
}

class CreateMessage {
  CreateMessage({required this.httpHeaders});
  String? asset;
  String? uri;
  String? packageName;
  String? formatHint;
  String? name;
  String? audioTrackName;
  Map<String?, String?> httpHeaders;
}

class HlsStreamMessage {
  HlsStreamMessage({required this.uri, this.name, required this.httpHeaders});
  String uri;
  String? name;
  String? audioTrackName;
  Map<String?, String?> httpHeaders;
}

class IsHlsAvailableOfflineMessage {
  IsHlsAvailableOfflineMessage(this.isAvailableOffline);
  int isAvailableOffline;
}

class MixWithOthersMessage {
  MixWithOthersMessage(this.mixWithOthers);
  bool mixWithOthers;
}

@HostApi(dartHostTestHandler: 'TestHostVideoPlayerApi')
abstract class AVFoundationVideoPlayerApi {
  @ObjCSelector('initialize')
  void initialize();
  @ObjCSelector('create:')
  TextureMessage create(CreateMessage msg);
  @ObjCSelector('createWithHlsCachingSupport:')
  TextureMessage createWithHlsCachingSupport(CreateMessage msg);
  @ObjCSelector('dispose:')
  void dispose(TextureMessage msg);
  @ObjCSelector('setLooping:')
  void setLooping(LoopingMessage msg);
  @ObjCSelector('setVolume:')
  void setVolume(VolumeMessage msg);
  @ObjCSelector('getAvailableAudioTracksList:')
  AudioTrackMessage getAvailableAudioTracksList(TextureMessage msg);
  @ObjCSelector('setActiveAudioTrack:')
  void setActiveAudioTrack(AudioTrackMessage msg);
  @ObjCSelector('setActiveAudioTrackByIndex:')
  void setActiveAudioTrackByIndex(AudioTrackMessage msg);
  @ObjCSelector('setPlaybackSpeed:')
  void setPlaybackSpeed(PlaybackSpeedMessage msg);
  @ObjCSelector('startHlsStreamCachingIfNeeded:')
  void startHlsStreamCachingIfNeeded(HlsStreamMessage msg);
  @ObjCSelector('isHlsAvailableOffline:')
  IsHlsAvailableOfflineMessage isHlsAvailableOffline(HlsStreamMessage msg);
  @ObjCSelector('play:')
  void play(TextureMessage msg);
  @ObjCSelector('position:')
  PositionMessage position(TextureMessage msg);
  @ObjCSelector('seekTo:')
  void seekTo(PositionMessage msg);
  @ObjCSelector('pause:')
  void pause(TextureMessage msg);
  @ObjCSelector('setMixWithOthers:')
  void setMixWithOthers(MixWithOthersMessage msg);
}
