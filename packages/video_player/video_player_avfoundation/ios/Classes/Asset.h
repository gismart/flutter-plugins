#import <AVFoundation/AVFoundation.h>

@interface Asset : NSObject

/// The AVURLAsset corresponding to this Asset.
@property AVURLAsset* urlAsset;
/// The unique identifier representing the Asset.
@property NSString* uniqueId;
 
- (instancetype)initWithURLAsset:(AVURLAsset *)urlAsset;

@end

typedef NS_ENUM(NSInteger, AssetDownloadState) {
    /// The asset is not downloaded at all.
    AssetNotDownloaded,
    /// The asset has a download in progress.
    AssetDownloading,
    /// The asset is downloaded and saved on disk.
    AssetDownloaded,
};
