//
//  TraceAccountRateLimiter.h
//  TapPera
//
//  Created by apple on 2024/3/14.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TraceAccountRateLimiter : NSObject
@property (nonatomic, assign) NSTimeInterval lastRequestTime;

- (BOOL)sabaApproximateRequest;
@end

NS_ASSUME_NONNULL_END
