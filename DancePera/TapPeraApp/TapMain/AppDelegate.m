//
//  AppDelegate.m
//  TapPera
//
//  Created by apple on 2024/1/15.
//

#import "AppDelegate.h"
#import "TaberdarOrdinaryViewController.h"

@interface AppDelegate ()<UNUserNotificationCenterDelegate>
@property (nonatomic,strong) AddressWindowViewController *launchVc;
@end

@implementation AppDelegate

-(AddressWindowViewController *)launchVc{
    if (!_launchVc) {
        _launchVc = [[AddressWindowViewController alloc]init];
    }
    return _launchVc;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc]init];
    self.window.frame = [UIScreen mainScreen].bounds;
    [self setPeraRootVc];
    [self keyboardManager];
    [self setApplePushNotification];
//    [self getFontNames];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)keyboardManager{
    [IQKeyboardManager sharedManager].enableAutoToolbar = YES;
    [IQKeyboardManager sharedManager].shouldResignOnTouchOutside = YES;
    [IQKeyboardManager sharedManager].keyboardDistanceFromTextField = TapPix7(10);
}

- (void)setPeraRootVc{
    self.window.rootViewController = self.launchVc;
    [self setNotificationCenter];
}

- (void)setNotificationCenter{
    [OTNotificationDefaultCenter addObserver:self selector:@selector(setPeratUpRootVc:) name:PeraSetUpPeraRootVc object:nil];
    [OTNotificationDefaultCenter addObserver:self selector:@selector(setLogin:) name:PeraSetUpLoginVc object:nil];
}

- (void)setPeratUpRootVc:(NSNotification *)noti{
    [self windowAnimation];
    TableArbitraryBarController *tabbarVc = [[TableArbitraryBarController alloc]init];
    tabbarVc.selectedIndex = 0;
    self.window.rootViewController = tabbarVc;
}

- (void)setLogin:(NSNotification *)noti{
    [self windowAnimation];
    TableArbitraryBarController *tabbarVc = [[TableArbitraryBarController alloc]init];
    tabbarVc.selectedIndex = 0;
    self.window.rootViewController = tabbarVc;
    TaberdarOrdinaryViewController *loginVc = [[TaberdarOrdinaryViewController alloc]init];
    BoxingRabbahNavigationController *nav = [[BoxingRabbahNavigationController alloc]initWithRootViewController:loginVc];
    nav.modalPresentationStyle = UIModalPresentationFullScreen;
    [tabbarVc presentViewController:nav animated:YES completion:nil];
}

// 淡入淡出
- (void)windowAnimation{
    CATransition *transtition = [CATransition animation];
    transtition.duration = 0.25;
    transtition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    [self.window.layer addAnimation:transtition forKey:@"animation"];
}

- (void)setApplePushNotification{
    [OTNotificationDefaultCenter addObserver:self selector:@selector(setApplePush:) name:TAPOriginPush object:nil];
}

- (void)setApplePush:(NSNotification *)nstfi{
    UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
    center.delegate = self;
    [center requestAuthorizationWithOptions:(UNAuthorizationOptionAlert + UNAuthorizationOptionBadge + UNAuthorizationOptionSound) completionHandler:^(BOOL granted, NSError * _Nullable error) {
    }];
    if (@available(iOS 16.0, *)) {
        [center setBadgeCount:0 withCompletionHandler:^(NSError * _Nullable error) {
        }];
    } else {
        // Fallback on earlier versions
    }
    [[UIApplication sharedApplication] registerForRemoteNotifications];
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    if (@available(iOS 14,*)) {
        [ATTrackingManager
         requestTrackingAuthorizationWithCompletionHandler:^(ATTrackingManagerAuthorizationStatus status)
         {
            
        }];
    }
}

- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken {
    UInt8 buffer;//一个个字节读取
    NSString *strToken = @"";
    for (NSInteger idx = 0; idx < deviceToken.length; idx ++) {
        [deviceToken getBytes:&buffer range:NSMakeRange(idx, 1)];
        NSString *strBuffer = [NSString stringWithFormat:@"%02x", buffer];
        strToken = [strToken stringByAppendingString:strBuffer];
    }
    TAPLog(@"strToken===%@",strToken);
    [self getTapToken:strToken];
}

- (void)getTapToken:(NSString *)deviceToken{
    NSString *exulted = [LinkBabaDeviceInfo getIDFV];
    NSDictionary *dict = @{@"exulted":exulted,@"conjured":deviceToken};
    [[MemoryClassificationTapRequest sharedManager]alphabetizeKaffeeklatschApi:dict pageUrl:sophieSeconded complete:^(id _Nonnull result) {
        NSDictionary *requestDict = [NSDictionary dictionaryWithDictionary:result];
        NSString *undaunted = [NSString stringWithFormat:@"%@", [requestDict objectForKey:@"undaunted"]];
        if ([undaunted isEqualToString:@"0"] || [undaunted isEqualToString:@"00"]) {
            TAPLog(@"jpush>>>>>jpush");
        }
    } errorBlock:^(NSError * _Nonnull error) {
        
    }];
}

#pragma mark - UNUserNotificationCenterDelegate
- (void)userNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)notification withCompletionHandler:(void (^)(UNNotificationPresentationOptions))completionHandler {
    completionHandler(UNNotificationPresentationOptionAlert + UNNotificationPresentationOptionBadge + UNNotificationPresentationOptionSound);
}

- (void)userNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(void (^)(void))completionHandler {
    UNNotificationContent *notificationContent = response.notification.request.content;
    NSDictionary *cuata = notificationContent.userInfo;
    NSDictionary *pams = cuata[@"params"];
    NSString *puUrl = pams[@"tp"];
    NSDictionary *dict = @{@"puUrl":puUrl};
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [OTNotificationDefaultCenter postNotificationName:TAPPUSH object:nil userInfo:dict];
    });
    completionHandler();
}

- (void)applicationWillResignActive:(UIApplication*)application{
    TAPLog(@"-----------即将进入后台-----------");
}

- (void)applicationDidEnterBackground:(UIApplication*)application{
    TAPLog(@"-----------已经进入后台-----------");
}

- (void)applicationWillEnterForeground:(UIApplication*)application{
    TAPLog(@"-----------即将进入前台-----------");
    [application setApplicationIconBadgeNumber:0];
}

// 打印所有字体
- (void)getFontNames{
    NSArray *familyNames = [UIFont familyNames];
    for (NSString *familyName in familyNames) {
        NSArray *fontNames = [UIFont fontNamesForFamilyName:familyName];
        for (NSString *fontName in fontNames) {
            TAPLog(@"--------\tfontName-------- = %s\n",[fontName UTF8String]);
        }
    }
}

- (void)dealloc{
    [OTNotificationDefaultCenter removeObserver:self];
}

@end
