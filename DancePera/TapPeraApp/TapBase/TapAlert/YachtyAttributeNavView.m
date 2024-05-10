//
//  YachtyAttributeNavView.m
//  TapPera
//
//  Created by apple on 2024/1/18.
//

#import "YachtyAttributeNavView.h"

@implementation YachtyAttributeNavView

- (UIButton *)backBtn{
    if (!_backBtn) {
        _backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_backBtn setImage:[UIImage imageNamed:@"for_icon_back"] forState:UIControlStateNormal];
        [_backBtn addTarget:self action:@selector(backTapClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _backBtn;
}

- (UIButton *)rightBtn{
    if (!_rightBtn) {
        _rightBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_rightBtn setImage:[UIImage imageNamed:@"dacquoise_nav_icon"] forState:UIControlStateNormal];
        [_rightBtn addTarget:self action:@selector(backTapClick1) forControlEvents:UIControlEventTouchUpInside];
        _rightBtn.hidden = YES;
    }
    return _rightBtn;
}

-(UILabel *)titleLabel{
    if(!_titleLabel){
        _titleLabel = [DacoitOakletTapFactory ubiKnapsackCreate:[UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(40)] textColor:[UIColor colorWithCSS:@"#413E45"] textAliment:NSTextAlignmentCenter];
    }
    return _titleLabel;
}

-(instancetype)initWithFrame:(CGRect)frame{
    if(self=[super initWithFrame:frame]){
        self.backgroundColor = [UIColor whiteColor];
        [self addSubview:self.backBtn];
        [self addSubview:self.titleLabel];
        [self addSubview:self.rightBtn];
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    [self.backBtn mas_makeConstraints:^(MASConstraintMaker *make){
        make.bottom.equalTo(self).offset(-TapPix7(4));
        make.left.equalTo(self).offset(TapPix7(40));
        make.size.mas_equalTo(CGSizeMake(TapPix7(80), TapPix7(80)));
    }];
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self);
        make.bottom.equalTo(self).offset(-TapPix7(20));
        make.size.mas_equalTo(CGSizeMake(TapPix7(520), TapPix7(54)));
    }];
    [self.rightBtn mas_makeConstraints:^(MASConstraintMaker *make){
        make.bottom.equalTo(self).offset(-TapPix7(4));
        make.right.equalTo(self).offset(-TapPix7(56));
        make.size.mas_equalTo(CGSizeMake(TapPix7(88), TapPix7(88)));
    }];
}

- (void)backTapClick{
    if(self.block){
        self.block();
    }
}

- (void)backTapClick1{
    if(self.block1){
        self.block1();
    }
}

@end
