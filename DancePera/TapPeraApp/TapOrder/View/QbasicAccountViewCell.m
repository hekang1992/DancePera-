//
//  QbasicAccountViewCell.m
//  TapPera
//
//  Created by apple on 2024/1/31.
//

#import "QbasicAccountViewCell.h"

@implementation QbasicAccountViewCell

-(UIImageView *)bgImageView{
    if (!_bgImageView) {
        _bgImageView = [[UIImageView alloc]init];
        _bgImageView.image = [UIImage imageNamed:@"xanthippeAddBpersonal"];
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

-(UIImageView *)bgImageView2{
    if (!_bgImageView2) {
        _bgImageView2 = [[UIImageView alloc]init];
        _bgImageView2.image = [UIImage imageNamed:@"HttpNameSlice"];
        _bgImageView2.layer.cornerRadius = TapPix7(30);
        _bgImageView2.clipsToBounds = YES;
    }
    return _bgImageView2;
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

-(UILabel *)numLabel3{
    if (!_numLabel3) {
        _numLabel3 = [DacoitOakletTapFactory ubiKnapsackCreate:[UIFont fontWithName:LINESeedSansAppBlackItalic size:TapPix7(32)] textColor:[UIColor colorWithCSS:@"#413E45"] textAliment:NSTextAlignmentLeft];
        CGFloat angleInRadians = -3.1 * M_PI / 180.0;
        _numLabel3.transform = CGAffineTransformMakeRotation(angleInRadians);
    }
    return _numLabel3;
}

- (JhtHorizontalMarquee *)horizontalMarquee{
    if (!_horizontalMarquee) {
        _horizontalMarquee = [[JhtHorizontalMarquee alloc] initWithFrame:CGRectZero singleScrollDuration:0.0];
        _horizontalMarquee.textColor = [UIColor whiteColor];
        _horizontalMarquee.font = [UIFont fontWithName:LINESeedSansAppBold size:TapPix7(26)];
    }
    return _horizontalMarquee;
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.bgImageView];
        [self.bgImageView addSubview:self.label1];
        [self.bgImageView addSubview:self.label2];
        [self.bgImageView addSubview:self.label3];
        [self.bgImageView addSubview:self.label4];
        [self.bgImageView addSubview:self.numLabel3];
        [self.bgImageView addSubview:self.bgImageView1];
        [self.contentView addSubview:self.bgImageView2];
        [self.bgImageView addSubview:self.horizontalMarquee];
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    [self.bgImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.width.mas_equalTo(TapPix7(670));
        make.bottom.equalTo(self.contentView);
    }];
    [self.label1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.bgImageView).offset(TapPix7(70));
        make.top.equalTo(self.bgImageView).offset(TapPix7(151));
        make.size.mas_equalTo(CGSizeMake(TapPix7(300), TapPix7(30)));
    }];
    [self.label2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.bgImageView).offset(-TapPix7(70));
        make.top.equalTo(self.bgImageView).offset(TapPix7(151));
        make.size.mas_equalTo(CGSizeMake(TapPix7(300), TapPix7(30)));
    }];
    [self.label3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.bgImageView).offset(TapPix7(70));
        make.top.equalTo(self.label1.mas_bottom).offset(TapPix7(16));
        make.size.mas_equalTo(CGSizeMake(TapPix7(300), TapPix7(30)));
    }];
    [self.label4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.bgImageView).offset(-TapPix7(70));
        make.top.equalTo(self.label2.mas_bottom).offset(TapPix7(16));
        make.size.mas_equalTo(CGSizeMake(TapPix7(300), TapPix7(30)));
    }];
    [self.bgImageView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.bgImageView).offset(-TapPix7(70));
        make.size.mas_equalTo(CGSizeMake(TapPix7(140), TapPix7(60)));
        make.top.equalTo(self.bgImageView).offset(TapPix7(71));
    }];
    [self.bgImageView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.bgImageView).offset(TapPix7(40));
        make.size.mas_equalTo(CGSizeMake(TapPix7(120), TapPix7(123)));
        make.top.equalTo(self.contentView).offset(TapPix7(40));
    }];
    [self.numLabel3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.bgImageView).offset(TapPix7(90*2));
        make.size.mas_equalTo(CGSizeMake(TapPix7(400), TapPix7(40)));
        make.top.equalTo(self.bgImageView).offset(TapPix7(28));
    }];
    [self.horizontalMarquee mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(TapPix7(32));
        make.bottom.equalTo(self.bgImageView).offset(-TapPix7(74));
        make.left.equalTo(self.bgImageView).offset(TapPix7(140));
        make.right.equalTo(self.bgImageView).offset(-TapPix7(74));
    }];
}

-(void)setModel:(AachenXanthippeOredrModel *)model{
    _model = model;
    self.label1.text = model.gazes;
    self.label2.text = model.lattices;
    self.label3.text = model.grasps;
    self.label4.text = model.clasps;
    self.numLabel3.text = model.annihilation;
    [self.bgImageView2 sd_setImageWithURL:[NSURL URLWithString:model.supernatural] placeholderImage:[UIImage imageNamed:@"HttpNameSlice"]];
    if ([model.regardlessness isEqualToString:@"9"]) {
        self.numLabel3.textColor = [UIColor colorWithCSS:@"#413E45"];
    }else{
        self.numLabel3.textColor = [UIColor colorWithCSS:@"#413E45"];
    }
    if ([model.regardlessness isEqualToString:@"8"]) {
        if (ISTAPNOTSTRING(model.finds)) {
            [self.horizontalMarquee setNeedsLayout];
            [self layoutIfNeeded];
            self.horizontalMarquee.text = model.finds;
            [self.horizontalMarquee marqueeOfSettingWithState:MarqueeStart_H];
            self.bgImageView.image = [UIImage imageNamed:@"equal_bg_order"];
        }else{
            self.horizontalMarquee.hidden = YES;
            self.bgImageView.image = [UIImage imageNamed:@"manifest_bg_order"];
        }
    }else if ([model.regardlessness isEqualToString:@"6"]){
        if (ISTAPNOTSTRING(model.finds)) {
            [self.horizontalMarquee setNeedsLayout];
            [self layoutIfNeeded];
            self.horizontalMarquee.text = model.finds;
            [self.horizontalMarquee marqueeOfSettingWithState:MarqueeStart_H];
            self.bgImageView.image = [UIImage imageNamed:@"fatherhood_order_bg"];
        }else{
            self.horizontalMarquee.hidden = YES;
            self.bgImageView.image = [UIImage imageNamed:@"rabbah_bg_order"];
        }
    }else{}
}

@end
