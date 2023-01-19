#import "Asset.h"

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@interface AssetPersistenceManager : NSObject<AVAssetDownloadDelegate>
+ (AssetPersistenceManager *)sharedManager;

- (void)restorePersistenceManager;
- (void)downloadStream:(Asset *)asset;
- (Asset *)assetForStream:(NSString *)name;
- (Asset *)localAssetForStream:(NSString *)name;
- (AssetDownloadState)downloadState:(Asset *)asset;
- (void)deleteAsset:(Asset *)asset;
- (void)cancelDownload:(Asset *)asset;
@end
