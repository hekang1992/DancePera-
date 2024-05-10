//
//  TraceAccountRateLimiter.m
//  TapPera
//
//  Created by apple on 2024/3/14.
//

#import "TraceAccountRateLimiter.h"

@implementation TraceAccountRateLimiter

- (instancetype)init {
    self = [super init];
    if (self) {
        _lastRequestTime = 0;
    }
    return self;
}

- (BOOL)sabaApproximateRequest {
    NSTimeInterval currentTime = [[NSDate date] timeIntervalSince1970];
    if (currentTime - self.lastRequestTime < 1) {
        return NO;
    } else {
        self.lastRequestTime = currentTime;
        return YES;
    }
}


@end
