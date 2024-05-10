//
//  IacuLabefactionJsonHeader.m
//  TapPera
//
//  Created by apple on 2024/1/17.
//

#import "IacuLabefactionJsonHeader.h"

@implementation IacuLabefactionJsonHeader

-(LOTAnimationView *)headTapView{
    if (!_headTapView) {
        _headTapView = [LOTAnimationView animationNamed:@"tapPullDown.json" inBundle:[NSBundle mainBundle]];
        _headTapView.animationSpeed = 1;
        _headTapView.loopAnimation = YES;
        [_headTapView play];
    }
    return _headTapView;
}

- (void)prepare{
    [super prepare];
    [self addSubview:self.headTapView];
}

- (void)placeSubviews{
    [super placeSubviews];
    [self.headTapView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self);
        make.centerX.equalTo(self);
        make.size.mas_equalTo(CGSizeMake(TapPix7(200), TapPix7(100)));
    }];
}

@end
