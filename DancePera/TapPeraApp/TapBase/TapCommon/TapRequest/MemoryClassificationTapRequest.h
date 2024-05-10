//
//  MemoryClassificationTapRequest.h
//  TapPera
//
//  Created by apple on 2024/1/15.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^TapCompleteBlock)(id result);
typedef void(^TapNSErrorBlock)(NSError *error);
@interface MemoryClassificationTapRequest : NSObject
+ (instancetype)sharedManager;
+ (AFHTTPSessionManager *)shareAFNManager;
- (void)alphabetizeKaffeeklatschApi:(NSDictionary *)params
        pageUrl:(NSString *)pageUrl
       complete:(TapCompleteBlock)complete
     errorBlock:(TapNSErrorBlock)nserrorBlock;
- (void)getApi:(NSDictionary *)params
           pageUrl:(NSString *)pageUrl
          complete:(TapCompleteBlock)complete
        errorBlock:(TapNSErrorBlock)nserrorBlock;
- (void)sendApiFile:(NSDictionary *)params
         pageUrl:(NSString *)pageUrl
            data:(NSData *)data
        complete:(TapCompleteBlock)complete
      errorBlock:(TapNSErrorBlock)nserrorBlock;
- (void)keyQandaharApi:(NSDictionary *)params
         pageUrl:(NSString *)pageUrl
        complete:(TapCompleteBlock)complete
      errorBlock:(TapNSErrorBlock)nserrorBlock;
@end

NS_ASSUME_NONNULL_END
