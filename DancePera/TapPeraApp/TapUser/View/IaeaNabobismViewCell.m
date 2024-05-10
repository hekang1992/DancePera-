//
//  IaeaNabobismViewCell.m
//  TapPera
//
//  Created by apple on 2024/1/31.
//

#import "IaeaNabobismViewCell.h"

@implementation IaeaNabobismViewCell

-(UIView *)bgView{
    if (!_bgView) {
        _bgView = [[UIView alloc]init];
    }
    return _bgView;
}

-(UIImageView *)bgImageView{
    if (!_bgImageView) {
        _bgImageView = [[UIImageView alloc]init];
        _bgImageView.image = [UIImage imageNamed:@"RadioIconSlice 25"];
    }
    return _bgImageView;
}

-(UIImageView *)bgImageView1{
    if (!_bgImageView1) {
        _bgImageView1 = [[UIImageView alloc]init];
        _bgImageView1.image = [UIImage imageNamed:@"LabelledRightSlice"];
    }
    return _bgImageView1;
}

-(UILabel *)label1{
    if (!_label1) {
        _label1 = [DacoitOakletTapFactory ubiKnapsackCreate:[UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(24)] textColor:[UIColor colorWithCSS:@"#413E45"] textAliment:NSTextAlignmentLeft];
    }
    return _label1;
}

-(UILabel *)label2{
    if (!_label2) {
        _label2 = [DacoitOakletTapFactory ubiKnapsackCreate:[UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(24)] textColor:[UIColor colorWithCSS:@"#413E45"] textAliment:NSTextAlignmentRight];
    }
    return _label2;
}

-(UILabel *)label3{
    if (!_label3) {
        _label3 = [DacoitOakletTapFactory ubiKnapsackCreate:[UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(24)] textColor:[UIColor colorWithCSS:@"#413E45"] textAliment:NSTextAlignmentLeft];
    }
    return _label3;
}

-(UILabel *)label4{
    if (!_label4) {
        _label4 = [DacoitOakletTapFactory ubiKnapsackCreate:[UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(24)] textColor:[UIColor colorWithCSS:@"#413E45"] textAliment:NSTextAlignmentRight];
    }
    return _label4;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self.contentView addSubview:self.bgView];
        [self.bgView addSubview:self.bgImageView];
        [self.bgImageView addSubview:self.label1];
        [self.bgImageView addSubview:self.label2];
        [self.bgImageView addSubview:self.label3];
        [self.bgImageView addSubview:self.label4];
        [self.bgView addSubview:self.bgImageView1];
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    [self.bgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.contentView);
    }];
    [self.bgImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(TapPix7(155));
        make.left.bottom.equalTo(self);
        make.width.mas_equalTo(TapPix7(590));
    }];
    [self.label1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.bgImageView).offset(TapPix7(30));
        make.top.equalTo(self.bgImageView).offset(TapPix7(57));
        make.size.mas_equalTo(CGSizeMake(TapPix7(300), TapPix7(30)));
    }];
    [self.label2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.bgImageView).offset(-TapPix7(30));
        make.top.equalTo(self.bgImageView).offset(TapPix7(57));
        make.size.mas_equalTo(CGSizeMake(TapPix7(300), TapPix7(30)));
    }];
    [self.label3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.bgImageView).offset(TapPix7(30));
        make.top.equalTo(self.label1.mas_bottom).offset(TapPix7(16));
        make.size.mas_equalTo(CGSizeMake(TapPix7(300), TapPix7(30)));
    }];
    [self.label4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.bgImageView).offset(-TapPix7(30));
        make.top.equalTo(self.label2.mas_bottom).offset(TapPix7(16));
        make.size.mas_equalTo(CGSizeMake(TapPix7(300), TapPix7(30)));
    }];
    [self.bgImageView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.bgImageView).offset(-TapPix7(30));
        make.size.mas_equalTo(CGSizeMake(TapPix7(140), TapPix7(60)));
        make.bottom.equalTo(self.bgImageView.mas_top).offset(TapPix7(30));
    }];
}

-(void)setModel:(AachenXanthippeOredrModel *)model{
    _model = model;
    self.label1.text = model.gazes;
    self.label2.text = model.lattices;
    self.label3.text = model.grasps;
    self.label4.text = model.clasps;
}

@end
