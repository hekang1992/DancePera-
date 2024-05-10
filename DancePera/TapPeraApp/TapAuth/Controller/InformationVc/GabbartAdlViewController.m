//
//  GabbartAdlViewController.m
//  TapPera
//
//  Created by apple on 2024/1/19.
//

#import "GabbartAdlViewController.h"
#import "LibertinismUnionViewController.h"
#import "DimeReferentialViewController.h"
#import "InheritanceAssignmentVacancyModel.h"

@interface GabbartAdlViewController ()
@property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UILabel *descLable1;
@property (nonatomic,strong) NSString *fullText;
@property (nonatomic,assign) NSInteger characterIndex;
@property (nonatomic,strong) UIImageView *iconImageView;
@property (nonatomic,strong) UIButton *bankBtn;
@property (nonatomic,strong) UIButton *walletBtn;
@property (nonatomic,strong) DimeReferentialViewController *walletVc;
@property (nonatomic,strong) LibertinismUnionViewController *bankVc;
@end

@implementation GabbartAdlViewController

-(void)setBeats:(NSString *)beats{
    _beats = beats;
}

-(UIImageView *)iconImageView{
    if (!_iconImageView) {
        _iconImageView = [[UIImageView alloc]init];
        _iconImageView.image = [UIImage imageNamed:@"MacadamTabbySlice"];
    }
    return _iconImageView;
}

-(UILabel *)descLable1{
    if (!_descLable1) {
        _descLable1 = [DacoitOakletTapFactory ubiKnapsackCreate:[UIFont fontWithName:LINESeedSansAppBold size:TapPix7(26)] textColor:[UIColor colorWithCSS:@"#FFFFFF"] textAliment:NSTextAlignmentLeft];
        _descLable1.numberOfLines = 0;
    }
    return _descLable1;
}

- (UIScrollView *)scrollView{
    if (!_scrollView) {
        _scrollView = [[UIScrollView alloc]init];
        _scrollView.showsVerticalScrollIndicator = NO;
        _scrollView.showsHorizontalScrollIndicator = NO;
        _scrollView.contentInsetAdjustmentBehavior
        = UIScrollViewContentInsetAdjustmentNever;
        _scrollView.scrollEnabled = NO;
        _scrollView.contentSize = CGSizeMake(PeraScreenWidth*2, 0);
    }
    return _scrollView;
}

-(UIButton *)bankBtn{
    if (!_bankBtn) {
        _bankBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_bankBtn setTitleColor:[UIColor colorWithCSS:@"#413E45"] forState:UIControlStateNormal];
        [_bankBtn setTitle:@"Bank" forState:UIControlStateNormal];
        _bankBtn.layer.cornerRadius = TapPix7(30);
        _bankBtn.layer.borderWidth = TapPix7(6);
        _bankBtn.layer.borderColor = [UIColor colorWithCSS:@"#413E45"].CGColor;
        _bankBtn.titleLabel.font = [UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(36)];
        [_bankBtn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_bankBtn setBackgroundColor:[UIColor whiteColor]];
    }
    return _bankBtn;
}

-(UIButton *)walletBtn{
    if (!_walletBtn) {
        _walletBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_walletBtn setTitle:@"E-wallet" forState:UIControlStateNormal];
        [_walletBtn setTitleColor:[UIColor colorWithCSS:@"#F75584"] forState:UIControlStateNormal];
        _walletBtn.titleLabel.font = [UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(36)];
        _walletBtn.layer.cornerRadius = TapPix7(30);
        _walletBtn.layer.borderWidth = TapPix7(6);
        _walletBtn.layer.borderColor = [UIColor colorWithCSS:@"#F75584"].CGColor;
        [_walletBtn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_walletBtn setBackgroundColor:[UIColor whiteColor]];
    }
    return _walletBtn;
}

-(DimeReferentialViewController *)walletVc{
    if(!_walletVc){
        _walletVc = [[DimeReferentialViewController alloc]init];
    }
    return _walletVc;
}

-(LibertinismUnionViewController *)bankVc{
    if(!_bankVc){
        _bankVc = [[LibertinismUnionViewController alloc]init];
    }
    return _bankVc;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    @TAPWeakSelf(self);
    [self addNavView];
    self.navView.titleLabel.text = @"E-wallet/Bank";
    self.navView.block = ^{
        [weakSelf.navigationController popToRootViewControllerAnimated:YES];
    };
    self.iconImageView.frame = CGRectMake(0, 0, PeraScreenWidth, TapPix7(144));
    self.descLable1.frame = CGRectMake(TapPix7(111), 0, PeraScreenWidth-TapPix7(111)-TapPix7(40), TapPix7(144));
    [self.view insertSubview:self.iconImageView belowSubview:self.navView];
    [self.iconImageView addSubview:self.descLable1];
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        self.iconImageView.frame = CGRectMake(0, TapNavBarHeight, PeraScreenWidth, TapPix7(144));
    } completion:^(BOOL finished) {
        [self showText];
    }];
    [self.view addSubview:self.scrollView];
    [self.scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.iconImageView.mas_bottom);
        make.left.right.bottom.equalTo(self.view);
    }];
    [self.view addSubview:self.bankBtn];
    [self.view addSubview:self.walletBtn];
    [self.bankBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.view).offset(-TapPix7(80));
        make.size.mas_equalTo(CGSizeMake(TapPix7(213), TapPix7(100)));
        make.right.equalTo(self.view).offset(TapPix7(213));
    }];
    [self.walletBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.bankBtn.mas_top).offset(-TapPix7(40));
        make.size.mas_equalTo(CGSizeMake(TapPix7(213), TapPix7(100)));
        make.right.equalTo(self.view).offset(TapPix7(213));
    }];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [UIView animateWithDuration:1.0 delay:0 usingSpringWithDamping:0.5 initialSpringVelocity:1.0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            [self.walletBtn mas_updateConstraints:^(MASConstraintMaker *make) {
                make.right.equalTo(self.view).offset(-TapPix7(40));
            }];
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.4 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [UIView animateWithDuration:1.0 delay:0 usingSpringWithDamping:0.5 initialSpringVelocity:1.0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
                    [self.bankBtn mas_updateConstraints:^(MASConstraintMaker *make) {
                        make.right.equalTo(self.view).offset(-TapPix7(40));
                    }];
                    [self.view layoutIfNeeded];
                } completion:^(BOOL finished) {
                }];
            });
            [self.view layoutIfNeeded];
        } completion:^(BOOL finished) {
        }];
    });
    [self getBankInfo];
}

- (void)showText{
    self.fullText = @"If you enter the wrong account number, you may not receive the funds. Please check and ensure accuracy to avoid any payment issues.*";
    self.characterIndex = 0;
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:0.03
                            target:self
                          selector:@selector(updateTyping)
                          userInfo:nil
                           repeats:YES];
    [[NSRunLoop currentRunLoop]addTimer:timer forMode:UITrackingRunLoopMode];
}

- (void)updateTyping {
    if (self.characterIndex < self.fullText.length) {
        NSString *partialText = [self.fullText substringToIndex:self.characterIndex + 1];
        self.descLable1.text = partialText;
        self.characterIndex++;
    }
}

- (void)getBankInfo{
    [self addHudView];
    @TAPWeakSelf(self);
    @TAPStrongSelf(weakSelf);
    NSDictionary *dict = @{@"beats":_beats};
    [[MemoryClassificationTapRequest sharedManager]alphabetizeKaffeeklatschApi:dict pageUrl:sheepishlyPetitioned complete:^(id  _Nonnull result) {
        NSDictionary *requestDict = [NSDictionary dictionaryWithDictionary:result];
        NSString *undaunted = [NSString stringWithFormat:@"%@", [requestDict objectForKey:@"undaunted"]];
        if ([undaunted isEqualToString:@"0"] || [undaunted isEqualToString:@"00"]) {
            TAPLog(@"requestDict===bank>>>>>>>>>>%@",[DacoitOakletTapFactory oakMacDict:requestDict])
            NSArray *vacancy = [[requestDict objectForKey:@"hastens"]objectForKey:@"vacancy"];
            NSDictionary *wallDict = vacancy.firstObject;
            NSArray *walletArray = [wallDict objectForKey:@"vacancy"];
            NSDictionary *bankDict = vacancy.lastObject;
            NSArray *bankArray = [bankDict objectForKey:@"vacancy"];
            NSArray *walletModelArray = [InheritanceAssignmentVacancyModel mj_objectArrayWithKeyValuesArray:walletArray];
            NSArray *bankModelArray = [InheritanceAssignmentVacancyModel mj_objectArrayWithKeyValuesArray:bankArray];
            weakSelf.walletVc.modelArray = walletModelArray;
            weakSelf.bankVc.modelArray = bankModelArray;
            weakSelf.walletVc.beats = strongSelf->_beats;
            weakSelf.bankVc.beats = strongSelf->_beats;
            [weakSelf addChildVc];;
            [weakSelf.walletVc.infoView.tableView reloadData];
        }
        [weakSelf removeHudView];
    } errorBlock:^(NSError * _Nonnull error) {
        [weakSelf removeHudView];
    }];
}

// 按钮的点击事件
- (void)btnClick:(UIButton *)senderBtn{
    [self gabbartBetZhendong];
    if (senderBtn == self.walletBtn) {
        self.bankBtn.layer.borderColor = [UIColor colorWithCSS:@"#413E45"].CGColor;
        [self.bankBtn setTitleColor:[UIColor colorWithCSS:@"#413E45"] forState:UIControlStateNormal];
        self.walletBtn.layer.borderColor = [UIColor colorWithCSS:@"#F75584"].CGColor;
        [self.walletBtn setTitleColor:[UIColor colorWithCSS:@"#F75584"] forState:UIControlStateNormal];
        [self moveWithIndex:0];
    } else if (senderBtn == self.bankBtn) {
        self.bankBtn.layer.borderColor = [UIColor colorWithCSS:@"#F75584"].CGColor;
        [self.bankBtn setTitleColor:[UIColor colorWithCSS:@"#F75584"] forState:UIControlStateNormal];
        self.walletBtn.layer.borderColor = [UIColor colorWithCSS:@"#413E45"].CGColor;
        [self.walletBtn setTitleColor:[UIColor colorWithCSS:@"#413E45"] forState:UIControlStateNormal];
        [self moveWithIndex:1];
    }
}

- (void)addChildVc{
    self.walletVc.view.frame = CGRectMake(0, 0, PeraScreenWidth, PeraScreenHeight - TapNavBarHeight - TapPix7(144));
    [self.scrollView addSubview:self.walletVc.view];
    [self addChildViewController:self.walletVc];
}

-(void)moveWithIndex:(NSInteger)index{
    self.bankVc.view.frame = CGRectMake(PeraScreenWidth, 0, PeraScreenWidth, PeraScreenHeight - TapNavBarHeight - TapPix7(144));
    [self.scrollView addSubview:self.bankVc.view];
    [self addChildViewController:self.bankVc];
    [self.scrollView setContentOffset:CGPointMake(PeraScreenWidth*index, 0) animated:YES];
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
