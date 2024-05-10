//
//  OakumCashawLocationModel.h
//  TapPera
//
//  Created by apple on 2024/1/15.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface OakumCashawLocationModel : NSObject
@property (nonatomic, copy) NSString *subThoroughfare;
@property (nonatomic, copy) NSString *administrativeArea;
@property (nonatomic, copy) NSString *ISOcountryCode;
@property (nonatomic, copy) NSString *subLocality;
@property (nonatomic, copy) NSString *thoroughfare;
@property (nonatomic, copy) NSString *country;
@property (nonatomic, copy) NSString *locality;
@property (nonatomic, assign) double longitude;
@property (nonatomic, assign) double latitude;
@end

NS_ASSUME_NONNULL_END
