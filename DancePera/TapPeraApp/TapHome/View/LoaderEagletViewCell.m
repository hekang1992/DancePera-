//
//  LoaderEagletViewCell.m
//  TapPera
//
//  Created by apple on 2024/2/2.
//

#import "LoaderEagletViewCell.h"

@implementation LoaderEagletViewCell

-(UIView *)bgView{
    if (!_bgView) {
        _bgView = [[UIView alloc]init];
        _bgView.layer.borderWidth = TapPix7(6);
        _bgView.layer.cornerRadius = TapPix7(30);
        _bgView.layer.borderColor = [UIColor colorWithCSS:@"#413E45"].CGColor;
    }
    return _bgView;
}

-(UIView *)colorView{
    if (!_colorView) {
        _colorView = [[UIView alloc]init];
        _colorView.layer.cornerRadius = TapPix7(14);
        _colorView.backgroundColor = [UIColor colorWithCSS:@"#F75584"];
        _colorView.hidden = YES;
    }
    return _colorView;
}

-(UIImageView *)iconImageView{
    if (!_iconImageView) {
        _iconImageView = [[UIImageView alloc]init];
        _iconImageView.layer.cornerRadius = TapPix7(30);
        _iconImageView.layer.borderWidth = TapPix7(6);
        _iconImageView.layer.borderColor = [UIColor whiteColor].CGColor;
        _iconImageView.clipsToBounds = YES;
    }
    return _iconImageView;
}

-(UILabel *)nameLabel{
    if (!_nameLabel) {
        _nameLabel = [DacoitOakletTapFactory ubiKnapsackCreate:[UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(32)] textColor:[UIColor colorWithCSS:@"#413E45"] textAliment:NSTextAlignmentLeft];
    }
    return _nameLabel;
}

-(UILabel *)descLabel{
    if (!_descLabel) {
        _descLabel = [DacoitOakletTapFactory ubiKnapsackCreate:[UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(26)] textColor:[UIColor colorWithCSS:@"#C6C5C7"] textAliment:NSTextAlignmentLeft];
        _descLabel.numberOfLines = 0;
    }
    return _descLabel;
}

-(UIButton *)appBtn{
    if (!_appBtn) {
        _appBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _appBtn.titleLabel.font = [UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(32)];
        [_appBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_appBtn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _appBtn;
}

-(UIImageView *)iconImageView1{
    if (!_iconImageView1) {
        _iconImageView1 = [[UIImageView alloc]init];
        _iconImageView1.image = [UIImage imageNamed:@"AareAddSlice"];
    }
    return _iconImageView1;
}

-(UIImageView *)iconImageView2{
    if (!_iconImageView2) {
        _iconImageView2 = [[UIImageView alloc]init];
        _iconImageView2.image = [UIImage imageNamed:@"RadioIconSlice 227"];
    }
    return _iconImageView2;
}

-(UILabel *)descLabel1{
    if (!_descLabel1) {
        _descLabel1 = [DacoitOakletTapFactory ubiKnapsackCreate:[UIFont fontWithName:LINESeedSansAppBlackItalic size:TapPix7(20)] textColor:[UIColor colorWithCSS:@"#FFFFFF"] textAliment:NSTextAlignmentCenter];
        _descLabel1.numberOfLines = 0;
        CGFloat angleInRadians = -3.1 * M_PI / 180.0;
        _descLabel1.transform = CGAffineTransformMakeRotation(angleInRadians);
    }
    return _descLabel1;
}

-(UILabel *)descLabel2{
    if (!_descLabel2) {
        _descLabel2 = [DacoitOakletTapFactory ubiKnapsackCreate:[UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(24)] textColor:[UIColor colorWithCSS:@"#FFFFFF"] textAliment:NSTextAlignmentLeft];
        _descLabel2.numberOfLines = 0;
    }
    return _descLabel2;
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.bgView];
        [self.contentView addSubview:self.iconImageView];
        [self.contentView addSubview:self.nameLabel];
        [self.bgView addSubview:self.appBtn];
        [self.contentView addSubview:self.iconImageView1];
        [self.bgView addSubview:self.descLabel];
        [self.iconImageView1 addSubview:self.descLabel1];
        [self.bgView addSubview:self.colorView];
        [self.colorView addSubview:self.iconImageView2];
        [self.colorView addSubview:self.descLabel2];
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    [self.bgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView).offset(TapPix7(40));
        make.centerX.equalTo(self.contentView);
        make.bottom.equalTo(self.contentView);
        make.top.equalTo(self.contentView).offset(TapPix7(93));
    }];
    [self.iconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView).offset(TapPix7(70));
        make.size.mas_equalTo(CGSizeMake(TapPix7(120), TapPix7(120)));
        make.top.equalTo(self.bgView.mas_top).offset(-TapPix7(50));
    }];
    [self.nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.iconImageView.mas_right).offset(TapPix7(30));
        make.right.equalTo(self.bgView.mas_right).offset(-TapPix7(40));
        make.height.mas_equalTo(TapPix7(40));
        make.bottom.equalTo(self.bgView.mas_top).offset(-TapPix7(8));
    }];
    [self.appBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.bgView).offset(-TapPix7(20));
        make.top.equalTo(self.bgView).offset(TapPix7(19));
        make.height.mas_equalTo(TapPix7(60));
//        make.size.mas_equalTo(CGSizeMake(TapPix7(140), TapPix7(60)));
    }];
    [self.descLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.appBtn.mas_top).offset(TapPix7(15));
        make.left.equalTo(self.nameLabel.mas_left);
        make.right.equalTo(self.appBtn.mas_left).offset(-TapPix7(40));
    }];
    [self.iconImageView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.bgView).offset(TapPix7(13));
        make.top.equalTo(self.bgView.mas_top).offset(TapPix7(25));
        make.size.mas_equalTo(CGSizeMake(TapPix7(154), TapPix7(61)));
    }];
    [self.colorView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.iconImageView.mas_bottom).offset(TapPix7(31));
        make.centerX.equalTo(self.bgView);
        make.left.equalTo(self.bgView).offset(TapPix7(16));
        make.bottom.equalTo(self.bgView).offset(-TapPix7(16));
    }];
    [self.iconImageView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.bottom.top.equalTo(self.colorView);
        make.width.mas_equalTo(TapPix7(58));
    }];
    [self.descLabel1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.iconImageView1);
    }];
    [self.descLabel2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.colorView).with.insets(UIEdgeInsetsMake(0, TapPix7(19), 0, TapPix7(68)));
    }];
    self.appBtn.contentEdgeInsets = UIEdgeInsetsMake(0, TapPix7(4), 0, TapPix7(4));
}

-(void)setModel:(WackyCaballeroProductModel *)model{
    _model = model;
    self.nameLabel.text = model.annihilation;
    [self.iconImageView sd_setImageWithURL:[NSURL URLWithString:model.supernatural]];
    self.descLabel.text = model.pierced;
    [self.appBtn setTitle:[NSString stringWithFormat:@"%@",model.ejaculation] forState:UIControlStateNormal];
    if ([model.shrill isEqualToString:@"1"]) {
        [self.appBtn setBackgroundImage:[UIImage imageNamed:@"RadioIconSlice 32"] forState:UIControlStateNormal];
    }else if ([model.shrill isEqualToString:@"2"]){
        [self.appBtn setBackgroundImage:[UIImage imageNamed:@"BracketImgSlice"] forState:UIControlStateNormal];
    }else if ([model.shrill isEqualToString:@"3"]){
        [self.appBtn setBackgroundImage:[UIImage imageNamed:@"RadioIconSlice 33"] forState:UIControlStateNormal];
    }else{}
    if (ISTAPNOTSTRING(model.incurring)) {
        self.descLabel1.hidden = NO;
        self.iconImageView1.hidden = NO;
        self.descLabel1.text = model.incurring;
    }else{
        self.descLabel1.hidden = YES;
        self.iconImageView1.hidden = YES;
    }
    if (ISTAPNOTSTRING(model.knives)) {
        self.colorView.hidden = NO;
        self.descLabel2.text = model.knives;
    }else{
        self.colorView.hidden = YES;
    }
}

- (void)btnClick {
    if (self.block) {
        self.block();
    }
}

@end
