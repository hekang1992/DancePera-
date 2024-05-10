//
//  ImplicitMinkowskiBarButton.m
//  TapPera
//
//  Created by apple on 2022/34/8.
//


#import "ImplicitMinkowskiBarButton.h"

@implementation ImplicitMinkowskiBarButton

- (UIButton *)iconBtn {
    if (!_iconBtn) {
        _iconBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _iconBtn.contentMode = UIViewContentModeCenter;
        [_iconBtn addTarget:self action:@selector(iconButtonClick:) forControlEvents:UIControlEventTouchDown];
        _iconBtn.alpha = 0;
    }
    return _iconBtn;
}

- (UILabel *)titleLbl {
    if (!_titleLbl) {
        _titleLbl = [[UILabel alloc] init];
        _titleLbl.textColor = [UIColor colorWithCSS:@"#B6B8C8"];
        _titleLbl.font = [UIFont fontWithName:LimelightRegular size:TapPix7(30)];
        _titleLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _titleLbl;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        CGFloat width = (PeraScreenWidth - TapPix7(60))/4;
        self.iconBtn.frame = CGRectMake(0, TapPix7(20), width, TapPix7(64));
        self.titleLbl.frame = CGRectMake(0, TapPix7(65) , width, TapPix7(40));
        [self addSubview:self.iconBtn];
        [self addSubview:self.titleLbl];
    }
    return self;
}

- (void)iconButtonClick:(ImplicitMinkowskiBarButton *)ybButton {
    if ([self.delegate respondsToSelector:@selector(searchingSignalButton:)]) {
        [self.delegate searchingSignalButton:self];
    }
}

- (void)setTabBarImageUrl:(NSString *)imageUrl title:(NSString *)title {
    self.titleLbl.text = title;
    [self.iconBtn setImage:[UIImage imageNamed:imageUrl] forState:UIControlStateNormal];
}

@end
