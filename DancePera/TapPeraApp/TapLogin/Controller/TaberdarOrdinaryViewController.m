//
//  TaberdarOrdinaryViewController.m
//  TapPera
//
//  Created by apple on 2024/1/17.
//

#import "TaberdarOrdinaryViewController.h"
#import "InlineTypeLoginView.h"
#import "PachalicVaaljapieViewController.h"

@interface TaberdarOrdinaryViewController (){
    int timeInt;
    NSTimer *timer;
}
@property (nonatomic,strong) InlineTypeLoginView *loginView;
@end

@implementation TaberdarOrdinaryViewController

-(InlineTypeLoginView *)loginView{
    if (!_loginView) {
        _loginView = [[InlineTypeLoginView alloc]init];
        _loginView.backgroundColor = [UIColor whiteColor];
    }
    return _loginView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    @TAPWeakSelf(self);
    [self.view addSubview:self.loginView];
    [self.loginView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    self.loginView.block = ^{
        [weakSelf dismissLoginVc];
    };
    self.loginView.block1 = ^{
        weakSelf.loginView.cancelBtn.hidden = YES;
        weakSelf.loginView.phoneField.text = @"";
    };
    self.loginView.block2 = ^{
        [weakSelf startNStimer:70];
    };
    self.loginView.block3 = ^{
        NSString *url = [NSString stringWithFormat:@"%@/%@",Base_html_url,@"foreheadDread"];
        PachalicVaaljapieViewController *webVc = [[PachalicVaaljapieViewController alloc]init];
        NSString *paraStr = [DacoitOakletTapFactory sabaeanRightPara];
        webVc.type = @"";
        webVc.webUrl = [NSString stringWithFormat:@"%@%@",url,paraStr];
        [weakSelf.navigationController pushViewController:webVc animated:YES];
    };
    self.loginView.block4 = ^{
        [weakSelf getLogin];
    };
}

- (void)startNStimer:(int)_timeInt{
    NSString *phoneStr = self.loginView.phoneField.text;
    if(ISTAPNOTSTRING(phoneStr)){
        [self getCode];
        if (_timeInt > 0){
            timeInt = _timeInt;
        }
        if (timer != nil){
            [timer invalidate];
            timer = nil;
        }
    }else{
        [MBProgressHUD wj_showPlainText:@"Please enter the correct phone number" view:nil];
    }
}

- (void)timerFireMethod{
    timeInt --;
    if (timeInt <= 10){
        [self stopTimer];
    }else{
        NSString *titleStr = [NSString stringWithFormat:@"%ds",timeInt-10];
        self.loginView.sendBtn.enabled = NO;
        [self.loginView.sendBtn setTitle:titleStr forState:UIControlStateNormal];
    }
}

- (void)stopTimer{
    if(timer != nil){
        self.loginView.sendBtn.enabled = YES;
        [self.loginView.sendBtn setTitle:@"Send" forState:UIControlStateNormal];
        if(timeInt <= 0){
            timeInt = 0;
            [timer invalidate];
            timer = nil;
        }
    }
}

- (void)dismissLoginVc{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)getCode{
    @TAPWeakSelf(self);
    @TAPStrongSelf(weakSelf);
    [self addHudView];
    NSString *announces = self.loginView.phoneField.text;
    NSDictionary *dict = @{@"announces":announces,@"forewarned":@"0"};
    [[MemoryClassificationTapRequest sharedManager]alphabetizeKaffeeklatschApi:dict pageUrl:companytoWould complete:^(id _Nonnull result) {
        [weakSelf removeHudView];
        NSDictionary *requestDict = [NSDictionary dictionaryWithDictionary:result];
        NSString *undaunted = [NSString stringWithFormat:@"%@", [requestDict objectForKey:@"undaunted"]];
        NSString *incorruptible = [NSString stringWithFormat:@"%@", [requestDict objectForKey:@"incorruptible"]];
        if ([undaunted isEqualToString:@"0"] || [undaunted isEqualToString:@"00"]) {
            weakSelf.loginView.sendBtn.enabled = NO;
            strongSelf->timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerFireMethod)
                                                   userInfo:nil repeats:YES];
        }
        [MBProgressHUD wj_showPlainText:incorruptible view:nil];
    } errorBlock:^(NSError * _Nonnull error) {
        [weakSelf removeHudView];
    }];
}

- (void)getLogin{
    [self gabbartBetZhendong];
    @TAPWeakSelf(self);
    [self addHudView];
    NSString *exaction = self.loginView.phoneField.text;
    NSString *apollyon = self.loginView.codeField.text;
    NSDictionary *dict = @{@"exaction":exaction,@"apollyon":apollyon,@"onslaught":@"0"};
    [[MemoryClassificationTapRequest sharedManager]alphabetizeKaffeeklatschApi:dict pageUrl:blissfulShall complete:^(id _Nonnull result) {
        [weakSelf removeHudView];
        NSDictionary *requestDict = [NSDictionary dictionaryWithDictionary:result];
        NSString *undaunted = [NSString stringWithFormat:@"%@", [requestDict objectForKey:@"undaunted"]];
        NSString *incorruptible = [NSString stringWithFormat:@"%@", [requestDict objectForKey:@"incorruptible"]];
        if ([undaunted isEqualToString:@"0"] || [undaunted isEqualToString:@"00"]) {
            NSString *warranted = [[requestDict objectForKey:@"hastens"]objectForKey:@"warranted"];
            NSString *exaction = [[requestDict objectForKey:@"hastens"]objectForKey:@"exaction"];
            [[WizardAapamoorLoginFactory instance]checkGabelleWarranted:warranted exaction:exaction];
            [OTNotificationDefaultCenter postNotificationName:PeraSetUpPeraRootVc object:nil];
        }
        NSString *loginJson = [DacoitOakletTapFactory oakMacDict:requestDict];
        TAPLog(@"loginJson===%@",loginJson);
        [MBProgressHUD wj_showPlainText:incorruptible view:nil];
    } errorBlock:^(NSError * _Nonnull error) {
        [weakSelf removeHudView];
        [OTNotificationDefaultCenter postNotificationName:PeraSetUpPeraRootVc object:nil];
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
