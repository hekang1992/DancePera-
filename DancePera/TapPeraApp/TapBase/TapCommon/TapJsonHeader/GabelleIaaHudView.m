//
//  GabelleIaaHudView.m
//  GabelleIaaHudView
//
//  Created by GabelleIaaHudView on 2020/7/24.
//  Copyright © 2020 HK. All rights reserved.
//

#import "GabelleIaaHudView.h"

@implementation GabelleIaaHudView

-(UIView *)grayView{
    if(!_grayView){
        _grayView = [[UIView alloc]init];
        _grayView.backgroundColor = [[UIColor blackColor]colorWithAlphaComponent:0.1];
    }
    return _grayView;
}

- (LOTAnimationView *)hudView{
    if (!_hudView) {
        _hudView=[LOTAnimationView animationNamed:@"loading-tap1.json" inBundle:[NSBundle mainBundle]];
        _hudView.animationSpeed = 1;
        _hudView.loopAnimation = YES;
        [_hudView play];
    }
    return _hudView;
}

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.grayView];
        [self.grayView addSubview:self.hudView];
    }
    return self;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    [self.grayView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self);
    }];
    [self.hudView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self);
        make.size.mas_equalTo(CGSizeMake(TapPix7(400), TapPix7(400)));
    }];
}

@end
