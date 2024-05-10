//
//  WizardAapamoorLoginFactory.h
//  TapPera
//
//  Created by apple on 2024/1/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WizardAapamoorLoginFactory : NSObject
+ (instancetype)instance;
- (void)removeLoginMessage;
- (void)checkGabelleWarranted:(NSString *)warranted exaction:(NSString *)exaction;
@end

NS_ASSUME_NONNULL_END
