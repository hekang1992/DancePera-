//
//  XanthismPlacementFaceView.m
//  TapPera
//
//  Created by apple on 2024/1/19.
//

#import "XanthismPlacementFaceView.h"

@implementation XanthismPlacementFaceView

-(UIButton *)faceBtn{
    if (!_faceBtn) {
        _faceBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _faceBtn.titleLabel.font = [UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(36)];
        [_faceBtn setTitle:@"Initiate" forState:UIControlStateNormal];
        [_faceBtn setBackgroundImage:[UIImage imageNamed:@"iaa_idupload_but"] forState:UIControlStateNormal];
        [_faceBtn addTarget:self action:@selector(faceClick) forControlEvents:UIControlEventTouchUpInside];
        [_faceBtn setBackgroundImage:[UIImage imageNamed:@"rabaul_faceid_but"] forState:UIControlStateNormal];
    }
    return _faceBtn;
}

-(UIImageView *)faceImageView1{
    if (!_faceImageView1) {
        _faceImageView1 = [[UIImageView alloc]init];
        _faceImageView1.image = [UIImage imageNamed:@"faceid_bg"];
    }
    return _faceImageView1;
}

-(UIImageView *)faceImageView2{
    if (!_faceImageView2) {
        _faceImageView2 = [[UIImageView alloc]init];
        _faceImageView2.image = [UIImage imageNamed:@"baba_image_faceid"];
        _faceImageView2.layer.cornerRadius = TapPix7(30);
        _faceImageView2.layer.masksToBounds = YES;
    }
    return _faceImageView2;
}

-(UILabel *)descLabel{
    if (!_descLabel) {
        _descLabel = [DacoitOakletTapFactory ubiKnapsackCreate:[UIFont fontWithName:LINESeedSansAppBold size:TapPix7(30)] textColor:[UIColor colorWithCSS:@"#413E45"] textAliment:NSTextAlignmentLeft];
        _descLabel.numberOfLines = 0;
        _descLabel.text = @"Optimize by ensuring good lighting, avoiding obstructions, maintaining a natural expression, having a clear environment, and staying relatively still for accuracy and reliability.";
    }
    return _descLabel;
}

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self addSubview:self.faceBtn];
        [self addSubview:self.faceImageView1];
        [self.faceImageView1 addSubview:self.faceImageView2];
        [self.faceImageView1 addSubview:self.descLabel];
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    [self.faceBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self);
        make.size.mas_equalTo(CGSizeMake(TapPix7(670), TapPix7(140)));
        make.bottom.equalTo(self).offset(-TapPix7(170*2));
    }];
    [self.faceImageView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self);
        make.bottom.equalTo(self.faceBtn.mas_top).offset(-TapPix7(49));
        make.size.mas_equalTo(CGSizeMake(TapPix7(670), TapPix7(523)));
    }];
    [self.faceImageView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.faceImageView1).offset(-TapPix7(50));
        make.top.equalTo(self.faceImageView1).offset(-TapPix7(99));
        make.size.mas_equalTo(CGSizeMake(TapPix7(478), TapPix7(311)));
    }];
    [self.descLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.faceImageView1);
        make.left.equalTo(self.faceImageView1).offset(TapPix7(40));
        make.top.equalTo(self.faceImageView2.mas_bottom).offset(TapPix7(24));
    }];
}

- (void)faceClick{
    if (self.block) {
        self.block();
    }
}

@end
