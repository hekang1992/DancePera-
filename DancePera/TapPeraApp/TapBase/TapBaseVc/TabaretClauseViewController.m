//
//  TabaretClauseViewController.m
//  TapPera
//
//  Created by apple on 2024/1/15.
//

#import "TabaretClauseViewController.h"
#import "TaberdarOrdinaryViewController.h"
#import "LabdanumBaalismViewController.h"
#import "LabdanumBaalismViewController.h"
#import "ActivateMabeViewController.h"
#import "SexagesimalDiscreteViewController.h"
#import "LabellumSemaphoreViewController.h"
#import "CallbackRabbanistViewController.h"
#import "RowRefreshViewController.h"
#import "GabbartAdlViewController.h"
#import "PachalicVaaljapieViewController.h"
#import "AtomicOahuViewController.h"

@interface TabaretClauseViewController (){
    NSString *s1;
    NSString *s2;
}

@end

@implementation TabaretClauseViewController

-(YachtyAttributeNavView *)navView{
    if(!_navView){
        _navView = [[YachtyAttributeNavView alloc]init];
    }
    return _navView;
}

-(GabelleIaaHudView *)hudView{
    if (!_hudView) {
        _hudView = [[GabelleIaaHudView alloc]init];
        _hudView.frame = CGRectMake(0, 0, PeraScreenWidth, PeraScreenHeight);
    }
    return _hudView;
}

-(XanthicZagrebDataView *)dataView{
    if (!_dataView) {
        _dataView = [[XanthicZagrebDataView alloc]init];
        _dataView.backgroundColor = [UIColor whiteColor];
    }
    return _dataView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.hbd_barAlpha = 0.0;
    self.hbd_barHidden = YES;
    self.hbd_barStyle = UIBarStyleDefault;
    self.hbd_tintColor = UIColor.whiteColor;
    self.hbd_titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor.whiteColor colorWithAlphaComponent:0.0]};
    self.hbd_backInteractive = NO;
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)qandaharPrimaryLogin{
    TaberdarOrdinaryViewController *login = [[TaberdarOrdinaryViewController alloc]init];
    BoxingRabbahNavigationController *nav = [[BoxingRabbahNavigationController alloc]initWithRootViewController:login];
    [[WizardAapamoorLoginFactory instance]removeLoginMessage];
    nav.modalPresentationStyle = UIModalPresentationOverFullScreen;
    [self presentViewController:nav animated:YES completion:nil];
}

- (void)showTabBar{
    TableArbitraryBarController *tabbarVc = (TableArbitraryBarController *)[UIApplication sharedApplication].delegate.window.rootViewController;
    [tabbarVc showTapTabBar];
}

- (void)virtualObjLongestHide{
    TableArbitraryBarController *tabbarVc = (TableArbitraryBarController *)[UIApplication sharedApplication].delegate.window.rootViewController;
    [tabbarVc libertymanTopologicalTab];
}

- (void)addNavView{
    [self.view addSubview:self.navView];
    [self.navView mas_makeConstraints:^(MASConstraintMaker *make){
        make.top.left.right.equalTo(self.view);
        make.height.mas_equalTo(TapNavBarHeight);
    }];
}

- (void)addHudView{
    if (@available(iOS 13.0, *)) {
        UIWindowScene *windowScene = (UIWindowScene *)[UIApplication sharedApplication].connectedScenes.anyObject;
        UIWindow *keyWindow = windowScene.windows.firstObject;
        [keyWindow addSubview:self.hudView];
    } else {
        // Fallback on earlier versions
        UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
        [keyWindow addSubview:self.hudView];
    }
}

- (void)removeHudView{
    [self.hudView removeFromSuperview];
}

- (void)dealloc{
    [OTNotificationDefaultCenter removeObserver:self];
}

- (void)baathistYabbiStranger:(NSString *)productId{
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
            [weakSelf windowsPachalicStr:concord beats:productId];
        }
    } errorBlock:^(NSError * _Nonnull error) {
        [weakSelf removeHudView];
    }];
}

- (void)windowsPachalicStr:(NSString *)concord beats:(NSString *)beats{
    if (ISTAPNOTSTRING(concord)) {
        if ([concord containsString:Base_scheme_url]) {
            //跳转原生 根据产品id去调产品详情页
            NSArray *array = [concord componentsSeparatedByString:@"beats="];
            NSString *beats = array.lastObject;
            [self wacoImplementWith:beats type:@""];
        }else{
            //跳转h5
            [self nabobshipImmutableWeb:concord type:@""];
        }
    }else{
        //跳转原生 根据产品id去调产品详情页
        [self wacoImplementWith:beats type:@""];
    }
}

- (void)wacoImplementWith:(NSString *)beats type:(NSString *)type{
    @TAPWeakSelf(self);
    [self addHudView];
    NSDictionary *dict = @{@"beats":beats};
    [[MemoryClassificationTapRequest sharedManager]alphabetizeKaffeeklatschApi:dict pageUrl:deemedDistressing complete:^(id  _Nonnull result) {
        [weakSelf removeHudView];
        NSDictionary *requestDict = [NSDictionary dictionaryWithDictionary:result];
        NSString *undaunted = [NSString stringWithFormat:@"%@", [requestDict objectForKey:@"undaunted"]];
        if ([undaunted isEqualToString:@"0"] || [undaunted isEqualToString:@"00"]) {
            TAPLog(@">>>>>>>>>>>%@",[DacoitOakletTapFactory oakMacDict:requestDict]);
            NSString *undiscoverable = [[[requestDict objectForKey:@"hastens"]objectForKey:@"console"]objectForKey:@"undiscoverable"];
            if (ISTAPNOTSTRING(undiscoverable)) {
                weakSelf.undiscoverable = undiscoverable;
                [weakSelf oaklingPlaceholderPush:undiscoverable beats:beats];
            }else{
                NSString *orderId = [[[requestDict objectForKey:@"hastens"]objectForKey:@"confided"]objectForKey:@"sparklingly"];
                [weakSelf vaccinalQdaPush:orderId type:type beats:beats];
            }
        }
    } errorBlock:^(NSError * _Nonnull error) {
        [weakSelf removeHudView];
    }];
}

- (void)oaklingPlaceholderPush:(NSString *)undiscoverable
           beats:(NSString *)beats{
    if ([undiscoverable isEqualToString:@"55"]) {
        [self cabalisticNamedSudden:beats type:undiscoverable];
    }else if ([undiscoverable isEqualToString:@"66"]){
        LabellumSemaphoreViewController *listVc = [[LabellumSemaphoreViewController alloc]init];
        listVc.beats = beats;
        [self.navigationController pushViewController:listVc animated:YES];
    }else if ([undiscoverable isEqualToString:@"77"]){
        CallbackRabbanistViewController *listVc = [[CallbackRabbanistViewController alloc]init];
        listVc.beats = beats;
        [self.navigationController pushViewController:listVc animated:YES];
    }else if ([undiscoverable isEqualToString:@"88"]){
        RowRefreshViewController *listVc = [[RowRefreshViewController alloc]init];
        listVc.beats = beats;
        [self.navigationController pushViewController:listVc animated:YES];
    }else if ([undiscoverable isEqualToString:@"99"]){
        GabbartAdlViewController *listVc = [[GabbartAdlViewController alloc]init];
        listVc.beats = beats;
        [self.navigationController pushViewController:listVc animated:YES];
    }else{}
}

- (void)vaccinalQdaPush:(NSString *)orderID
                        type:(NSString *)type
                       beats:(NSString *)beats{
    @TAPWeakSelf(self);
    @TAPStrongSelf(weakSelf);
    s1 = [LinkBabaDeviceInfo iadlCascadingSacrificed];
    NSString *politely = orderID;
    NSDictionary *dict = @{@"politely":politely};
    [self addHudView];
    [[MemoryClassificationTapRequest sharedManager]alphabetizeKaffeeklatschApi:dict pageUrl:giftsYourself complete:^(id  _Nonnull result) {
        [weakSelf removeHudView];
        NSDictionary *requestDict = [NSDictionary dictionaryWithDictionary:result];
        NSString *undaunted = [NSString stringWithFormat:@"%@", [requestDict objectForKey:@"undaunted"]];
        if ([undaunted isEqualToString:@"0"] || [undaunted isEqualToString:@"00"]) {
            TAPLog(@">>>>>>>>>>>%@",[DacoitOakletTapFactory oakMacDict:requestDict]);
            NSString *concord = [[requestDict objectForKey:@"hastens"]objectForKey:@"concord"];
            if (ISTAPNOTSTRING(concord)) {
                [weakSelf maidian9:strongSelf->s1 proID:beats];
                [weakSelf nabobshipImmutableWeb:concord type:type];
            }
        }
    } errorBlock:^(NSError * _Nonnull error) {
        [weakSelf removeHudView];
    }];
}

- (void)cabalisticNamedSudden:(NSString *)beats type:(NSString *)cabalisticNamedSudden{
    @TAPWeakSelf(self);
    [self addHudView];
    NSDictionary *dict = @{@"beats":beats};
    [[MemoryClassificationTapRequest sharedManager]getApi:dict pageUrl:suddenStrike complete:^(id  _Nonnull result) {
        NSDictionary *requestDict = [NSDictionary dictionaryWithDictionary:result];
        NSString *undaunted = [NSString stringWithFormat:@"%@", [requestDict objectForKey:@"undaunted"]];
        if ([undaunted isEqualToString:@"0"] || [undaunted isEqualToString:@"00"]) {
            id woodbine = [[[requestDict objectForKey:@"hastens"]objectForKey:@"metamorphosed"]objectForKey:@"woodbine"];
            id sacrifices = [[requestDict objectForKey:@"hastens"]objectForKey:@"sacrifices"];
            if ([cabalisticNamedSudden isEqualToString:@"55"]) {
                if ([woodbine integerValue]  == 1 && [sacrifices integerValue] != 1) {//face
                    [weakSelf pushFaceVc:beats];
                }else if ([woodbine integerValue]  == 1 && [sacrifices integerValue] == 1){//idcard
                    [weakSelf pushIDvC:beats];
                }else{
                    [weakSelf pushidCardVc:beats];
                }
            }else{
                [weakSelf pushIDvC:beats];
            }
        }
        [weakSelf removeHudView];
    } errorBlock:^(NSError * _Nonnull error) {
        [weakSelf removeHudView];
    }];
}

- (void)pushIDvC:(NSString *)beats{
    ActivateMabeViewController *listVc = [[ActivateMabeViewController alloc]init];
    listVc.beats = beats;
    [self.navigationController pushViewController:listVc animated:YES];
}

- (void)pushidCardVc:(NSString *)beats{
    LabdanumBaalismViewController *listVc = [[LabdanumBaalismViewController alloc]init];
    listVc.beats = beats;
    [self.navigationController pushViewController:listVc animated:YES];
}

- (void)pushFaceVc:(NSString *)beats{
    SexagesimalDiscreteViewController *faceVc = [[SexagesimalDiscreteViewController alloc]init];
    faceVc.beats = beats;
    [self.navigationController pushViewController:faceVc animated:YES];
}

- (void)nabobshipImmutableWeb:(NSString *)webUrl type:(NSString *)type{
    PachalicVaaljapieViewController *webVc = [[PachalicVaaljapieViewController alloc]init];
    NSString *paraStr = [DacoitOakletTapFactory sabaeanRightPara];
    webVc.type = type;
    webVc.webUrl = [NSString stringWithFormat:@"%@%@",webUrl,paraStr];
    BoxingRabbahNavigationController *selectedNavigationController = [DacoitOakletTapFactory selectedNavigationController];
    [selectedNavigationController pushViewController:webVc animated:YES];
}

- (void)gabbartBetZhendong{
    UIImpactFeedbackGenerator *generator = [[UIImpactFeedbackGenerator alloc] initWithStyle:UIImpactFeedbackStyleHeavy];
    [generator impactOccurred];
    [generator prepare];
}

- (void)maidian9:(NSString *)startTime proID:(NSString *)proID {
    s2 = [LinkBabaDeviceInfo iadlCascadingSacrificed];
    [DacoitOakletTapFactory librationBabaDian:proID abstained:@"9" startTime:startTime endTime:s2];
}

- (void)independentFatherlessPush:(NSString *)epistles name:(NSString *)name{
    AtomicOahuViewController *listVc = [[AtomicOahuViewController alloc]init];
    listVc.epistles = epistles;
    listVc.name = name;
    [listVc virtualObjLongestHide];
    BoxingRabbahNavigationController *selectedNavigationController = [DacoitOakletTapFactory selectedNavigationController];
    [selectedNavigationController pushViewController:listVc animated:YES];
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
