//
//  KaffeeklatschTaberdarViewController.m
//  TapPera
//
//  Created by apple on 2024/1/15.
//

#import "KaffeeklatschTaberdarViewController.h"
#import "KafLooseClickView.h"
#import "XanthinActionViewController.h"
#import "AtomicOahuViewController.h"

@interface KaffeeklatschTaberdarViewController ()
@property (nonatomic,strong) UIImageView *iconImageView;
@property (nonatomic,strong) UIButton *iconBtn;
@property (nonatomic,strong) KafLooseClickView *click1;
@property (nonatomic,strong) KafLooseClickView *click2;
@property (nonatomic,strong) KafLooseClickView *click3;
@property (nonatomic,strong) KafLooseClickView *click4;
@end

@implementation KaffeeklatschTaberdarViewController


-(UIButton *)iconBtn{
    if (!_iconBtn) {
        _iconBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_iconBtn setImage:[UIImage imageNamed:@"dacquoise_nav_icon1"] forState:UIControlStateNormal];
        [_iconBtn addTarget:self action:@selector(qcClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _iconBtn;
}

-(UIImageView *)iconImageView{
    if (!_iconImageView) {
        _iconImageView = [[UIImageView alloc]init];
        _iconImageView.userInteractionEnabled = YES;
        _iconImageView.image = [UIImage imageNamed:@"image_order_bg"];
    }
    return _iconImageView;
}

-(KafLooseClickView *)click1{
    if (!_click1) {
        @TAPWeakSelf(self);
        _click1 = [[KafLooseClickView alloc]init];
        _click1.bgImageView.image = [UIImage imageNamed:@"linear_unpaid_order"];
        [_click1.btn setTitle:@"Unpaid Order" forState:UIControlStateNormal];
        _click1.block = ^{
            [weakSelf independentFatherlessPush:@"6" name:@"Unpaid Order"];
        };
    }
    return _click1;
}

-(KafLooseClickView *)click2{
    if (!_click2) {
        @TAPWeakSelf(self);
        _click2 = [[KafLooseClickView alloc]init];
        [_click2.btn setTitle:@"Under Review" forState:UIControlStateNormal];
        _click2.bgImageView.image = [UIImage imageNamed:@"help_review_order"];
        _click2.block = ^{
            [weakSelf independentFatherlessPush:@"7" name:@"Under Review"];
        };
    }
    return _click2;
}

-(KafLooseClickView *)click3{
    if (!_click3) {
        @TAPWeakSelf(self);
        _click3 = [[KafLooseClickView alloc]init];
        _click3.bgImageView.image = [UIImage imageNamed:@"labdanum_order_image"];
        [_click3.btn setTitle:@"Failed Loan Funding" forState:UIControlStateNormal];
        _click3.block = ^{
            [weakSelf independentFatherlessPush:@"8" name:@"Failed Loan Funding"];
        };
    }
    return _click3;
}

-(KafLooseClickView *)click4{
    if (!_click4) {
        @TAPWeakSelf(self);
        _click4 = [[KafLooseClickView alloc]init];
        [_click4.btn setTitle:@"Settled Order" forState:UIControlStateNormal];
        _click4.bgImageView.image = [UIImage imageNamed:@"iaf_settled_order"];
        _click4.block = ^{
            [weakSelf independentFatherlessPush:@"5" name:@"Settled Order"];
        };
    }
    return _click4;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view addSubview:self.iconImageView];
    [self.iconImageView addSubview:self.iconBtn];
    [self.iconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(TapPix7(541));
        make.left.top.right.equalTo(self.view);
    }];
    [self.view addSubview:self.click1];
    [self.view addSubview:self.click2];
    [self.view addSubview:self.click3];
    [self.view addSubview:self.click4];
    [self.click1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(TapPix7(40));
        make.centerX.equalTo(self.view);
        make.height.mas_equalTo(TapPix7(100));
        make.top.equalTo(self.iconImageView.mas_bottom).offset(TapPix7(40));
    }];
    [self.click2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(TapPix7(40));
        make.centerX.equalTo(self.view);
        make.height.mas_equalTo(TapPix7(100));
        make.top.equalTo(self.click1.mas_bottom).offset(TapPix7(40));
    }];
    [self.click3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(TapPix7(40));
        make.centerX.equalTo(self.view);
        make.height.mas_equalTo(TapPix7(100));
        make.top.equalTo(self.click2.mas_bottom).offset(TapPix7(40));
    }];
    [self.click4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(TapPix7(40));
        make.centerX.equalTo(self.view);
        make.height.mas_equalTo(TapPix7(100));
        make.top.equalTo(self.click3.mas_bottom).offset(TapPix7(40));
    }];
    [self.iconBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(TapPix7(88), TapPix7(88)));
        make.right.equalTo(self.iconImageView).offset(-TapPix7(40));
        make.top.equalTo(self.iconImageView).offset(TapPix7(84));
    }];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self showTabBar];
}

- (void)qcClick{
    [self pushHrla];
}

- (void)pushHrla{
    XanthinActionViewController *hepVc = [[XanthinActionViewController alloc]init];
    [self.navigationController pushViewController:hepVc animated:YES];
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
