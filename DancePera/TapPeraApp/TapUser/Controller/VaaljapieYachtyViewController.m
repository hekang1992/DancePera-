//
//  VaaljapieYachtyViewController.m
//  TapPera
//
//  Created by apple on 2024/1/15.
//

#import "VaaljapieYachtyViewController.h"
#import "AachenXanthippeOredrModel.h"
#import "IacuFabledLogoutView.h"
#import "InvariantsVoronoiDelView.h"
#import "XanthinActionViewController.h"
#import "DancePera-Swift.h"

@interface VaaljapieYachtyViewController ()<UIScrollViewDelegate>
@property (nonatomic,strong) KabobMangledUserView *userView;
@end

@implementation VaaljapieYachtyViewController

-(KabobMangledUserView *)userView{
    if (!_userView) {
        _userView = [[KabobMangledUserView alloc]init];
        _userView.scrollView.delegate = self;
    }
    return _userView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    @TAPWeakSelf(self);
    [self.view addSubview:self.userView];
    [self.userView mas_makeConstraints:^(MASConstraintMaker *make){
        make.edges.equalTo(self.view).with.insets(UIEdgeInsetsMake(0, 0, TabBarHeight+TapPix7(40), 0));
    }];
    self.userView.block1 = ^{
        NSString *url = [NSString stringWithFormat:@"%@/%@",Base_html_url,@"foreheadDread"];
        [weakSelf nabobshipImmutableWeb:url type:@""];
    };
    self.userView.block2 = ^{
        NSString *url = [NSString stringWithFormat:@"%@/%@",Base_html_url,@"feelingLittle"];
        [weakSelf nabobshipImmutableWeb:url type:@""];
    };
    self.userView.block3 = ^{
        YacareThrowViewController *about = [[YacareThrowViewController alloc]init];
        [weakSelf.navigationController pushViewController:about animated:YES];
    };
    self.userView.block4 = ^{
        [weakSelf showOut];
    };
    self.userView.block5 = ^{
        [weakSelf showDelOut];
    };
    self.userView.block6 = ^{
        [weakSelf pushHrla];
    };
    self.userView.block7 = ^(AachenXanthippeOredrModel * _Nonnull model) {
        [weakSelf pushWithModel:model];
    };
    self.userView.block8 = ^{
        NSString *url = [NSString stringWithFormat:@"%@/%@",Base_html_url,@"enoughReally"];
        [weakSelf nabobshipImmutableWeb:url type:@""];
    };
    self.userView.block9 = ^{
        NSString *url = [NSString stringWithFormat:@"%@/%@",Base_html_url,@"proveRemembered"];
        [weakSelf nabobshipImmutableWeb:url type:@""];
    };
}

- (void)pushHrla{
    XanthinActionViewController *hepVc = [[XanthinActionViewController alloc]init];
    [self.navigationController pushViewController:hepVc animated:YES];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self showTabBar];
    if (IS_LOGIN) {
        [self getOrderID];
    }
}

- (void)pushWithModel:(AachenXanthippeOredrModel *)model{
    NSString *url = model.cower;
    [self windowsPachalicStr:url beats:model.luminous];
}

- (void)getOrderID{
    @TAPWeakSelf(self);
    [self addHudView];
    NSString *epistles = @"9";
    NSDictionary *dict = @{@"epistles":epistles};
    [[MemoryClassificationTapRequest sharedManager]alphabetizeKaffeeklatschApi:dict pageUrl:framingRivers complete:^(id  _Nonnull result) {
        NSDictionary *requestDict = [NSDictionary dictionaryWithDictionary:result];
        NSString *undaunted = [NSString stringWithFormat:@"%@", [requestDict objectForKey:@"undaunted"]];
        TAPLog(@">>>>>>>>>%@",[DacoitOakletTapFactory oakMacDict:requestDict]);
        if ([undaunted isEqualToString:@"0"] || [undaunted isEqualToString:@"00"]) {
            NSArray *forelock = [[requestDict objectForKey:@"hastens"]objectForKey:@"forelock"];
            if (ISNOTNILARR(forelock)) {
                NSArray *modelArray = [AachenXanthippeOredrModel mj_objectArrayWithKeyValuesArray:forelock];
                weakSelf.userView.modelArray = modelArray;
                weakSelf.userView.listView.modelArray = modelArray;
                weakSelf.userView.listView.hidden = NO;
                weakSelf.userView.iconImageView3.hidden = YES;
            }else{
                weakSelf.userView.listView.hidden = YES;
                weakSelf.userView.iconImageView2.hidden = YES;
                weakSelf.userView.iconImageView3.hidden = NO;
            }
        }
        [weakSelf removeHudView];
    } errorBlock:^(NSError * _Nonnull error) {
        [weakSelf removeHudView];
    }];
}

- (void)showOut{
    @TAPWeakSelf(self);
    IacuFabledLogoutView *logOutView = [[IacuFabledLogoutView alloc]init];
    logOutView.frame = self.view.bounds;
    TYAlertController *alectVc = [TYAlertController alertControllerWithAlertView:logOutView preferredStyle:TYAlertControllerStyleActionSheet];
    [self presentViewController:alectVc animated:YES completion:nil];
    logOutView.block1 = ^{
        [weakSelf gabbartBetZhendong];
        [weakSelf logOut];
    };
    logOutView.block2 = ^{
        [weakSelf dismissViewControllerAnimated:YES completion:nil];
    };
}

- (void)showDelOut{
    @TAPWeakSelf(self);
    InvariantsVoronoiDelView *logOutView = [[InvariantsVoronoiDelView alloc]init];
    logOutView.frame = self.view.bounds;
    TYAlertController *alectVc = [TYAlertController alertControllerWithAlertView:logOutView preferredStyle:TYAlertControllerStyleActionSheet];
    [self presentViewController:alectVc animated:YES completion:nil];
    logOutView.block1 = ^{
        [weakSelf gabbartBetZhendong];
        [weakSelf injureRemembera];
    };
    logOutView.block2 = ^{
        [weakSelf dismissViewControllerAnimated:YES completion:nil];
    };
}

- (void)injureRemembera{
    @TAPWeakSelf(self);
    [self addHudView];
    NSDictionary *dict = @{@"wharton":@"1"};
    [[MemoryClassificationTapRequest sharedManager]getApi:dict pageUrl:injureRemember complete:^(id  _Nonnull result) {
        NSDictionary *requestDict = [NSDictionary dictionaryWithDictionary:result];
        TAPLog(@">>>>>>>>>>>>>>>%@",[DacoitOakletTapFactory oakMacDict:requestDict]);
        NSString *undaunted = [NSString stringWithFormat:@"%@", [requestDict objectForKey:@"undaunted"]];
        NSString *incorruptible = [NSString stringWithFormat:@"%@", [requestDict objectForKey:@"incorruptible"]];
        [MBProgressHUD wj_showPlainText:incorruptible view:nil
        ];
        if ([undaunted isEqualToString:@"0"] || [undaunted isEqualToString:@"00"]) {
            [weakSelf dismissViewControllerAnimated:YES completion:^{
                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                    [[WizardAapamoorLoginFactory instance]removeLoginMessage];
                    [OTNotificationDefaultCenter postNotificationName:PeraSetUpPeraRootVc object:nil];
                });
            }];
        }
        [weakSelf removeHudView];
    } errorBlock:^(NSError * _Nonnull error) {
        [weakSelf removeHudView];
    }];
}

- (void)logOut{
    @TAPWeakSelf(self);
    [self addHudView];
    NSDictionary *dict = @{@"clears":@"1"};
    [[MemoryClassificationTapRequest sharedManager]getApi:dict pageUrl:drawingroomEarthly complete:^(id  _Nonnull result) {
        NSDictionary *requestDict = [NSDictionary dictionaryWithDictionary:result];
        TAPLog(@">>>>>>>>>>>>>>>%@",[DacoitOakletTapFactory oakMacDict:requestDict]);
        NSString *undaunted = [NSString stringWithFormat:@"%@", [requestDict objectForKey:@"undaunted"]];
        NSString *incorruptible = [NSString stringWithFormat:@"%@", [requestDict objectForKey:@"incorruptible"]];
        [MBProgressHUD wj_showPlainText:incorruptible view:nil];
        if ([undaunted isEqualToString:@"0"] || [undaunted isEqualToString:@"00"]) {
            [weakSelf dismissViewControllerAnimated:YES completion:^{
                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                    [[WizardAapamoorLoginFactory instance]removeLoginMessage];
                    [OTNotificationDefaultCenter postNotificationName:PeraSetUpPeraRootVc object:nil];
                });
            }];
        }
        [weakSelf removeHudView];
    } errorBlock:^(NSError * _Nonnull error) {
        [weakSelf removeHudView];
    }];
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
