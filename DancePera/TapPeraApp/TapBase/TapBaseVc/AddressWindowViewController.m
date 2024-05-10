//
//  AddressWindowViewController.m
//  TapPera
//
//  Created by apple on 2024/1/15.
//

#import "AddressWindowViewController.h"

@interface AddressWindowViewController ()<AppsFlyerLibDelegate>{
    BOOL isRequsetGit;
}
@property (nonatomic,strong) NSArray *apiGitArray;
@end

@implementation AddressWindowViewController

-(UIImageView *)bgImageView{
    if(!_bgImageView){
        _bgImageView = [[UIImageView alloc]init];
        _bgImageView.contentMode = UIViewContentModeScaleAspectFill;
        _bgImageView.image = [UIImage imageNamed:@"edge_launch_image"];
    }
    return _bgImageView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view addSubview:self.bgImageView];
    [self.bgImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    [TAPUserDefault setObject:@"" forKey:@"location_failure"];
    [TAPUserDefault setObject:@"" forKey:@"location_success"];
    [TAPUserDefault setObject:@"0" forKey:@"throughAsked"];
    [TAPUserDefault synchronize];
    [self afnNetTest];
}

- (void)afnNetTest{
    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        switch (status) {
            case AFNetworkReachabilityStatusNotReachable:{}
                break;
            case AFNetworkReachabilityStatusReachableViaWWAN:
                [[NSUserDefaults standardUserDefaults]setObject:@"WWAN" forKey:@"beholding"];
                [[NSUserDefaults standardUserDefaults]synchronize];
//                [self googleMarket];
                [self dongtaiyuming:wjjejtttt];
                break;
            case AFNetworkReachabilityStatusReachableViaWiFi:
                [[NSUserDefaults standardUserDefaults]setObject:@"WiFi" forKey:@"beholding"];
                [[NSUserDefaults standardUserDefaults]synchronize];
//                [self googleMarket];
                [self dongtaiyuming:wjjejtttt];
                break;
            case AFNetworkReachabilityStatusUnknown:
            default:
                break;
        }
    }];
    [[AFNetworkReachabilityManager sharedManager]startMonitoring];
}

- (void)dongtaiyuming:(NSString *)yuming {
    @TAPWeakSelf(self);
    @TAPStrongSelf(weakSelf);
    NSDictionary *dict = @{@"git":@"1"};
    [[MemoryClassificationTapRequest sharedManager]alphabetizeKaffeeklatschApi:dict pageUrl:yuming complete:^(id _Nonnull result) {
        NSDictionary *dict = [NSDictionary dictionaryWithDictionary:result];
        NSString *undaunted = [NSString stringWithFormat:@"%@", [dict objectForKey:@"undaunted"]];
        if([undaunted isEqualToString:@"0"] || [undaunted isEqualToString:@"00"]){
            strongSelf->isRequsetGit = YES;
            [weakSelf googleMarket];
        }else {
            strongSelf->isRequsetGit = NO;
            [weakSelf requestGitStr];
        }
    } errorBlock:^(NSError * _Nonnull error) {
        strongSelf->isRequsetGit = NO;
        [weakSelf requestGitStr];
    }];
}

- (void)requestGitStr {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSString *ori = BASE_FCO_GIT_URL;
        NSData *data = [ori dataUsingEncoding:NSUTF8StringEncoding];
        NSString *b64S = [data base64EncodedStringWithOptions:0];
        NSData *decodedData = [[NSData alloc] initWithBase64EncodedString:b64S options:0];
        NSString *deco = [[NSString alloc] initWithData:decodedData encoding:NSUTF8StringEncoding];
        NSURL *url = [NSURL URLWithString:deco];
        NSError *error = nil;
        NSString *base64 = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:&error];
        NSString *decodedString = [base64 stringByReplacingOccurrencesOfString:@"\n" withString:@""];
        if (error) {
            TAPLog(@"发生错误: %@", error);
        } else {
            NSData *dec = [[NSData alloc] initWithBase64EncodedString:decodedString options:0];
            NSString *strrddd = [[NSString alloc]initWithData:dec encoding:NSUTF8StringEncoding];
            NSArray *stringArray = [strrddd componentsSeparatedByString:@","];
            self.apiGitArray = stringArray;
            [self netGitUrlApi:wjjejtttt index:0];
        }
    });
}

- (void)netGitUrlApi:(NSString *)apiUrl index:(NSInteger)index {
    @TAPWeakSelf(self);
    @TAPStrongSelf(weakSelf);
    if (isRequsetGit == NO) {
        if (index >= self.apiGitArray.count) {
            return;
        }
        [[NSUserDefaults standardUserDefaults]setObject:self.apiGitArray[index] forKey:APIBAERGITURL];
        [[NSUserDefaults standardUserDefaults]synchronize];
        NSDictionary *dict = @{@"git":@"1"};
        [[MemoryClassificationTapRequest sharedManager]alphabetizeKaffeeklatschApi:dict pageUrl:wjjejtttt complete:^(id _Nonnull result) {
            NSDictionary *dict = [NSDictionary dictionaryWithDictionary:result];
            NSString *undaunted = [NSString stringWithFormat:@"%@", [dict objectForKey:@"undaunted"]];
            if([undaunted isEqualToString:@"0"] || [undaunted isEqualToString:@"00"]){
                strongSelf->isRequsetGit = YES;
                [weakSelf googleMarket];
            }else {
                strongSelf->isRequsetGit = NO;
                [weakSelf netGitUrlApi:wjjejtttt index:index +1];
            }
        } errorBlock:^(NSError * _Nonnull error) {
            strongSelf->isRequsetGit = NO;
            [weakSelf netGitUrlApi:wjjejtttt index:index +1];
        }];
    }
}

- (void)googleMarket{
    NSString *flag = [TAPUserDefault objectForKey:@"throughAsked"];
    if([flag isEqualToString:@"0"]){
        NSString *crush = @"1";
        NSString *uniqueGabberVerdant = [LinkBabaDeviceInfo getIDFV];
        __block NSString *caballoPacemakerPigeon = @"";
        [[LinkBabaDeviceInfo instance]caballoPacemakerPigeonWithCompletion:^(NSString * uuidStr) {
            caballoPacemakerPigeon = uuidStr;
        }];
        NSDictionary *dict = @{@"crush":crush,@"verdant":uniqueGabberVerdant,@"pigeon":caballoPacemakerPigeon};
        [[MemoryClassificationTapRequest sharedManager]alphabetizeKaffeeklatschApi:dict pageUrl:throughAsked complete:^(id _Nonnull result) {
            NSDictionary *dict = [NSDictionary dictionaryWithDictionary:result];
            NSString *undaunted = [NSString stringWithFormat:@"%@", [dict objectForKey:@"undaunted"]];
            if([undaunted isEqualToString:@"0"] || [undaunted isEqualToString:@"00"]){
                TAPLog(@"googleUpLoad>>>>googleUpLoad");
                NSString *surmises = [[dict objectForKey:@"hastens"]objectForKey:@"surmises"];
                NSString *treading = [[dict objectForKey:@"hastens"]objectForKey:@"treading"];
                [TAPUserDefault setObject:@"1" forKey:@"throughAsked"];
                [TAPUserDefault synchronize];
                [self googleTapFramework:surmises avocation:treading];
                [OTNotificationDefaultCenter postNotificationName:TAPOriginPush object:nil];
                [OTNotificationDefaultCenter postNotificationName:PeraSetUpPeraRootVc object:nil];
            }
        } errorBlock:^(NSError * _Nonnull error) {
            [OTNotificationDefaultCenter postNotificationName:PeraSetUpPeraRootVc object:nil];
        }];
    }
}

- (void)googleTapFramework:(NSString *)key avocation:(NSString *)avocation{
    [[AppsFlyerLib shared]setAppsFlyerDevKey:key];
    [[AppsFlyerLib shared]setAppleAppID:avocation];
//    [AppsFlyerLib shared].isDebug = YES;
    [AppsFlyerLib shared].delegate = self;
    [[AppsFlyerLib shared]start];
}

- (void)onConversionDataSuccess:(NSDictionary *)conversionInfo{
    NSDictionary *dict = [NSDictionary dictionaryWithDictionary:conversionInfo];
    TAPLog(@"dict===%@",dict);
}

- (void)onConversionDataFail:(NSError *)error{
    TAPLog(@"error===%@",error);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
