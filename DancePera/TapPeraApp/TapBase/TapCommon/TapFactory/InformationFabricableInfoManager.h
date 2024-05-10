//
//  InformationFabricableInfoManager.h
//  TapPera
//
//  Created by apple on 2024/1/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface InformationFabricableInfoManager : NSObject
+ (instancetype)sharedManager;
- (NSString *)getDeviceIPAddresses;
- (NSString *)getIpAddressWIFI;
- (NSString *)getIpAddressCell;
- (NSString *)currentWifiSSID;
- (NSString *)getWifiBSSID;
- (int64_t)getFreeDiskSpace;
- (int64_t)getTotalDiskSpace;
- (int64_t)getTotalMemory;
- (int64_t)getActiveMemory;
@end

NS_ASSUME_NONNULL_END
