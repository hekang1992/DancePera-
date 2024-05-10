//
//  YachtHamiltonianViewCell.m
//  TapPera
//
//  Created by apple on 2024/2/2.
//

#import "YachtHamiltonianViewCell.h"

@implementation YachtHamiltonianViewCell

-(UIImageView *)bgImageView{
    if (!_bgImageView) {
        _bgImageView = [[UIImageView alloc]init];
        _bgImageView.image = [UIImage imageNamed:@"OakImgSlice"];
    }
    return _bgImageView;
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self addSubview:self.bgImageView];
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    [self.bgImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self);
    }];
}

-(void)setModel:(QandaharRecursiveBnnerModel *)model{
    _model = model;
    [self.bgImageView sd_setImageWithURL:[NSURL URLWithString:model.supremely] placeholderImage:[UIImage imageNamed:@"OakImgSlice"]];
}

@end
