#import <AVFoundation/AVFoundation.h>

@interface Asset : NSObject

/// The AVURLAsset corresponding to this Asset.
@property AVURLAsset* urlAsset;
/// The name of the stream presented to the user in System Settings.
@property NSString* name;
/// The unique identifier representing the Asset.
@property NSString* uniqueId;
 
- (instancetype)initWithURLAsset:(AVURLAsset *)urlAsset
                            name:(NSString *)name;
- (bool)isEqualToAsset:(Asset *)asset;

@end

typedef NS_ENUM(NSInteger, AssetDownloadState) {
    /// The asset is not downloaded at all.
    AssetNotDownloaded = 1,
    /// The asset has a download in progress.
    AssetDownloading = 3,
    /// The asset is downloaded and saved on disk.
    AssetDownloaded = 5,
};
