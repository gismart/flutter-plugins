#import "Asset.h"

@implementation Asset
 
- (instancetype)initWithURLAsset:(AVURLAsset *)urlAsset {
    self = [super init];
    if (self) {
        _urlAsset = urlAsset;
        _uniqueId = urlAsset.URL.relativePath;
    }
    return self;
}

- (bool)isEqualToAsset:(Asset *)asset {
    return ([self.urlAsset isEqual:asset.urlAsset] && [self.uniqueId isEqualToString:asset.uniqueId]);
}
 
@end
