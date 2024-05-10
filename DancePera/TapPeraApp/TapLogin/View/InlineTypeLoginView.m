//
//  InlineTypeLoginView.m
//  TapPera
//
//  Created by apple on 2024/1/17.
//

#import "InlineTypeLoginView.h"

@implementation InlineTypeLoginView

-(UIButton *)backBtn{
    if (!_backBtn) {
        _backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_backBtn setImage:[UIImage imageNamed:@"for_icon_back"] forState:UIControlStateNormal];
        [_backBtn addTarget:self action:@selector(backClick) forControlEvents:UIControlEventTouchDown];
    }
    return _backBtn;
}

-(UIImageView *)iconImageView1{
    if (!_iconImageView1) {
        _iconImageView1 = [[UIImageView alloc]init];
        _iconImageView1.image = [UIImage imageNamed:@"tabaret_img_login"];
    }
    return _iconImageView1;
}

-(UIImageView *)iconImageView2{
    if (!_iconImageView2) {
        _iconImageView2 = [[UIImageView alloc]init];
        _iconImageView2.userInteractionEnabled = YES;
        _iconImageView2.image = [UIImage imageNamed:@"wildcard_input_login"];
    }
    return _iconImageView2;
}

-(UILabel *)lable1{
    if (!_lable1) {
        _lable1 = [DacoitOakletTapFactory ubiKnapsackCreate:[UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(36)] textColor:[UIColor colorWithCSS:@"#413E45"] textAliment:NSTextAlignmentLeft];
        _lable1.text = @"(+63)";
    }
    return _lable1;
}

-(UIImageView *)iconImageView3{
    if (!_iconImageView3) {
        _iconImageView3 = [[UIImageView alloc]init];
        _iconImageView3.userInteractionEnabled = YES;
        _iconImageView3.image = [UIImage imageNamed:@"vee_input_e"];
    }
    return _iconImageView3;
}

-(UIImageView *)iconImageView4{
    if (!_iconImageView4) {
        _iconImageView4 = [[UIImageView alloc]init];
        _iconImageView4.image = [UIImage imageNamed:@"sabaeanIconLoginfoot"];
    }
    return _iconImageView4;
}

-(UITextField *)phoneField{
    if(!_phoneField){
        _phoneField = [[UITextField alloc]init];
        _phoneField.delegate = self;
        _phoneField.textColor = [UIColor colorWithCSS:@"#413E45"];
        _phoneField.keyboardType = UIKeyboardTypeNumberPad;
        _phoneField.font = [UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(36)];
        NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc] initWithString:@"Cell Phone Number" attributes:
             @{NSForegroundColorAttributeName:[UIColor colorWithCSS:@"#C6C5C7"],
               NSFontAttributeName:[UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(36)]}];
        _phoneField.attributedPlaceholder = attrString;
    }
    return _phoneField;
}

-(UITextField *)codeField{
    if(!_codeField){
        _codeField = [[UITextField alloc]init];
        _codeField.delegate = self;
        _codeField.textColor = [UIColor colorWithCSS:@"#413E45"];
        _codeField.font = [UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(36)];
        _codeField.keyboardType = UIKeyboardTypeNumberPad;
        NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc] initWithString:@"Security Code" attributes:
             @{NSForegroundColorAttributeName:[UIColor colorWithCSS:@"#C6C5C7"],
               NSFontAttributeName:[UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(36)]}];
        _codeField.attributedPlaceholder = attrString;
    }
    return _codeField;
}

-(UIButton *)cancelBtn{
    if (!_cancelBtn) {
        _cancelBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _cancelBtn.hidden = YES;
        [_cancelBtn setImage:[UIImage imageNamed:@"call_cancel_input"] forState:UIControlStateNormal];
        [_cancelBtn addTarget:self action:@selector(cancelClick) forControlEvents:UIControlEventTouchDown];
    }
    return _cancelBtn;
}

- (UIButton *)sendBtn{
    if(!_sendBtn){
        _sendBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _sendBtn.titleLabel.font = [UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(36)];
        _sendBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
        [_sendBtn setTitleColor:[UIColor colorWithCSS:@"#413E45"] forState:UIControlStateNormal];
        [_sendBtn addTarget:self action:@selector(sendCodeClick) forControlEvents:UIControlEventTouchUpInside];
        [_sendBtn setTitle:@"Send" forState:UIControlStateNormal];
    }
    return _sendBtn;
}

- (UIButton *)iconBtn{
    if(!_iconBtn){
        _iconBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _iconBtn.touchAreaInsets = UIEdgeInsetsMake(TapPix7(20), TapPix7(20), TapPix7(20), TapPix7(20));
        [_iconBtn setImage:[UIImage imageNamed:@"xanthism_selected_icon"] forState:UIControlStateNormal];
        [_iconBtn addTarget:self action:@selector(eyebtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _iconBtn;
}

- (UIButton *)agreeBtn{
    if (!_agreeBtn) {
        _agreeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _agreeBtn.titleLabel.numberOfLines = 0;
        [_agreeBtn setTitleColor:[UIColor colorWithCSS:@"#C6C5C7"] forState:UIControlStateNormal];
        [_agreeBtn addTarget:self action:@selector(xieyiClick) forControlEvents:UIControlEventTouchUpInside];
        _agreeBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        _agreeBtn.titleLabel.font = [UIFont fontWithName:LINESeedSansAppBold size:TapPix7(24)];
        NSMutableAttributedString *titleStr = [[NSMutableAttributedString alloc]initWithString:@"By clicking login, you are consenting to the terms of the Privacy Policy."];
        [titleStr addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithCSS:@"#3B7CFE"] range:NSMakeRange(titleStr.length-15, 15)];
        [titleStr addAttribute:NSUnderlineStyleAttributeName value:@(NSUnderlineStyleSingle) range:NSMakeRange(titleStr.length-15, 15)];
        [_agreeBtn setAttributedTitle:titleStr forState:UIControlStateNormal];
    }
    return _agreeBtn;
}

- (UIButton *)loginBtn{
    if (!_loginBtn) {
        _loginBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_loginBtn setBackgroundColor:[UIColor colorWithCSS:@"#413E45"]];
        _loginBtn.layer.cornerRadius = TapPix7(30);
        _loginBtn.titleLabel.font = [UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(36)];
        [_loginBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_loginBtn setTitle:@"Log in" forState:UIControlStateNormal];
        [_loginBtn addTarget:self action:@selector(loginClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _loginBtn;
}

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self addSubview:self.backBtn];
        [self addSubview:self.iconImageView1];
        [self addSubview:self.iconImageView2];
        [self addSubview:self.iconImageView3];
        [self addSubview:self.iconImageView4];
        [self.iconImageView2 addSubview:self.cancelBtn];
        [self.iconImageView2 addSubview:self.lable1];
        [self.iconImageView2 addSubview:self.phoneField];
        [self.iconImageView3 addSubview:self.codeField];
        [self.iconImageView3 addSubview:self.sendBtn];
        [self addSubview:self.iconBtn];
        [self addSubview:self.agreeBtn];
        [self addSubview:self.loginBtn];
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    [self.backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(TapPix7(100));
        make.left.equalTo(self).offset(TapPix7(40));
        make.size.mas_equalTo(CGSizeMake(TapPix7(44), TapPix7(44)));
    }];
    [self.iconImageView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.backBtn.mas_bottom).offset(TapPix7(80));
        make.left.equalTo(self).offset(TapPix7(110));
        make.size.mas_equalTo(CGSizeMake(TapPix7(200), TapPix7(100)));
    }];
    [self.iconImageView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.iconImageView1.mas_bottom);
        make.left.equalTo(self).offset(TapPix7(40));
        make.centerX.equalTo(self);
        make.height.mas_equalTo(TapPix7(214));
    }];
    [self.iconImageView3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.iconImageView2.mas_bottom).offset(-TapPix7(8));
        make.left.equalTo(self).offset(TapPix7(40));
        make.centerX.equalTo(self);
        make.height.mas_equalTo(TapPix7(232));
    }];
    [self.lable1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.iconImageView2);
        make.bottom.equalTo(self.iconImageView2).offset(-TapPix7(30));
        make.left.equalTo(self.iconImageView2).offset(TapPix7(35));
    }];
    [self.phoneField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.iconImageView2);
        make.bottom.equalTo(self.iconImageView2).offset(-TapPix7(30));
        make.left.equalTo(self.lable1.mas_right).offset(TapPix7(25));
        make.width.mas_equalTo(TapPix7(400));
    }];
    [self.codeField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.iconImageView3);
        make.bottom.equalTo(self.iconImageView3).offset(-TapPix7(40));
        make.left.equalTo(self.iconImageView3).offset(TapPix7(70));
        make.width.mas_equalTo(TapPix7(350));
    }];
    [self.cancelBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.iconImageView2).offset(-TapPix7(35));
        make.size.mas_equalTo(CGSizeMake(TapPix7(45), TapPix7(44)));
        make.top.equalTo(self.iconImageView2).offset(TapPix7(72));
    }];
    [self.sendBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.iconImageView3).offset(-TapPix7(70));
        make.size.mas_equalTo(CGSizeMake(TapPix7(120), TapPix7(44)));
        make.top.equalTo(self.iconImageView3).offset(TapPix7(70));
    }];
    [self.iconBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.iconImageView3.mas_bottom).offset(TapPix7(73));
        make.left.equalTo(self).offset(TapPix7(70));
        make.size.mas_equalTo(CGSizeMake(TapPix7(44), TapPix7(44)));
    }];
    [self.agreeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.iconImageView3.mas_bottom).offset(TapPix7(60));
        make.right.equalTo(self).offset(-TapPix7(92));
        make.left.equalTo(self.iconBtn.mas_right).offset(TapPix7(30));
        make.height.mas_equalTo(TapPix7(60));
    }];
    [self.loginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self);
        make.top.equalTo(self.agreeBtn.mas_bottom).offset(TapPix7(40));
        make.size.mas_equalTo(CGSizeMake(TapPix7(670), TapPix7(140)));
    }];
    [self.iconImageView4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.bottom.right.equalTo(self);
        make.height.mas_equalTo(TapPix7(365));
    }];
}

- (void)backClick{
    if (self.block) {
        self.block();
    }
}

- (void)cancelClick{
    if (self.block1) {
        self.block1();
    }
}

- (void)sendCodeClick{
    if (self.block2) {
        self.block2();
    }
}

- (void)xieyiClick{
    if (self.block3) {
        self.block3();
    }
}

- (void)loginClick{
    if (self.block4) {
        self.block4();
    }
}

- (void)eyebtnClick:(UIButton *)btn{
    btn.selected = !btn.selected;
    if (btn.selected) {
        self.loginBtn.enabled = NO;
        [self.loginBtn setBackgroundColor:[UIColor colorWithCSS:@"#C6C5C7"]];
        [btn setImage:[UIImage imageNamed:@"access_icon_unselected"] forState:UIControlStateNormal];
    }else{
        self.loginBtn.enabled = YES;
        [self.loginBtn setBackgroundColor:[UIColor colorWithCSS:@"#413E45"]];
        [btn setImage:[UIImage imageNamed:@"xanthism_selected_icon"] forState:UIControlStateNormal];
    }
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    NSInteger existedLength = textField.text.length;
    NSInteger selectedLength = range.length;
    NSInteger replaceLength = string.length;
    NSInteger numCount = existedLength - selectedLength + replaceLength;
    if(textField == self.phoneField){
        if (numCount == 0) {
            self.cancelBtn.hidden = YES;
        }else if (numCount > 0){
            self.cancelBtn.hidden = NO;
            if(numCount > 15) {
                return NO;
            }
        }
    }else{
        if(numCount > 6) {
            return NO;
        }
    }
    return YES;
}

@end
