//
//  MessageAaronPhotoView.m
//  TapPera
//
//  Created by apple on 2024/1/18.
//

#import "MessageAaronPhotoView.h"

@implementation MessageAaronPhotoView

-(UIImageView *)bgImageView{
    if (!_bgImageView) {
        _bgImageView = [[UIImageView alloc]init];
        _bgImageView.userInteractionEnabled = YES;
        _bgImageView.image = [UIImage imageNamed:@"video_pop_idupload"];
    }
    return _bgImageView;
}

-(UIButton *)albumBtn{
    if (!_albumBtn) {
        _albumBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_albumBtn addTarget:self action:@selector(albumClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _albumBtn;
}

-(UIButton *)cameraBtn{
    if (!_cameraBtn) {
        _cameraBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_cameraBtn addTarget:self action:@selector(cameraClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _cameraBtn;
}

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self addSubview:self.bgImageView];
        [self addSubview:self.albumBtn];
        [self addSubview:self.cameraBtn];
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    [self.bgImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self);
    }];
    [self.albumBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.bgImageView);
        make.height.mas_equalTo(TapPix7(110));
        make.left.equalTo(self.bgImageView);
        make.top.equalTo(self.bgImageView);
    }];
    [self.cameraBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.bgImageView);
        make.height.mas_equalTo(TapPix7(100));
        make.left.equalTo(self.bgImageView);
        make.bottom.equalTo(self.bgImageView);
    }];
}

- (void)albumClick{
    if (self.block1) {
        self.block1();
    }
}

- (void)cameraClick{
    if (self.block2) {
        self.block2();
    }
}

@end
