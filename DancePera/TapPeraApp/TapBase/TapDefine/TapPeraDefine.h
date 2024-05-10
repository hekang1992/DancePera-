//
//  TapPeraDefine.h
//  TapPera
//
//  Created by apple on 2024/1/15.
//

#ifndef TapPeraDefine_h
#define TapPeraDefine_h

#define PeraScreenWidth                   [[UIScreen mainScreen] bounds].size.width

#define PeraScreenHeight                  [[UIScreen mainScreen] bounds].size.height

#define TAPWeakSelf(type) autoreleasepool{} __weak __typeof__(type) weakSelf = type;

#define TAPStrongSelf(type) autoreleasepool{} __strong __typeof__(type) strongSelf = type;

#define TAPUserDefault                    [NSUserDefaults standardUserDefaults]

#define OTNotificationDefaultCenter       [NSNotificationCenter defaultCenter]

#define TAPPUSH      @"TAPPUSH"

#define TapPix7(x)                        ((x)/ 750.0f) * PeraScreenWidth

#define TabBarHeight                      TapPix7(160)

// 设置根视图控制器
#define PeraSetUpPeraRootVc            @"PeraSetUpPeraRootVc"

#define PeraSetUpLoginVc            @"PeraSetUpLoginVc"

#define ISNOTNILDIC(IPHONEDIC) ([IPHONEDIC isKindOfClass:[NSDictionary class]] && IPHONEDIC != nil && IPHONEDIC.allKeys.count != 0 && IPHONEDIC.allValues.count != 0)? YES:NO

#define ISNOTNILARR(IPHONEARR) ([IPHONEARR isKindOfClass:[NSArray class]] && IPHONEARR != nil && IPHONEARR.count != 0)? YES:NO

#define ISTAPNOTSTRING(IPHONESTR) ((IPHONESTR != nil) && (IPHONESTR != (id)[NSNull null]) && ![IPHONESTR isEqualToString:@""] && ![IPHONESTR isEqualToString:@"(null)"]) ? YES : NO


#define IS_LOGIN                               ISTAPNOTSTRING([TAPUserDefault objectForKey:USER_TAPSESSIONID])

// 通知
#define TAPOriginPush                 @"TAPOriginPush"

#define USER_TAPSESSIONID             @"USER_TAPSESSIONID"
#define USER_TAPPHONE                 @"USER_TAPPHONE"

// 字体
#define LimelightRegular               @"Limelight-Regular"
#define LINESeedSansAppBold            @"SFProText-Bold"
#define LINESeedSansAppExtraBold       @"SFProText-Black"
#define LINESeedSansAppBlackItalic     @"SFProDisplay-BlackItalic"
#define SFProDisplayRegular            @"SFProDisplay-Regular"

// 定位
#define setUpPeraLocation              @"setUpPeraLocation"
#define setUpPeraJuJueLocation         @"setUpPeraJuJueLocation"

#define FristTracking                  @"FristTracking"

#ifdef DEBUG
#define TAPLog(...) printf("%f %s\n",[[NSDate date]timeIntervalSince1970],[[NSString stringWithFormat:__VA_ARGS__]UTF8String]);
#else
#define TAPLog(format, ...)
#endif


// RGB颜色
#define PeraColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:0.9]

// 随机色
#define TAPRandomColor PeraColor(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256))

#define NSStringFromBOOL(aBool)    ((aBool) ? @"1" : @"0")

#define TapNavBarHeight \
({\
    CGFloat height = 0.0;\
    if (@available(iOS 11.0, *)) {\
        UIEdgeInsets insets = [UIApplication sharedApplication].delegate.window.safeAreaInsets;\
        height = insets.top > 0 ? 44.0 + insets.top : 44.0;\
    } else {\
        height = 64.0;\
    }\
    height;\
})

#endif /* TapPeraDefine_h */
