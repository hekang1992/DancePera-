//
//  FableJaboticabaContractCell.m
//  TapPera
//
//  Created by apple on 2024/1/25.
//

#import "FableJaboticabaContractCell.h"

@implementation FableJaboticabaContractCell

-(UILabel *)mainLabel{
    if (!_mainLabel) {
        _mainLabel = [DacoitOakletTapFactory ubiKnapsackCreate:[UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(32)] textColor:[UIColor colorWithCSS:@"#000000"] textAliment:NSTextAlignmentLeft];
    }
    return _mainLabel;
}

-(UIView *)bgView{
    if (!_bgView) {
        _bgView = [[UIView alloc]init];
        _bgView.layer.cornerRadius = TapPix7(30);
        _bgView.layer.borderWidth = TapPix7(6);
        _bgView.layer.borderColor = [UIColor colorWithCSS:@"#413E45"].CGColor;
    }
    return _bgView;
}

-(UIView *)lineView{
    if (!_lineView) {
        _lineView = [[UIView alloc]init];
        _lineView.backgroundColor = [UIColor colorWithCSS:@"#413E45"];
    }
    return _lineView;
}

-(UIImageView *)iconImageView1{
    if (!_iconImageView1) {
        _iconImageView1 = [[UIImageView alloc]init];
        _iconImageView1.image = [UIImage imageNamed:@"OverloadedNameSlice"];
    }
    return _iconImageView1;
}

-(UIImageView *)iconImageView2{
    if (!_iconImageView2) {
        _iconImageView2 = [[UIImageView alloc]init];
        _iconImageView2.image = [UIImage imageNamed:@"CabaneAddSlice"];
    }
    return _iconImageView2;
}

-(UITextField *)textField1{
    if (!_textField1) {
        _textField1 = [[UITextField alloc]init];
        _textField1.font = [UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(32)];
        NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc] initWithString:@"Relationship" attributes:
             @{NSForegroundColorAttributeName:[UIColor colorWithCSS:@"#C6C5C7"],
               NSFontAttributeName:[UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(32)]}];
        _textField1.attributedPlaceholder = attrString;
    }
    return _textField1;
}

-(UITextField *)textField2{
    if (!_textField2) {
        _textField2 = [[UITextField alloc]init];
        _textField2.font = [UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(32)];
        NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc] initWithString:@"Name" attributes:
             @{NSForegroundColorAttributeName:[UIColor colorWithCSS:@"#C6C5C7"],
               NSFontAttributeName:[UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(32)]}];
        _textField2.attributedPlaceholder = attrString;
    }
    return _textField2;
}

-(UITextField *)textField3{
    if (!_textField3) {
        _textField3 = [[UITextField alloc]init];
        _textField3.font = [UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(32)];
        NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc] initWithString:@"Phone" attributes:
             @{NSForegroundColorAttributeName:[UIColor colorWithCSS:@"#C6C5C7"],
               NSFontAttributeName:[UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(32)]}];
        _textField3.attributedPlaceholder = attrString;
    }
    return _textField3;
}

-(UIButton *)btn1{
    if (!_btn1) {
        _btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
        [_btn1 addTarget:self
                  action:@selector(relationClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _btn1;
}

-(UIButton *)btn2{
    if (!_btn2) {
        _btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
        [_btn2 addTarget:self
                  action:@selector(contactClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _btn2;
}

-(UITextField *)commonField{
    if (!_commonField) {
        _commonField = [[UITextField alloc]init];
        _commonField.hidden = YES;
    }
    return _commonField;
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.commonField];
        [self.contentView addSubview:self.mainLabel];
        [self.contentView addSubview:self.bgView];
        [self.bgView addSubview:self.lineView];
        [self.bgView addSubview:self.iconImageView1];
        [self.bgView addSubview:self.iconImageView2];
        [self.bgView addSubview:self.textField1];
        [self.bgView addSubview:self.textField2];
        [self.bgView addSubview:self.textField3];
        [self.textField1 addSubview:self.btn1];
        [self.bgView addSubview:self.btn2];
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    [self.commonField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.contentView);
    }];
    [self.mainLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView).offset(TapPix7(40));
        make.right.equalTo(self.contentView);
        make.top.equalTo(self.contentView).offset(TapPix7(50));
        make.height.mas_equalTo(TapPix7(48));
    }];
    [self.bgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.bottom.equalTo(self.contentView);
        make.height.mas_equalTo(TapPix7(260));
        make.left.equalTo(self.contentView).offset(TapPix7(40));
    }];
    [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.bgView).offset(TapPix7(98));
        make.height.mas_equalTo(TapPix7(6));
        make.left.equalTo(self.bgView).offset(TapPix7(40));
        make.centerX.equalTo(self.bgView);
    }];
    [self.iconImageView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.bgView).offset(TapPix7(30));
        make.size.mas_equalTo(CGSizeMake(TapPix7(44), TapPix7(44)));
        make.right.equalTo(self.bgView).offset(-TapPix7(40));
    }];
    [self.iconImageView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.bgView).offset(-TapPix7(58));
        make.size.mas_equalTo(CGSizeMake(TapPix7(44), TapPix7(44)));
        make.right.equalTo(self.bgView).offset(-TapPix7(40));
    }];
    [self.textField1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.bgView);
        make.right.equalTo(self.iconImageView1.mas_left);
        make.left.equalTo(self.bgView).offset(TapPix7(40));
        make.bottom.equalTo(self.lineView.mas_top);
    }];
    [self.textField2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(TapPix7(72));
        make.right.equalTo(self.iconImageView2.mas_left);
        make.left.equalTo(self.bgView).offset(TapPix7(40));
        make.top.equalTo(self.lineView.mas_bottom);
    }];
    [self.textField3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.textField2.mas_bottom);
        make.right.equalTo(self.iconImageView2.mas_left);
        make.left.equalTo(self.bgView).offset(TapPix7(40));
        make.bottom.equalTo(self.bgView);
    }];
    [self.btn1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.textField1);
    }];
    [self.btn2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.lineView.mas_bottom);
        make.left.right.bottom.equalTo(self.bgView);
    }];
}

- (void)relationClick{
    if (self.block1) {
        self.block1();
    }
}

- (void)contactClick{
    if (self.block2) {
        self.block2();
    }
}

-(void)setModel:(EagernessRandomTwistModel *)model{
    _model = model;
    self.mainLabel.text = model.priggish;
    if (ISTAPNOTSTRING(model.twist)) {
        self.textField1.text = model.kindKill;
        self.textField2.text = model.twist;
        self.textField3.text = model.ineligible;
        NSDictionary *dict = @{@"sweetness":model.sweetness,@"insalubrious":model.insalubrious,@"twist":model.twist,@"ineligible":model.ineligible};
        NSString *jsonStr = [DacoitOakletTapFactory oakMacDict:dict];
        self.commonField.text = jsonStr;
    }
}

@end
