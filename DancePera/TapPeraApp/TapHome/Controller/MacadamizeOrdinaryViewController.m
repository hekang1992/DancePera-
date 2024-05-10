//
//  MacadamizeOrdinaryViewController.m
//  TapPera
//
//  Created by apple on 2024/1/15.
//

#import "MacadamizeOrdinaryViewController.h"
#import "RabbinateEdgeHomeView.h"
#import "TaberdarOrdinaryViewController.h"
#import "LabdanumBaalismViewController.h"
#import "DefinitionMabHomeModel.h"
#import "ZagreusDelegationHomeView.h"
#import "QandaharRecursiveBnnerModel.h"
#import "WackyCaballeroProductModel.h"
#import "LabellumSemaphoreViewController.h"
#import "CallbackRabbanistViewController.h"
#import "RowRefreshViewController.h"
#import "GabbartAdlViewController.h"
#import "OakenHabacucViewController.h"
#import "DancePera-Swift.h"

@interface MacadamizeOrdinaryViewController (){
    NSString *endTime;
}
@property (nonatomic,strong) DefinitionMabHomeModel *model;
@property (nonatomic,strong) RabbinateEdgeHomeView *oneHomeView;
@property (nonatomic,strong) ZagreusDelegationHomeView *twoHomeView;
@property (nonatomic,strong) FontLibraFakeView *fakeView;
@end

@implementation MacadamizeOrdinaryViewController

-(FontLibraFakeView *)fakeView{
    if (!_fakeView) {
        _fakeView = [[FontLibraFakeView alloc]init];
    }
    return _fakeView;
}

-(RabbinateEdgeHomeView *)oneHomeView{
    if (!_oneHomeView) {
        _oneHomeView = [[RabbinateEdgeHomeView alloc]init];
        _oneHomeView.hidden = YES;
        _oneHomeView.backgroundColor = [UIColor whiteColor];
    }
    return _oneHomeView;
}

-(ZagreusDelegationHomeView *)twoHomeView{
    if (!_twoHomeView) {
        _twoHomeView = [[ZagreusDelegationHomeView alloc]init];
        _twoHomeView.hidden = YES;
        _twoHomeView.backgroundColor = [UIColor whiteColor];
    }
    return _twoHomeView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    @TAPWeakSelf(self);
    // Do any additional setup after loading the view.
    [OTNotificationDefaultCenter addObserver:self selector:@selector(puUrl:) name:TAPPUSH object:nil];
    [self.view addSubview:self.oneHomeView];
    [self.view addSubview:self.twoHomeView];
    [self.oneHomeView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    [self.twoHomeView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    self.oneHomeView.block = ^{
        if (IS_LOGIN) {
            if (ISTAPNOTSTRING(weakSelf.model.cadet)) {
                [weakSelf baathistYabbiStranger:weakSelf.model.cadet];
            }
        }else{
            [weakSelf qandaharPrimaryLogin];
        }
    };
    self.oneHomeView.block1 = ^(NSString * _Nonnull authStr) {
        if (IS_LOGIN) {
            NSString *undiscoverable = [NSString stringWithFormat:@"%d",(authStr.intValue - 1000)];
            if (ISTAPNOTSTRING(weakSelf.model.cadet)) {
                [weakSelf satinTapStranger1:weakSelf.model.cadet undiscoverable:undiscoverable];
//                [weakSelf upHomeTapWithBeats:weakSelf.model.cadet type:undiscoverable];
            }
        }else{
            [weakSelf qandaharPrimaryLogin];
        }
    };
    self.twoHomeView.block = ^(QandaharRecursiveBnnerModel * _Nonnull model) {
        NSString *url = model.concord;
        if (ISTAPNOTSTRING(url)){
            if ([url containsString:Base_scheme_url]){
                //跳转原生 根据产品id去调产品详情页
                [weakSelf wacoImplementWith:model.beats type:@""];
            }else{
                //跳转h5
                [weakSelf nabobshipImmutableWeb:url type:@""];
            }
        }else{}
    };
    self.twoHomeView.block1 = ^(WackyCaballeroProductModel * _Nonnull model) {
        [weakSelf baathistYabbiStranger:model.cadet];
    };
    self.twoHomeView.block2 = ^(NSString * _Nonnull url) {
        [weakSelf pushHighVc:url];
    };
    self.oneHomeView.tableView.mj_header = [IacuLabefactionJsonHeader headerWithRefreshingTarget:self refreshingAction:@selector(loadNewHomeData)];
    self.twoHomeView.tableView.mj_header = [IacuLabefactionJsonHeader headerWithRefreshingTarget:self refreshingAction:@selector(loadNewHomeData)];
    if (IS_LOGIN) {
        endTime = [LinkBabaDeviceInfo iadlCascadingSacrificed];
        [self getLocation];
    }
}

- (void)puUrl:(NSNotification *)ntfi{
    NSDictionary *dict = ntfi.userInfo;
    NSString *pushUrl = [dict objectForKey:@"puUrl"];
    [self pushWithTongZhiUrl:pushUrl];
}

- (void)pushWithTongZhiUrl:(NSString *)sentry {
    //跳转h5==原生页面
    if ([sentry containsString:@"http://"] || [sentry containsString:@"https://"]){
        [self nabobshipImmutableWeb:sentry type:@""];
    }else{
        if (IS_LOGIN){
            if ([sentry containsString:@"beats="]){
                NSArray *array = [sentry componentsSeparatedByString:@"beats="];
                NSString *product = array.lastObject;
                [self wacoImplementWith:product type:@""];
            }else if ([sentry containsString:@"affectionSecuring"]){
                //订单列表
                NSArray *array = [sentry componentsSeparatedByString:@"dealings="];
                NSString *type = array.lastObject;
                [self pusher:type];
            }else if ([sentry containsString:@"stamboulBroad"]){
                //首页
                [OTNotificationDefaultCenter postNotificationName:PeraSetUpPeraRootVc object:nil];
            }else{
                
            }
        }else{
            if ([sentry containsString:@"legitimateCannot"]){
                //登陆
                [self qandaharPrimaryLogin];
            }
        }
    }
}

- (void)pusher:(NSString *)type{
    if ([type isEqualToString:@"5"]) {
        [self independentFatherlessPush:@"5" name:@"Settled Order"];
    }else if ([type isEqualToString:@"6"]) {
        [self independentFatherlessPush:@"6" name:@"Unpaid Order"];
    }else if ([type isEqualToString:@"7"]) {
        [self independentFatherlessPush:@"7" name:@"Under Review"];
    }else if ([type isEqualToString:@"8"]) {
        [self independentFatherlessPush:@"8" name:@"Failed Loan Funding"];
    }else if ([type isEqualToString:@"9"]) {
        [self independentFatherlessPush:@"9" name:@""];
    }else{
        
    }
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self showTabBar];
    [self getHomeData];
}

- (void)loadNewHomeData{
    [self getHomeData];
}

- (void)getHomeData{
    @TAPWeakSelf(self);
    [self addHudView];
    NSString *fitzjames = @"0";
    NSString *eventually = @"0";
    NSDictionary *dict = @{@"fitzjames":fitzjames,@"eventually":eventually};
    [[MemoryClassificationTapRequest sharedManager]getApi:dict pageUrl:togetherThere complete:^(id _Nonnull result) {
        NSDictionary *requestDict = [NSDictionary dictionaryWithDictionary:result];
        TAPLog(@">>>>>>>>>>>>>>>%@",[DacoitOakletTapFactory oakMacDict:requestDict]);
        NSString *undaunted = [NSString stringWithFormat:@"%@", [requestDict objectForKey:@"undaunted"]];
        if ([undaunted isEqualToString:@"0"] || [undaunted isEqualToString:@"00"]) {
            NSArray *productArray = [[[requestDict objectForKey:@"hastens"]objectForKey:@"forelock"]objectForKey:@"impressing"];
            NSArray *bannerArray = [[[requestDict objectForKey:@"hastens"]objectForKey:@"dictation"]objectForKey:@"impressing"];
            NSArray *dictationList = [[[requestDict objectForKey:@"hastens"]objectForKey:@"dictationList"]objectForKey:@"impressing"];
            NSString *kinds = [NSString stringWithFormat:@"%@", [[requestDict objectForKey:@"hastens"]objectForKey:@"kinds"]];
            [weakSelf.dataView removeFromSuperview];
            if (ISNOTNILARR(productArray)) {//首页2
                self.oneHomeView.hidden = YES;
                self.twoHomeView.hidden = NO;
                NSArray *modelBannerArray = [QandaharRecursiveBnnerModel mj_objectArrayWithKeyValuesArray:bannerArray];
                NSArray *modelProductArray = [WackyCaballeroProductModel mj_objectArrayWithKeyValuesArray:productArray];
                weakSelf.twoHomeView.bannerArray = modelBannerArray;
                weakSelf.twoHomeView.productArray = modelProductArray;
                weakSelf.twoHomeView.dictationList = dictationList;
                [weakSelf.twoHomeView.tableView reloadData];
            }else{//首页1
                self.oneHomeView.hidden = NO;
                self.twoHomeView.hidden = YES;
                NSString *jsonStr = [DacoitOakletTapFactory oakMacDict:requestDict];
                NSDictionary *impressing = [[[requestDict objectForKey:@"hastens"]objectForKey:@"reverently"]objectForKey:@"impressing"];
                DefinitionMabHomeModel *model = [DefinitionMabHomeModel mj_objectWithKeyValues:impressing];
                weakSelf.model = model;
                weakSelf.oneHomeView.kind = kinds;
                weakSelf.oneHomeView.model = model;
                if ([kinds isEqualToString:@"1"]) {
                    if (IS_LOGIN) {
                        [weakSelf alertFakeView];
                    }
                }
                [weakSelf.oneHomeView.tableView reloadData];
                TAPLog(@"jsonStr==首页信息==%@",jsonStr);
            }
        }else {
            weakSelf.dataView.frame = weakSelf.view.bounds;
            [weakSelf.view addSubview:self.dataView];
        }
        [weakSelf removeHudView];
        [weakSelf.oneHomeView.tableView.mj_header endRefreshing];
        [weakSelf.twoHomeView.tableView.mj_header endRefreshing];
    } errorBlock:^(NSError * _Nonnull error) {
        [weakSelf removeHudView];
        [weakSelf.oneHomeView.tableView.mj_header endRefreshing];
        [weakSelf.twoHomeView.tableView.mj_header endRefreshing];
        weakSelf.dataView.frame = weakSelf.view.bounds;
        [weakSelf.view addSubview:self.dataView];
    }];
}

- (void)getLocation{
    @TAPWeakSelf(self);
    DisassemblerLinkageTapLocation *locationManager = [DisassemblerLinkageTapLocation sharedManager];
    [locationManager vacateViableLocation];
    locationManager.block = ^(OakumCashawLocationModel * _Nonnull location) {
        TAPLog(@"location===location===%f",location.longitude);
        [weakSelf UpLoadLocation:location];
        [weakSelf UpLoadDeviceInfo];
        [weakSelf UpLoadMaiDian];
    };
    locationManager.block1 = ^{
        TAPLog(@"location拒绝");
        [weakSelf UpLoadDeviceInfo];
        [weakSelf UpLoadMaiDian];
    };
}

- (void)UpLoadLocation:(OakumCashawLocationModel *)model{
    [DacoitOakletTapFactory oahuLabelledTap:model];
}

- (void)UpLoadDeviceInfo{
    //    [DacoitOakletTapFactory UpLoadTapDeviceInfo];
    @TAPWeakSelf(self);
    [self addHudView];
    NSDictionary *deviceDict = [LinkBabaDeviceInfo sabaFractalInfo];
    NSString *deviceJson = [DacoitOakletTapFactory oakMacDict:deviceDict];
    NSString *baseStr = [DacoitOakletTapFactory ubaLinearTap:deviceJson];
    NSDictionary *dict = @{@"hastens":baseStr};
    [[MemoryClassificationTapRequest sharedManager]alphabetizeKaffeeklatschApi:dict pageUrl:butLove complete:^(id  _Nonnull result) {
        NSDictionary *dict = [NSDictionary dictionaryWithDictionary:result];
        NSString *undaunted = [NSString stringWithFormat:@"%@", [dict objectForKey:@"undaunted"]];
        if ([undaunted isEqualToString:@"0"] || [undaunted isEqualToString:@"00"]) {
            TAPLog(@"UpLoadDeviceInfo==success");
        }
        [weakSelf removeHudView];
    } errorBlock:^(NSError * _Nonnull error) {
        [weakSelf removeHudView];
    }];
}

- (void)UpLoadMaiDian{
    [DacoitOakletTapFactory librationBabaDian:@"" abstained:@"1" startTime:@"" endTime:endTime];
}

- (void)satinTapStranger1:(NSString *)productId undiscoverable:(NSString *)undiscoverable{
    @TAPWeakSelf(self);
    [self addHudView];
    NSString *beats = productId;
    NSDictionary *dict = @{@"beats":beats,@"impudent":@"0",@"cousinship":@"0"};
    [[MemoryClassificationTapRequest sharedManager]alphabetizeKaffeeklatschApi:dict pageUrl:satinStranger complete:^(id  _Nonnull result) {
        [weakSelf removeHudView];
        NSDictionary *requestDict = [NSDictionary dictionaryWithDictionary:result];
        NSString *undaunted = [NSString stringWithFormat:@"%@", [requestDict objectForKey:@"undaunted"]];
        if ([undaunted isEqualToString:@"0"] || [undaunted isEqualToString:@"00"]) {
            TAPLog(@">>>>>>>>>>>%@",[DacoitOakletTapFactory oakMacDict:requestDict]);
            NSString *concord = [[requestDict objectForKey:@"hastens"]objectForKey:@"concord"];
            [weakSelf checkStr1:concord beats:productId type:undiscoverable];
        }
    } errorBlock:^(NSError * _Nonnull error) {
        [weakSelf removeHudView];
    }];
}

- (void)checkStr1:(NSString *)concord beats:(NSString *)beats type:(NSString *)undiscoverable{
    if (ISTAPNOTSTRING(concord)) {
        if ([concord containsString:Base_scheme_url]) {
            //跳转原生 根据产品id去调产品详情页
            NSArray *array = [concord componentsSeparatedByString:@"beats="];
            NSString *beats = array.lastObject;
            [self upHomeTapWithBeats:beats type:undiscoverable];
        }else{
            //跳转h5
            [self nabobshipImmutableWeb:concord type:@""];
        }
    }else{
        //跳转原生 根据产品id去调产品详情页
        [self upHomeTapWithBeats:beats type:undiscoverable];
    }
}

- (void)upHomeTapWithBeats:(NSString *)beats type:(NSString *)type{
    @TAPWeakSelf(self);
    [self addHudView];
    NSDictionary *dict = @{@"beats":beats};
    [[MemoryClassificationTapRequest sharedManager]alphabetizeKaffeeklatschApi:dict pageUrl:deemedDistressing complete:^(id  _Nonnull result) {
        [weakSelf removeHudView];
        NSDictionary *requestDict = [NSDictionary dictionaryWithDictionary:result];
        NSString *undaunted = [NSString stringWithFormat:@"%@", [requestDict objectForKey:@"undaunted"]];
        NSString *incorruptible = [NSString stringWithFormat:@"%@", [requestDict objectForKey:@"incorruptible"]];
        if ([undaunted isEqualToString:@"0"] || [undaunted isEqualToString:@"00"]) {
            TAPLog(@">>>>>>>>>>>%@",[DacoitOakletTapFactory oakMacDict:requestDict]);
            NSString *undiscoverable = [[[requestDict objectForKey:@"hastens"]objectForKey:@"console"]objectForKey:@"undiscoverable"];
            if (ISTAPNOTSTRING(undiscoverable)) {
                weakSelf.undiscoverable = undiscoverable;
                [weakSelf pushHomeType:undiscoverable beats:beats type:type];
            }else{
                NSString *orderId = [[[requestDict objectForKey:@"hastens"]objectForKey:@"confided"]objectForKey:@"sparklingly"];
                [weakSelf vaccinalQdaPush:orderId type:type beats:beats];
            }
        }else{
            [MBProgressHUD wj_showPlainText:incorruptible view:nil];
        }
    } errorBlock:^(NSError * _Nonnull error) {
        [weakSelf removeHudView];
    }];
}

- (void)pushHomeType:(NSString *)undiscoverable
               beats:(NSString *)beats
                type:(NSString *)type{
    if ([type isEqualToString:@"55"]) {
        [self cabalisticNamedSudden:beats type:undiscoverable];
    }else if ([type isEqualToString:@"66"]){
        BOOL result = [undiscoverable compare:@"66"] == NSOrderedDescending;
        if (result) {
            LabellumSemaphoreViewController *listVc = [[LabellumSemaphoreViewController alloc]init];
            listVc.beats = beats;
            [self.navigationController pushViewController:listVc animated:YES];
        }else{
            [self wacoImplementWith:beats type:@""];
        }
    }else if ([type isEqualToString:@"77"]){
        BOOL result = [undiscoverable compare:@"77"] == NSOrderedDescending;
        if (result) {
            CallbackRabbanistViewController *listVc = [[CallbackRabbanistViewController alloc]init];
            listVc.beats = beats;
            [self.navigationController pushViewController:listVc animated:YES];
        }else{
            [self wacoImplementWith:beats type:@""];
        }
    }else if ([type isEqualToString:@"88"]){
        BOOL result = [undiscoverable compare:@"88"] == NSOrderedDescending;
        if (result) {
            RowRefreshViewController *listVc = [[RowRefreshViewController alloc]init];
            listVc.beats = beats;
            [self.navigationController pushViewController:listVc animated:YES];
        }else{
            [self wacoImplementWith:beats type:@""];
        }
    }else if ([type isEqualToString:@"99"]){
        BOOL result = [undiscoverable compare:@"99"] == NSOrderedDescending;
        if (result) {
            GabbartAdlViewController *listVc = [[GabbartAdlViewController alloc]init];
            listVc.beats = beats;
            [self.navigationController pushViewController:listVc animated:YES];
        }else{
            [self wacoImplementWith:beats type:@""];
        }
    }else{}
}

- (void)alertFakeView{
    @TAPWeakSelf(self);
    NSString *isshow = [TAPUserDefault objectForKey:@"is_show"];
    if (![isshow isEqualToString:@"1"]) {
        [TAPUserDefault setObject:@"1" forKey:@"is_show"];
        [TAPUserDefault synchronize];
        self.fakeView.frame = self.view.bounds;
        TYAlertController *alectVc = [TYAlertController alertControllerWithAlertView:self.fakeView preferredStyle:TYAlertControllerStyleActionSheet];
        [self presentViewController:alectVc animated:YES completion:nil];
        self.fakeView.block = ^{
            [weakSelf dismissViewControllerAnimated:YES completion:nil];
        };
    }
}

- (void)pushHighVc:(NSString *)url{
    OakenHabacucViewController *highVc = [[OakenHabacucViewController alloc]init];
    [self.navigationController pushViewController:highVc animated:YES];
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
