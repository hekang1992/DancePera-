//
//  DisassemblerLinkageTapLocation.h
//  TapPera
//
//  Created by apple on 2024/1/15.
//

#import <Foundation/Foundation.h>
#import "OakumCashawLocationModel.h"

NS_ASSUME_NONNULL_BEGIN
typedef void(^TapJuJueLocationBlock)(void);
typedef void(^TapLocationBlock)(OakumCashawLocationModel *location);
@interface DisassemblerLinkageTapLocation : NSObject
+ (instancetype)sharedManager;
- (void)vacateViableLocation;
@property (nonatomic,assign) BOOL isLocationUpdated;
@property (nonatomic,strong) OakumCashawLocationModel *model;
@property (nonatomic,strong) TapLocationBlock block;
@property (nonatomic,strong) TapJuJueLocationBlock block1;
@end

NS_ASSUME_NONNULL_END
