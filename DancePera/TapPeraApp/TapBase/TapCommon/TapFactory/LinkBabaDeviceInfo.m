//
//  LinkBabaDeviceInfo.m
//  TapPera
//
//  Created by apple on 2024/1/19.
//

#import "LinkBabaDeviceInfo.h"

@implementation LinkBabaDeviceInfo

+ (instancetype)instance{
    static LinkBabaDeviceInfo * instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSString *)getIDFV{
    NSString *uuid = [SAMKeychain passwordForService:ice account:ount];
    NSError *error=nil;
    if(uuid == nil || [uuid isEqualToString:@""] || uuid.length == 0){
        uuid = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
        BOOL success= [SAMKeychain setPassword:uuid forService:ice account:ount error:&error];
        if(success){
            TAPLog(@"获取的UUID>>>>>(%@)", uuid);
        }
        return uuid;
    }else {
        return uuid;
    }
}

+ (NSString *)isVPNConnected {
    NSDictionary * proxySettings = (__bridge NSDictionary *)CFNetworkCopySystemProxySettings();
    NSArray * keys = [proxySettings[@"__SCOPED__"] allKeys];
    for (NSString * key in keys) {
        if([key rangeOfString:@"tap"].location != NSNotFound ||
            [key rangeOfString:@"tun"].location != NSNotFound ||
            [key rangeOfString:@"ppp"].location != NSNotFound) {
            TAPLog(@">>>>>>开启了VPN<<<<<<");
            return @"1";
        }
    }
    TAPLog(@">>>>>>没有开启VPN<<<<<<");
    return @"0";
}

+ (int)multiuserTupleDespots{
    int jailbroken = 0;
    NSString *cydiaPath = @"/Applications/Cydia.app";
    NSString *aptPath = @"/private/var/lib/apt/";
    if([[NSFileManager defaultManager] fileExistsAtPath:cydiaPath]) {
        jailbroken = 1;
    }
    if([[NSFileManager defaultManager] fileExistsAtPath:aptPath]) {
        jailbroken = 1;
    }
  return jailbroken;
}

+ (NSString *)isSimuLator{
    if(TARGET_IPHONE_SIMULATOR == 1 && TARGET_OS_IPHONE == 1) {
        //isSimuLator
        return @"1";
    }else{
        return @"0";
    }
}

+ (BOOL)isIPhoneXStyle {
    BOOL iPhoneXStyle = NO;
    if (@available(iOS 11.0, *)) {
        UIWindow *mainWindow = UIApplication.sharedApplication.windows.firstObject;
        if (mainWindow.safeAreaInsets.bottom > 0) {
            iPhoneXStyle = YES;
        }
    }
    return iPhoneXStyle;
}

+ (int)isJailbroken {
    int jailbroken = 0;
    NSString *cydiaPath = @"/Applications/Cydia.app";
    NSString *aptPath = @"/private/var/lib/apt/";
    if([[NSFileManager defaultManager] fileExistsAtPath:cydiaPath]) {
        jailbroken = 1;
    }
    if([[NSFileManager defaultManager] fileExistsAtPath:aptPath]) {
        jailbroken = 1;
    }
  return jailbroken;
}

+ (NSString *)xmlRecordTapiphone{
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString * phoneType = [NSString stringWithCString: systemInfo.machine encoding:NSASCIIStringEncoding];
    if([phoneType isEqualToString:@"iPhone3,1"])
        return @"iPhone 4";
    if([phoneType isEqualToString:@"iPhone3,2"])
        return @"iPhone 4";
    if([phoneType isEqualToString:@"iPhone3,3"])
        return @"iPhone 4";
    if([phoneType isEqualToString:@"iPhone4,1"])
        return @"iPhone 4S";
    if([phoneType isEqualToString:@"iPhone5,1"])
        return @"iPhone 5";
    if([phoneType isEqualToString:@"iPhone5,2"])
        return @"iPhone 5";
    if([phoneType isEqualToString:@"iPhone5,3"])
        return @"iPhone 5c";
    if([phoneType isEqualToString:@"iPhone5,4"])  
        return @"iPhone 5c";
    if([phoneType isEqualToString:@"iPhone6,1"])  
        return @"iPhone 5s";
    if([phoneType isEqualToString:@"iPhone6,2"])  
        return @"iPhone 5s";
    if([phoneType isEqualToString:@"iPhone7,1"])  
        return @"iPhone 6 Plus";
    if([phoneType isEqualToString:@"iPhone7,2"])  
        return @"iPhone 6";
    if([phoneType isEqualToString:@"iPhone8,1"])  
        return @"iPhone 6s";
    if([phoneType isEqualToString:@"iPhone8,2"])  
        return @"iPhone 6s Plus";
    if([phoneType isEqualToString:@"iPhone8,4"])  
        return @"iPhone SE";
    if([phoneType isEqualToString:@"iPhone9,1"])  
        return @"iPhone 7";
    if([phoneType isEqualToString:@"iPhone9,2"])  
        return @"iPhone 7 Plus";
    if([phoneType isEqualToString:@"iPhone9,4"])  
        return @"iPhone 7 Plus";
    if([phoneType isEqualToString:@"iPhone10,1"])
        return @"iPhone 8";
    if([phoneType isEqualToString:@"iPhone10,4"]) 
        return @"iPhone 8";
    if([phoneType isEqualToString:@"iPhone10,2"]) 
        return @"iPhone 8 Plus";
    if([phoneType isEqualToString:@"iPhone10,5"]) 
        return @"iPhone 8 Plus";
    if([phoneType isEqualToString:@"iPhone10,3"]) 
        return @"iPhone X";
    if([phoneType isEqualToString:@"iPhone10,6"]) 
        return @"iPhone X";
    if([phoneType isEqualToString:@"iPhone11,8"]) 
        return @"iPhone XR";
    if([phoneType isEqualToString:@"iPhone11,2"]) 
        return @"iPhone XS";
    if([phoneType isEqualToString:@"iPhone11,4"])
        return @"iPhone XS Max";
    if([phoneType isEqualToString:@"iPhone11,6"]) 
        return @"iPhone XS Max";
    if([phoneType isEqualToString:@"iPhone12,1"])
        return @"iPhone 11";
    if([phoneType isEqualToString:@"iPhone12,3"])
        return @"iPhone 11 Pro";
    if([phoneType isEqualToString:@"iPhone12,5"])
        return @"iPhone 11 Pro Max";
    if([phoneType isEqualToString:@"iPhone12,8"])
        return @"iPhone SE2";
    if([phoneType isEqualToString:@"iPhone13,1"])    
        return @"iPhone 12 mini";
    if([phoneType isEqualToString:@"iPhone13,2"])    
        return @"iPhone 12";
    if([phoneType isEqualToString:@"iPhone13,3"])    
        return @"iPhone 12 Pro";
    if([phoneType isEqualToString:@"iPhone13,4"])    
        return @"iPhone 12 Pro Max";
    
    if([phoneType isEqualToString:@"iPhone14,4"])    
        return @"iPhone 13 mini";
    if([phoneType isEqualToString:@"iPhone14,5"])    
        return @"iPhone 13";
    if([phoneType isEqualToString:@"iPhone14,2"])    
        return @"iPhone 13 Pro";
    if([phoneType isEqualToString:@"iPhone14,3"])    
        return @"iPhone 13 Pro Max";
    if([phoneType isEqualToString:@"iPhone14,6"])    
        return @"iPhone SE"; //(2nd generation)
    if([phoneType isEqualToString:@"iPhone14,7"])  
        return @"iPhone 14";
    if([phoneType isEqualToString:@"iPhone14,8"])   
        return @"iPhone 14 Plus";
    if([phoneType isEqualToString:@"iPhone15,2"])  
        return @"iPhone 14 Pro";
    if([phoneType isEqualToString:@"iPhone15,3"])  
        return @"iPhone 14 Pro Max";
    if([phoneType isEqualToString:@"iPhone15,4"])  
        return @"iPhone 15";
    if([phoneType isEqualToString:@"iPhone15,5"])  
        return @"iPhone 15 Plus";
    if([phoneType isEqualToString:@"iPhone16,1"])  
        return @"iPhone 15 Pro";
    if([phoneType isEqualToString:@"iPhone16,2"])  
        return @"iPhone 15 Pro Max";

    //iPad
    if([phoneType isEqualToString:@"iPad3,4"])   
        return @"iPad 4 (WiFi)";
    if([phoneType isEqualToString:@"iPad3,5"])  
        return @"iPad 4";
    if([phoneType isEqualToString:@"iPad3,6"])    
        return @"iPad 4 (GSM+CDMA)";
    if([phoneType isEqualToString:@"iPad4,1"])   
        return @"iPad Air (WiFi)";
    if([phoneType isEqualToString:@"iPad4,2"])   
        return @"iPad Air (Cellular)";
    if([phoneType isEqualToString:@"iPad4,3"])  
        return @"iPad Air";
    if([phoneType isEqualToString:@"iPad4,4"])    
        return @"iPad Mini 2 (WiFi)";
    if([phoneType isEqualToString:@"iPad4,5"])   
        return @"iPad Mini 2 (Cellular)";
    if([phoneType isEqualToString:@"iPad4,6"])  
        return @"iPad Mini 2";
    if([phoneType isEqualToString:@"iPad4,7"])   
        return @"iPad Mini 3";
    if([phoneType isEqualToString:@"iPad4,8"])   
        return @"iPad Mini 3";
    if([phoneType isEqualToString:@"iPad4,9"]) 
        return @"iPad Mini 3";
    if([phoneType isEqualToString:@"iPad5,1"])  
        return @"iPad Mini 4 (WiFi)";
    if([phoneType isEqualToString:@"iPad5,2"])  
        return @"iPad Mini 4 (LTE)";
    if([phoneType isEqualToString:@"iPad5,3"]) 
        return @"iPad Air 2";
    if([phoneType isEqualToString:@"iPad5,4"])
        return @"iPad Air 2";
    if([phoneType isEqualToString:@"iPad6,3"])    
        return @"iPad Pro 9.7";
    if([phoneType isEqualToString:@"iPad6,4"])   
        return @"iPad Pro 9.7";
    if([phoneType isEqualToString:@"iPad6,7"])  
        return @"iPad Pro 12.9";
    if([phoneType isEqualToString:@"iPad6,8"])   
        return @"iPad Pro 12.9";
    if([phoneType isEqualToString:@"iPad6,11"])  
        return @"iPad 5th";
    if([phoneType isEqualToString:@"iPad6,12"])  
        return @"iPad 5th";
    if([phoneType isEqualToString:@"iPad7,1"]) 
        return @"iPad Pro 12.9 2nd";
    if([phoneType isEqualToString:@"iPad7,2"]) 
        return @"iPad Pro 12.9 2nd";
    if([phoneType isEqualToString:@"iPad7,3"])  
        return @"iPad Pro 10.5";
    if([phoneType isEqualToString:@"iPad7,4"])  
        return @"iPad Pro 10.5";
    if([phoneType isEqualToString:@"iPad7,5"])   
        return @"iPad 6th";
    if([phoneType isEqualToString:@"iPad7,6"])   
        return @"iPad 6th";
    if([phoneType isEqualToString:@"iPad8,1"])  
        return @"iPad Pro 11";
    if([phoneType isEqualToString:@"iPad8,2"])  
        return @"iPad Pro 11";
    if([phoneType isEqualToString:@"iPad8,3"]) 
        return @"iPad Pro 11";
    if([phoneType isEqualToString:@"iPad8,4"])  
        return @"iPad Pro 11";
    if([phoneType isEqualToString:@"iPad8,5"])    
        return @"iPad Pro 12.9 3rd";
    if([phoneType isEqualToString:@"iPad8,6"])  
        return @"iPad Pro 12.9 3rd";
    if([phoneType isEqualToString:@"iPad8,7"])  
        return @"iPad Pro 12.9 3rd";
    if([phoneType isEqualToString:@"iPad8,8"])  
        return @"iPad Pro 12.9 3rd";
    if([phoneType isEqualToString:@"iPad11,1"])  
        return @"iPad mini 5th";
    if([phoneType isEqualToString:@"iPad11,2"])  
        return @"iPad mini 5th";
    if([phoneType isEqualToString:@"iPad11,3"])  
        return @"iPad Air 3rd";
    if([phoneType isEqualToString:@"iPad11,4"])  
        return @"iPad Air 3rd";
    if([phoneType isEqualToString:@"iPad11,6"])   
        return @"iPad 8th";
    if([phoneType isEqualToString:@"iPad11,7"])  
        return @"iPad 8th";
    if([phoneType isEqualToString:@"iPad12,1"])   
        return @"iPad 9th";
    if([phoneType isEqualToString:@"iPad12,2"])   
        return @"iPad 9th";
    if([phoneType isEqualToString:@"iPad14,1"])   
        return @"iPad mini 6th";
    if([phoneType isEqualToString:@"iPad14,2"])   
        return @"iPad mini 6th";
    if([phoneType isEqualToString:@"i386"])    
        return @"Simulator";
    if([phoneType isEqualToString:@"x86_64"])   
        return @"Simulator";
    return phoneType;
}

+ (NSString *)fabianLiteralTapiphonechicun{
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString * phoneType = [NSString stringWithCString: systemInfo.machine encoding:NSASCIIStringEncoding];
    //  常用机型  不需要的可自行删除
    if([phoneType isEqualToString:@"iPhone5,1"]) 
        return @"4";
    if([phoneType isEqualToString:@"iPhone5,2"]) 
        return @"4";
    if([phoneType isEqualToString:@"iPhone5,3"]) return @"4";
    if([phoneType isEqualToString:@"iPhone5,4"]) return @"4";
    if([phoneType isEqualToString:@"iPhone6,1"]) return @"4";
    if([phoneType isEqualToString:@"iPhone6,2"]) return @"4";
    if([phoneType isEqualToString:@"iPhone7,1"]) return @"5.5";
    if([phoneType isEqualToString:@"iPhone7,2"]) return @"4.7";
    if([phoneType isEqualToString:@"iPhone8,1"]) return @"4.7";
    if([phoneType isEqualToString:@"iPhone8,2"]) return @"5.5";
    if([phoneType isEqualToString:@"iPhone8,4"]) return @"4";
    if([phoneType isEqualToString:@"iPhone9,1"]) return @"4.7";
    if([phoneType isEqualToString:@"iPhone9,2"]) return @"5.5";
    if([phoneType isEqualToString:@"iPhone9,4"]) return @"5.5";
    if([phoneType isEqualToString:@"iPhone10,1"]) return @"4.7";
    if([phoneType isEqualToString:@"iPhone10,4"]) return @"4.7";
    if([phoneType isEqualToString:@"iPhone10,2"]) return @"5.5";
    if([phoneType isEqualToString:@"iPhone10,5"]) return @"5.5";
    if([phoneType isEqualToString:@"iPhone10,3"]) return @"5.8";
    if([phoneType isEqualToString:@"iPhone10,6"]) return @"5.8";
    if([phoneType isEqualToString:@"iPhone11,8"]) return @"6.1";
    if([phoneType isEqualToString:@"iPhone11,2"]) return @"5.8";
    if([phoneType isEqualToString:@"iPhone11,4"]) return @"6.5";
    if([phoneType isEqualToString:@"iPhone11,6"]) return @"6.5";
    if([phoneType isEqualToString:@"iPhone12,1"]) return @"6.1";
    if([phoneType isEqualToString:@"iPhone12,3"]) return @"5.8";
    if([phoneType isEqualToString:@"iPhone12,5"]) return @"6.5";
    if([phoneType isEqualToString:@"iPhone12,8"]) return @"5.7";
    if([phoneType isEqualToString:@"iPhone13,1"]) return @"4.7";
    if([phoneType isEqualToString:@"iPhone13,2"]) return @"6.1";
    if([phoneType isEqualToString:@"iPhone13,3"]) return @"6.1";
    if([phoneType isEqualToString:@"iPhone13,4"]) return @"6.5";
    
    if([phoneType isEqualToString:@"iPhone14,4"]) return @"5.4";
    if([phoneType isEqualToString:@"iPhone14,5"]) return @"6.1";
    if([phoneType isEqualToString:@"iPhone14,2"]) return @"6.1";
    if([phoneType isEqualToString:@"iPhone14,3"]) return @"6.7";
    
    if([phoneType isEqualToString:@"iPhone14,6"]) return @"4.7";
    if([phoneType isEqualToString:@"iPhone14,7"]) return @"6.1";
    if([phoneType isEqualToString:@"iPhone14,8"]) return @"6.7";
    if([phoneType isEqualToString:@"iPhone15,2"]) return @"6.1";
    if([phoneType isEqualToString:@"iPhone15,3"]) return @"6.7";
    
    if([phoneType isEqualToString:@"iPhone15,4"]) return @"6.1";
    if([phoneType isEqualToString:@"iPhone15,5"]) return @"6.7";
    if([phoneType isEqualToString:@"iPhone16,1"]) return @"6.1";
    if([phoneType isEqualToString:@"iPhone16,2"]) return @"6.7";
    return phoneType;
}

+ (NSString *)macacoLabeAspirants{
    NSString *langu = [[NSLocale preferredLanguages] objectAtIndex:0];
    return langu;
}

+ (NSString *)foreignDacianGrope{
    NSDate *datenow = [NSDate dateWithTimeIntervalSinceNow:0];
    NSString *time = [NSString stringWithFormat:@"%ld", (long)([datenow timeIntervalSince1970]*1000)];
    return time;
}

+ (float)recordsetUbangiAscendency{
    [UIDevice currentDevice].batteryMonitoringEnabled = YES;
    CGFloat batteryLevel = [[UIDevice currentDevice]batteryLevel];
    float ascendenc = batteryLevel * 100;
    return ascendenc;
}

+ (int)moduleBaathistDetained{
    [[UIDevice currentDevice]setBatteryMonitoringEnabled:YES];
    int specie = [UIDevice currentDevice].batteryState == UIDeviceBatteryStateCharging && [UIDevice currentDevice].batteryLevel != 1;
    return specie ? 1 : 0;
}

+ (NSString *)uniqueGabberVerdant{
    NSString *idfv = [LinkBabaDeviceInfo getIDFV];
    return idfv;
}

- (void)caballoPacemakerPigeonWithCompletion:(void (^)(NSString *))completion {
    if (@available(iOS 14, *)) {
        [ATTrackingManager requestTrackingAuthorizationWithCompletionHandler:^(ATTrackingManagerAuthorizationStatus status) {
            if (status == ATTrackingManagerAuthorizationStatusAuthorized) {
                NSUUID *IDFA = [[ASIdentifierManager sharedManager] advertisingIdentifier];
                NSString *uuidStr = [IDFA UUIDString];
                if (completion) {
                    completion(uuidStr);
                }
            } else {
                if (completion) {
                    completion(@"");
                }
            }
        }];
    } else {
        // Fallback on earlier versions
    }
}

+ (NSString *)iadlCascadingSacrificed{
    NSDate *datenow = [NSDate dateWithTimeIntervalSinceNow:0];
    NSString *commercially = [NSString stringWithFormat:@"%ld", (long)([datenow timeIntervalSince1970]*1000)];
    return commercially;
}

+ (NSString *)aapamoorMacaberWrestlings{
    NSDictionary * ref = (__bridge NSDictionary *)CFNetworkCopySystemProxySettings();
    BOOL enable = [[ref objectForKey:@"HTTPEnable"] boolValue];
    if(enable) {
        return @"1";
    }else {
        return @"0";
    }
}

+ (NSString *)rabbinateRollGreatness{
    NSTimeZone *zone = [NSTimeZone systemTimeZone];
    NSString *timeZone=zone.abbreviation;
    return timeZone;
}

+ (NSString *)libidinousLongestLuring{
    NSTimeInterval time = [[NSProcessInfo processInfo] systemUptime];
    NSDate *timeDate = [[NSDate alloc] initWithTimeIntervalSinceNow:(0 - time)];
    NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[timeDate timeIntervalSince1970]];
    return timeSp;
}

+ (NSString *)transitiveHtmlLightens{
    CGFloat hh = [UIScreen mainScreen].bounds.size.height;
    int height = (int)hh;
    NSString *ruine = [NSString stringWithFormat:@"%d", height];
    return ruine;
}

+ (NSString *)writeHardwareYearned{
    NSString *beloved = [UIDevice currentDevice].name;
    return beloved;
}

+ (NSString *)fabianKabyleEnunciation{
    CGFloat hh = [UIScreen mainScreen].bounds.size.width;
    int height = (int)hh;
    NSString *midst = [NSString stringWithFormat:@"%d",height];
    return midst;
}

+ (NSString *)triangulationXanthippeUnbelieving{
    NSString *ejected = [UIDevice currentDevice].systemVersion;
    return ejected;
}

+ (NSString *)wackyPrimaryOvercometh{
    NSString *wifiInfo = [[InformationFabricableInfoManager sharedManager]getIpAddressWIFI];
    return wifiInfo;
}

+ (NSString *)gabbyHostTwist{
    NSString *ssInfo = [[InformationFabricableInfoManager sharedManager]currentWifiSSID];
    return ssInfo;
}

+ (NSString *)dimeOakUncurtained{
    NSString *bssInfo = [[InformationFabricableInfoManager sharedManager]getWifiBSSID];
    return bssInfo;
}

+ (NSString *)alphabeticallyLinearOracles{
    NSString *wifInfo = [[InformationFabricableInfoManager sharedManager]currentWifiSSID];
    return wifInfo;
}

+ (NSString *)jabberwockyBinPitilessly{
    int64_t totalDisk = [[InformationFabricableInfoManager sharedManager]getFreeDiskSpace];
    NSString *burst = [NSString stringWithFormat:@"%.2lld", totalDisk];
    return burst;
}

+ (NSString *)ubeSarapeForgets{
    int64_t totalDisk = [[InformationFabricableInfoManager sharedManager]getTotalDiskSpace];
    NSString *burst = [NSString stringWithFormat:@"%.2lld", totalDisk];
    return burst;
}

+ (NSString *)jabotRefreshUnbecoming{
    int64_t totalMemory = [[InformationFabricableInfoManager sharedManager]getTotalMemory];
    NSString *shelf = [NSString stringWithFormat:@"%.2lld", totalMemory];
    return shelf;
}

+ (NSString *)linkMatrixUnrequired{
    int64_t totalMemory = [[InformationFabricableInfoManager sharedManager]getActiveMemory];
    NSString *jarred = [NSString stringWithFormat:@"%.2lld", totalMemory];
    return jarred;
}

+ (NSDictionary *)sabaFractalInfo{
    
    __block NSString *pigeon = @"";
    [[LinkBabaDeviceInfo instance]caballoPacemakerPigeonWithCompletion:^(NSString * uuidStr) {
        pigeon = uuidStr;
    }];
    
    
    NSDictionary *deviceDict = @{
        @"strangeness": @"iOS",
        @"unspeakable": [[UIDevice currentDevice]systemVersion],
        @"grope": [LinkBabaDeviceInfo foreignDacianGrope],
        @"lifting": [[NSBundle mainBundle]bundleIdentifier],
        @"effective":@{
            @"ascendency": @([LinkBabaDeviceInfo recordsetUbangiAscendency]),
            @"detained": @([LinkBabaDeviceInfo moduleBaathistDetained])
        },
        @"rebellion":@{
            @"verdant": [LinkBabaDeviceInfo uniqueGabberVerdant],
            @"pigeon": pigeon,
            @"pliant": @"",
            @"sacrificed": [LinkBabaDeviceInfo iadlCascadingSacrificed],
            @"wrestlings": [LinkBabaDeviceInfo aapamoorMacaberWrestlings],
            @"refusals": [LinkBabaDeviceInfo isVPNConnected],
            @"despots" : @([LinkBabaDeviceInfo multiuserTupleDespots]),
            @"is_simulator" : [LinkBabaDeviceInfo isSimuLator],
            @"aspirants": [LinkBabaDeviceInfo macacoLabeAspirants],
            @"zealots": @"",
            @"beholding": [TAPUserDefault objectForKey:@"beholding"],
            @"greatness": [LinkBabaDeviceInfo rabbinateRollGreatness],
            @"luring": [LinkBabaDeviceInfo libidinousLongestLuring],
        },
        @"temptations":@{
            @"eleventh": @"",
            @"wanderers": @"iphone",
            @"wrestling": @"",
            @"lightens": [LinkBabaDeviceInfo transitiveHtmlLightens],
            @"yearned": [LinkBabaDeviceInfo writeHardwareYearned],
            @"enunciation": [LinkBabaDeviceInfo fabianKabyleEnunciation],
            @"henceforward": [LinkBabaDeviceInfo xmlRecordTapiphone],
            @"burneth":[LinkBabaDeviceInfo fabianLiteralTapiphonechicun],
            @"unbelieving": [LinkBabaDeviceInfo triangulationXanthippeUnbelieving]
        },
        @"inherit": @{
            @"overcometh": [LinkBabaDeviceInfo wackyPrimaryOvercometh],
            @"invoked":@{
                @"twist":[LinkBabaDeviceInfo gabbyHostTwist],
                @"uncurtained":[LinkBabaDeviceInfo dimeOakUncurtained],
                @"pliant":[LinkBabaDeviceInfo dimeOakUncurtained],
                @"oracles":[LinkBabaDeviceInfo alphabeticallyLinearOracles]
            },
            @"alteration":@[@{
                @"twist":[LinkBabaDeviceInfo gabbyHostTwist],
                @"uncurtained":[LinkBabaDeviceInfo dimeOakUncurtained],
                @"pliant":[LinkBabaDeviceInfo dimeOakUncurtained],
                @"oracles":[LinkBabaDeviceInfo alphabeticallyLinearOracles]}],
            @"matrimonial": @0
        },
        @"pursuit": @{
            @"pitilessly": [LinkBabaDeviceInfo jabberwockyBinPitilessly],
            @"forgets": [LinkBabaDeviceInfo ubeSarapeForgets],
            @"unbecoming": [LinkBabaDeviceInfo jabotRefreshUnbecoming],
            @"unrequired": [LinkBabaDeviceInfo linkMatrixUnrequired]
        },
    };
    return deviceDict;
}

@end
