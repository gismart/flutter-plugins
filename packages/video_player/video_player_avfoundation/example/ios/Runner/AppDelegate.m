// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#include "AppDelegate.h"
#include "GeneratedPluginRegistrant.h"

#if __has_include(<video_player_avfoundation/AssetPersistenceManager.h>)
#import <video_player_avfoundation/AssetPersistenceManager.h>
#else
@import video_player_avfoundation;
#endif

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  [GeneratedPluginRegistrant registerWithRegistry:self];
  // Override point for customization after application launch.
  // Restore any running HLS downloads.
  [AssetPersistenceManager.sharedManager restorePersistenceManager];
  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

@end
