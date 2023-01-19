#import "Asset.h"

@implementation Asset
 
- (instancetype)initWithURLAsset:(AVURLAsset *)urlAsset
                          name:(NSString *)name {
    self = [super init];
    if (self) {
        _urlAsset = urlAsset;
        _name = name;
    }
    return self;
}

- (bool)isEqualToAsset:(Asset *)asset {
    return ([self.urlAsset isEqual:asset.urlAsset] && [self.name isEqualToString:asset.name]);
}
 
@end
