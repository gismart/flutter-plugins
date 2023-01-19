#import <AVFoundation/AVFoundation.h>

@interface Asset : NSObject

/// The AVURLAsset corresponding to this Asset.
@property AVURLAsset* urlAsset;
/// The name of the stream.
@property NSString* name;
 
- (instancetype)initWithURLAsset:(AVURLAsset *)urlAsset
                          name:(NSString *)name;
- (bool)isEqualToAsset:(Asset *)asset;

@end

typedef enum {
    /// The asset is not downloaded at all.
    AssetNotDownloaded,
    /// The asset has a download in progress.
    AssetDownloading,
    /// The asset is downloaded and saved on disk.
    AssetDownloaded
} AssetDownloadState;
