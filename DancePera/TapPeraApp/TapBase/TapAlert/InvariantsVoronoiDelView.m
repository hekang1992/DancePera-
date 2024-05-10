//
//  InvariantsVoronoiDelView.m
//  TapPera
//
//  Created by apple on 2024/1/31.
//

#import "InvariantsVoronoiDelView.h"

@implementation InvariantsVoronoiDelView

-(UIImageView *)bgImageView{
    if (!_bgImageView) {
        _bgImageView = [[UIImageView alloc]init];
        _bgImageView.userInteractionEnabled = YES;
        _bgImageView.image = [UIImage imageNamed:@"wsdl_logout_image"];
    }
    return _bgImageView;
}

-(UIImageView *)bgImageView1{
    if (!_bgImageView1) {
        _bgImageView1 = [[UIImageView alloc]init];
        _bgImageView1.userInteractionEnabled = YES;
        _bgImageView1.image = [UIImage imageNamed:@"del_bg"];
    }
    return _bgImageView1;
}

-(UILabel *)mainLabel{
    if (!_mainLabel) {
        _mainLabel = [DacoitOakletTapFactory ubiKnapsackCreate:[UIFont fontWithName:LINESeedSansAppBold size:TapPix7(36)] textColor:[UIColor colorWithCSS:@"#413E45"] textAliment:NSTextAlignmentCenter];
        _mainLabel.numberOfLines = 0;
        _mainLabel.text = @"Are you sure you want to deactivate your account? We value your presence and are here to help. If you have any concerns, please let us know. Remember, you're always welcome back!";
    }
    return _mainLabel;
}

- (UIButton *)changeBtn{
    if (!_changeBtn) {
        _changeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _changeBtn.layer.cornerRadius = TapPix7(30);
        _changeBtn.titleLabel.font = [UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(36)];
        [_changeBtn setBackgroundColor:[UIColor colorWithCSS:@"#413E45"]];
        [_changeBtn setTitle:@"Yes" forState:UIControlStateNormal];
        [_changeBtn setTitleColor:[UIColor colorWithCSS:@"#FFFFFF"] forState:UIControlStateNormal];
        [_changeBtn addTarget:self action:@selector(changeClick) forControlEvents:UIControlEventTouchUpInside];
        _changeBtn.enabled = NO;
    }
    return _changeBtn;
}

- (UIButton *)confirmBtn{
    if (!_confirmBtn) {
        _confirmBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _confirmBtn.layer.cornerRadius = TapPix7(30);
        _confirmBtn.titleLabel.font = [UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(36)];
        [_confirmBtn setBackgroundColor:[UIColor colorWithCSS:@"#3B7CFE"]];
        [_confirmBtn setTitle:@"Cancel" forState:UIControlStateNormal];
        [_confirmBtn setTitleColor:[UIColor colorWithCSS:@"#FFFFFF"] forState:UIControlStateNormal];
        [_confirmBtn addTarget:self action:@selector(confirmClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _confirmBtn;
}

- (UIButton *)iconBtn{
    if(!_iconBtn){
        _iconBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _iconBtn.touchAreaInsets = UIEdgeInsetsMake(TapPix7(20), TapPix7(20), TapPix7(20), TapPix7(20));
        [_iconBtn setImage:[UIImage imageNamed:@"access_icon_unselected"] forState:UIControlStateNormal];
        [_iconBtn addTarget:self action:@selector(eyebtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _iconBtn;
}

- (UIButton *)agreeBtn{
    if (!_agreeBtn) {
        _agreeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _agreeBtn.titleLabel.numberOfLines = 0;
        [_agreeBtn setTitleColor:[UIColor colorWithCSS:@"#C6C5C7"] forState:UIControlStateNormal];
        _agreeBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        [_agreeBtn setTitle:@"I agree to the above." forState:UIControlStateNormal];
        _agreeBtn.titleLabel.font = [UIFont fontWithName:LINESeedSansAppBold size:TapPix7(36)];
    }
    return _agreeBtn;
}

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self addSubview:self.bgImageView];
        [self addSubview:self.bgImageView1];
        [self.bgImageView1 addSubview:self.mainLabel];
        [self.bgImageView1 addSubview:self.changeBtn];
        [self.bgImageView1 addSubview:self.confirmBtn];
        [self.bgImageView1 addSubview:self.iconBtn];
        [self.bgImageView1 addSubview:self.agreeBtn];
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    [self.bgImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.bottom.right.equalTo(self);
        make.height.mas_equalTo(TapPix7(365));
    }];
    [self.bgImageView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self);
        make.bottom.equalTo(self.bgImageView.mas_top).offset(-TapPix7(37));
        make.size.mas_equalTo(CGSizeMake(TapPix7(670), TapPix7(721)));
    }];
    [self.mainLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.bgImageView1);
        make.left.equalTo(self.bgImageView1).offset(TapPix7(40));
        make.top.equalTo(self.bgImageView1).offset(TapPix7(70));
    }];
    [self.iconBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mainLabel.mas_bottom).offset(TapPix7(40));
        make.left.equalTo(self.bgImageView1).offset(TapPix7(70));
        make.size.mas_equalTo(CGSizeMake(TapPix7(44), TapPix7(44)));
    }];
    [self.agreeBtn mas_makeConstraints:^(MASConstraintMaker *make){
        make.top.equalTo(self.mainLabel.mas_bottom).offset(TapPix7(41));
        make.right.equalTo(self.bgImageView1);
        make.left.equalTo(self.iconBtn.mas_right).offset(TapPix7(30));
        make.height.mas_equalTo(TapPix7(43));
    }];
    [self.changeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(TapPix7(210), TapPix7(140)));
        make.top.equalTo(self.iconBtn.mas_bottom).offset(TapPix7(35));
        make.left.equalTo(self.bgImageView1).offset(TapPix7(40));
    }];
    [self.confirmBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(TapPix7(350), TapPix7(140)));
        make.top.equalTo(self.iconBtn.mas_bottom).offset(TapPix7(35));
        make.right.equalTo(self.bgImageView1).offset(-TapPix7(40));
    }];
}

- (void)changeClick{
    if (self.block1) {
        self.block1();
    }
}

- (void)confirmClick{
    if (self.block2) {
        self.block2();
    }
}

- (void)eyebtnClick:(UIButton *)btn{
    btn.selected = !btn.selected;
    if (btn.selected) {
        self.changeBtn.enabled = YES;
        [btn setImage:[UIImage imageNamed:@"xanthism_selected_icon"] forState:UIControlStateNormal];
    }else{
        self.changeBtn.enabled = NO;
        [btn setImage:[UIImage imageNamed:@"access_icon_unselected"] forState:UIControlStateNormal];
    }
}

@end
