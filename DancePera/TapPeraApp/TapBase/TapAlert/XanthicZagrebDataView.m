//
//  XanthicZagrebDataView.m
//  TapPera
//
//  Created by apple on 2024/1/31.
//

#import "XanthicZagrebDataView.h"

@implementation XanthicZagrebDataView

-(UIImageView *)bgImageView{
    if (!_bgImageView) {
        _bgImageView = [[UIImageView alloc]init];
        _bgImageView.image = [UIImage imageNamed:@"IteratorPageDefault"];
    }
    return _bgImageView;
}

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self addSubview:self.bgImageView];
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    [self.bgImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(TapPix7(632), TapPix7(476)));
        make.center.equalTo(self);
    }];
}

@end
