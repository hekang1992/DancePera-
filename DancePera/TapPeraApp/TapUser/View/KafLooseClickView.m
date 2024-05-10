//
//  KafLooseClickView.m
//  TapPera
//
//  Created by apple on 2024/1/30.
//

#import "KafLooseClickView.h"

@implementation KafLooseClickView

-(UIView *)bgView{
    if (!_bgView) {
        _bgView = [[UIView alloc]init];
        _bgView.layer.borderWidth = TapPix7(6);
        _bgView.layer.cornerRadius = TapPix7(30);
        _bgView.layer.borderColor = [UIColor colorWithCSS:@"#413E45"].CGColor;
    }
    return _bgView;
}

-(UIButton *)btn{
    if (!_btn) {
        _btn = [UIButton buttonWithType:UIButtonTypeCustom];
        _btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        [_btn setTitle:@"Privacy Policy" forState:UIControlStateNormal];
        [_btn setTitleColor:[UIColor colorWithCSS:@"#413E45"] forState:UIControlStateNormal];
        _btn.titleLabel.font = [UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(32)];
        _btn.titleEdgeInsets = UIEdgeInsetsMake(0, TapPix7(40), 0, 0);
        [_btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _btn;
}

-(UIImageView *)bgImageView{
    if (!_bgImageView) {
        _bgImageView = [[UIImageView alloc]init];
        _bgImageView.image = [UIImage imageNamed:@"late_personal_loan"];
    }
    return _bgImageView;
}

-(UIImageView *)bgImageView1{
    if (!_bgImageView1) {
        _bgImageView1 = [[UIImageView alloc]init];
        _bgImageView1.hidden = YES;
    }
    return _bgImageView1;
}

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self addSubview:self.bgView];
        [self.bgView addSubview:self.btn];
        [self.bgView addSubview:self.bgImageView];
        [self.bgView addSubview:self.bgImageView1];
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    [self.bgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self);
    }];
    [self.btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.bgView);
    }];
    [self.bgImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(TapPix7(196));
        make.top.equalTo(self.bgView).offset(TapPix7(14));
        make.right.equalTo(self.bgView).offset(-TapPix7(14));
        make.bottom.equalTo(self.bgView);
    }];
    [self.bgImageView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.bgView);
        make.size.mas_equalTo(CGSizeMake(TapPix7(44), TapPix7(44)));
        make.right.equalTo(self.bgView).offset(-TapPix7(40));
    }];
}

- (void)btnClick{
    if (self.block) {
        self.block();
    }
}

@end
