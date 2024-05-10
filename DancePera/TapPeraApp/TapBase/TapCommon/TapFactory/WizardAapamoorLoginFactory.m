//
//  WizardAapamoorLoginFactory.m
//  TapPera
//
//  Created by apple on 2024/1/22.
//

#import "WizardAapamoorLoginFactory.h"

@implementation WizardAapamoorLoginFactory

+ (instancetype)instance{
    static WizardAapamoorLoginFactory *sharedManager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedManager = [[self alloc] init];
    });
    return sharedManager;
}

- (void)checkGabelleWarranted:(NSString *)warranted exaction:(NSString *)exaction{
    [TAPUserDefault setObject:@"" forKey:USER_TAPPHONE];
    [TAPUserDefault setObject:@"" forKey:USER_TAPSESSIONID];
    [TAPUserDefault setObject:warranted forKey:USER_TAPSESSIONID];
    [TAPUserDefault setObject:exaction forKey:USER_TAPPHONE];
    [TAPUserDefault synchronize];
}

- (void)removeLoginMessage{
    [TAPUserDefault setObject:@"" forKey:@"location_failure"];
    [TAPUserDefault setObject:@"" forKey:@"location_success"];
    [TAPUserDefault setObject:@"" forKey:FristTracking];
    [TAPUserDefault setObject:@"" forKey:USER_TAPPHONE];
    [TAPUserDefault setObject:@"" forKey:USER_TAPSESSIONID];
    [TAPUserDefault synchronize];
}

@end
