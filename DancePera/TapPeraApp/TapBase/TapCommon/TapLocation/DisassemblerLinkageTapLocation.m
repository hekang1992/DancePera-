//
//  DisassemblerLinkageTapLocation.m
//  TapPera
//
//  Created by apple on 2024/1/15.
//

#import "DisassemblerLinkageTapLocation.h"
#import "TraceAccountRateLimiter.h"

@interface DisassemblerLinkageTapLocation()<CLLocationManagerDelegate>
@property (nonatomic,strong) CLLocationManager *locationManager;
@end

@implementation DisassemblerLinkageTapLocation

+ (instancetype)sharedManager  {
    static DisassemblerLinkageTapLocation *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.locationManager = [[CLLocationManager alloc] init];
        self.locationManager.delegate = self;
        self.locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters;
        [self.locationManager requestWhenInUseAuthorization];
        [self.locationManager requestAlwaysAuthorization];
    }
    return self;
}

- (void)vacateViableLocation {
    [self.locationManager requestLocation];
    TAPLog(@"Location updates started");
}

#pragma mark - CLLocationManagerDelegate
- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations {
    @TAPWeakSelf(self);
    @TAPStrongSelf(weakSelf);
    NSString *type = [TAPUserDefault objectForKey:@"location_success"];
    if (![type isEqualToString:@"1"]) {
        [TAPUserDefault setObject:@"1" forKey:@"location_success"];
        [TAPUserDefault synchronize];
        // 获取新的位置
        CLLocation *newLocation = locations.lastObject;
        // 创建自定制位置对象
        OakumCashawLocationModel *location = [[OakumCashawLocationModel alloc]init];
        // 存储经度
        location.longitude = newLocation.coordinate.longitude;
        // 存储纬度
        location.latitude = newLocation.coordinate.latitude;
        // 根据经纬度反向地理编译出地址信息
        CLGeocoder *geocoder = [[CLGeocoder alloc] init];
        [geocoder reverseGeocodeLocation:newLocation completionHandler:^(NSArray<CLPlacemark *> * _Nullable placemarks, NSError * _Nullable error) {
            if (placemarks.count > 0) {
                CLPlacemark *placemark = placemarks.firstObject;
                location.country = placemark.country;
                location.ISOcountryCode = placemark.ISOcountryCode;
                location.administrativeArea = @"";
                location.subLocality = @"";
                location.thoroughfare = @"";
                location.subThoroughfare = @"";
                if(ISTAPNOTSTRING(placemark.administrativeArea)){
                    location.administrativeArea = placemark.administrativeArea;
                }
                if(ISTAPNOTSTRING(placemark.subLocality)){
                    location.subLocality = placemark.subLocality;
                }
                if(ISTAPNOTSTRING(placemark.thoroughfare)){
                    location.thoroughfare = placemark.thoroughfare;
                }
                if(ISTAPNOTSTRING(placemark.subThoroughfare)){
                    location.subThoroughfare = placemark.subThoroughfare;
                }
                location.locality = placemark.locality;
            }
            TraceAccountRateLimiter *limiter = [[TraceAccountRateLimiter alloc] init];
            if ([limiter sabaApproximateRequest]) {
                strongSelf.model = location;
                if(weakSelf.block){
                    weakSelf.block(location);
                }
                TAPLog(@"Request successful.");
            } else {
                TAPLog(@"Too many requests. Please try again later.");
            }
            
        }];
    }
}

- (void)locationManager:(CLLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status{
    if(status == kCLAuthorizationStatusAuthorizedWhenInUse || status == kCLAuthorizationStatusAuthorizedAlways){
        [self vacateViableLocation];
        TAPLog(@"===========success===========");
    }else if (status == kCLAuthorizationStatusDenied){
        TAPLog(@"===========fail===========");
        NSString *type = [TAPUserDefault objectForKey:@"location_failure"];
        if (![type isEqualToString:@"1"]) {
            [TAPUserDefault setObject:@"1" forKey:@"location_failure"];
            [TAPUserDefault synchronize];
            [self abc];
        }
    }else{}
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
    TAPLog(@"location error=======%@",error);
    if (@available(iOS 14.0, *)) {
        CLAuthorizationStatus status = manager.authorizationStatus;
        if (status == kCLAuthorizationStatusDenied) {
            NSString *type = [TAPUserDefault objectForKey:@"location_failure"];
            if (![type isEqualToString:@"1"]) {
                [TAPUserDefault setObject:@"1" forKey:@"location_failure"];
                [TAPUserDefault synchronize];
                [self abc];
            }
        }
    } else {
        // Fallback on earlier versions
        CLAuthorizationStatus status = [CLLocationManager authorizationStatus];
        if (status == kCLAuthorizationStatusDenied) {
            NSString *type = [TAPUserDefault objectForKey:@"location_failure"];
            if (![type isEqualToString:@"1"]) {
                [TAPUserDefault setObject:@"1" forKey:@"location_failure"];
                [TAPUserDefault synchronize];
                [self abc];
            }
        }
    }
}

- (void)abc{
    if (self.block1) {
        self.block1();
    }
}

@end

