//
//  CabanaRightAuthView.m
//  TapPera
//
//  Created by apple on 2024/1/18.
//

#import "CabanaRightAuthView.h"

@implementation CabanaRightAuthView

-(UIImageView *)bgImageView{
    if (!_bgImageView) {
        _bgImageView = [[UIImageView alloc]init];
        _bgImageView.userInteractionEnabled = YES;
        _bgImageView.image = [UIImage imageNamed:@"sabaeanIconLoginfoot"];
    }
    return _bgImageView;
}

-(UIImageView *)bgImageView1{
    if (!_bgImageView1) {
        _bgImageView1 = [[UIImageView alloc]init];
        _bgImageView1.userInteractionEnabled = YES;
        _bgImageView1.image = [UIImage imageNamed:@"idtype_bg"];
    }
    return _bgImageView1;
}

-(UIImageView *)bgImageView2{
    if (!_bgImageView2) {
        _bgImageView2 = [[UIImageView alloc]init];
        _bgImageView2.userInteractionEnabled = YES;
        _bgImageView2.image = [UIImage imageNamed:@"bab_id_card"];
    }
    return _bgImageView2;
}

-(UILabel *)mainLabel{
    if (!_mainLabel) {
        _mainLabel = [DacoitOakletTapFactory ubiKnapsackCreate:[UIFont fontWithName:LINESeedSansAppBold size:TapPix7(28)] textColor:[UIColor colorWithCSS:@"#413E45"] textAliment:NSTextAlignmentLeft];
        _mainLabel.numberOfLines = 0;
        _mainLabel.text = @"Please verify that the ID card type you've chosen matches the one you're about to upload to ensure a successful verification process.";
        NSMutableParagraphStyle *paragraphStyle = [NSMutableParagraphStyle new];
        paragraphStyle.lineSpacing = TapPix7(9);
        NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
        [attributes setObject:paragraphStyle forKey:NSParagraphStyleAttributeName];
        _mainLabel.attributedText = [[NSAttributedString alloc] initWithString:_mainLabel.text attributes:attributes];
    }
    return _mainLabel;
}

- (UIButton *)changeBtn{
    if (!_changeBtn) {
        _changeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _changeBtn.layer.cornerRadius = TapPix7(30);
        _changeBtn.titleLabel.font = [UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(36)];
        [_changeBtn setBackgroundColor:[UIColor colorWithCSS:@"#3B7CFE"]];
        [_changeBtn setTitle:@"Change" forState:UIControlStateNormal];
        [_changeBtn setTitleColor:[UIColor colorWithCSS:@"#FFFFFF"] forState:UIControlStateNormal];
        [_changeBtn addTarget:self action:@selector(changeClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _changeBtn;
}

- (UIButton *)confirmBtn{
    if (!_confirmBtn) {
        _confirmBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _confirmBtn.layer.cornerRadius = TapPix7(30);
        _confirmBtn.titleLabel.font = [UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(36)];
        [_confirmBtn setBackgroundColor:[UIColor colorWithCSS:@"#413E45"]];
        [_confirmBtn setTitle:@"Got It" forState:UIControlStateNormal];
        [_confirmBtn setTitleColor:[UIColor colorWithCSS:@"#FFFFFF"] forState:UIControlStateNormal];
        [_confirmBtn addTarget:self action:@selector(confirmClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _confirmBtn;
}

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self addSubview:self.bgImageView];
        [self addSubview:self.bgImageView1];
        [self addSubview:self.bgImageView2];
        [self.bgImageView1 addSubview:self.mainLabel];
        [self.bgImageView1 addSubview:self.changeBtn];
        [self.bgImageView1 addSubview:self.confirmBtn];
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
        make.size.mas_equalTo(CGSizeMake(TapPix7(670), TapPix7(576)));
    }];
    [self.bgImageView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.bgImageView1.mas_top).offset(-TapPix7(151));
        make.right.equalTo(self.bgImageView1.mas_right).offset(-TapPix7(40));
        make.size.mas_equalTo(CGSizeMake(TapPix7(478), TapPix7(294)));
    }];
    [self.mainLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.bgImageView1);
        make.left.equalTo(self.bgImageView1).offset(TapPix7(40));
        make.top.equalTo(self.bgImageView2.mas_bottom).offset(TapPix7(24));
    }];
    [self.changeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(TapPix7(210), TapPix7(140)));
        make.top.equalTo(self.mainLabel.mas_bottom).offset(TapPix7(18));
        make.left.equalTo(self.bgImageView1).offset(TapPix7(40));
    }];
    [self.confirmBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(TapPix7(350), TapPix7(140)));
        make.top.equalTo(self.mainLabel.mas_bottom).offset(TapPix7(18));
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

@end
