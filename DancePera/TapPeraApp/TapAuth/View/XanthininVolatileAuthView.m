//
//  XanthininVolatileAuthView.m
//  TapPera
//
//  Created by apple on 2024/1/23.
//

#import "XanthininVolatileAuthView.h"

@implementation XanthininVolatileAuthView

-(UILabel *)nameLabel{
    if (!_nameLabel) {
        _nameLabel = [DacoitOakletTapFactory ubiKnapsackCreate:[UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(36)] textColor:[UIColor colorWithCSS:@"#000000"] textAliment:NSTextAlignmentLeft];
        _nameLabel.text = @"Name";
    }
    return _nameLabel;
}

-(UIImageView *)rightImageView{
    if(!_rightImageView){
        _rightImageView = [[UIImageView alloc]init];
        _rightImageView.contentMode = UIViewContentModeLeft;
        _rightImageView.image = [UIImage imageNamed:@"qandahar_idupload_input"];
    }
    return _rightImageView;
}

-(UIView *)leftView{
    if(!_leftView){
        _leftView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, TapPix7(40), TapPix7(40))];
    }
    return _leftView;
}

-(UIView *)rightView{
    if(!_rightView){
        _rightView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, TapPix7(80), TapPix7(80))];
        self.rightImageView.frame = CGRectMake(0, 0, TapPix7(80), TapPix7(80));
        [_rightView addSubview:self.rightImageView];
    }
    return _rightView;
}

-(UITextField *)nameField{
    if(!_nameField){
        _nameField = [[UITextField alloc]init];
        _nameField.rightView = self.rightView;
        _nameField.rightViewMode = UITextFieldViewModeAlways;
        _nameField.leftView = self.leftView;
        _nameField.leftViewMode = UITextFieldViewModeAlways;
        _nameField.font = [UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(32)];
        _nameField.textColor = [UIColor colorWithCSS:@"#3B7CFE"];
        _nameField.placeholder = @"placeholder=placeholder";
        _nameField.layer.cornerRadius = TapPix7(30);
        _nameField.layer.borderWidth = TapPix7(6);
        _nameField.layer.borderColor = [UIColor colorWithCSS:@"#413E45"].CGColor;
        NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc] initWithString:@"Name" attributes:
             @{NSForegroundColorAttributeName:[UIColor colorWithCSS:@"#C6C5C7"],
               NSFontAttributeName:[UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(32)]}];
        _nameField.attributedPlaceholder = attrString;
        [_nameField addTarget:self action:@selector(textChanged:) forControlEvents:UIControlEventEditingChanged];
    }
    return _nameField;
}

-(UITextField *)commonField{
    if (!_commonField) {
        _commonField = [[UITextField alloc]init];
        _commonField.hidden = YES;
    }
    return _commonField;
}

-(UIButton *)commonBtn{
    if (!_commonBtn) {
        _commonBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _commonBtn.hidden = YES;
        [_commonBtn addTarget:self action:@selector(commonBtnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _commonBtn;
}

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self addSubview:self.commonField];
        [self addSubview:self.nameLabel];
        [self addSubview:self.nameField];
        [self addSubview:self.commonBtn];
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    [self.commonField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self);
    }];
    [self.nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(TapPix7(50));
        make.left.equalTo(self).offset(TapPix7(40));
        make.right.top.equalTo(self);
        make.height.mas_equalTo(TapPix7(48));
    }];
    [self.nameField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.nameLabel.mas_bottom).offset(TapPix7(26));
        make.height.mas_equalTo(TapPix7(100));
        make.right.equalTo(self).offset(-TapPix7(40));
        make.left.equalTo(self).offset(TapPix7(40));
    }];
    [self.commonBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self);
    }];
}

- (void)commonBtnClick{
    if (self.block) {
        self.block();
    }
}

-(void)setModel:(InheritanceAssignmentVacancyModel *)model{
    _model = model;
    if (ISTAPNOTSTRING(model.corporeal)) {
        self.nameField.text = model.corporeal;
        NSDictionary *dict = @{_model.undaunted:model.profiting};
        NSString *jsonStr = [DacoitOakletTapFactory oakMacDict:dict];
        self.commonField.text = [NSString stringWithFormat:@"%@",jsonStr];
        TAPLog(@"self.commonField.text>>>>>>%@",self.commonField.text);
    }
}

- (void)textChanged:(UITextField *)textField{
    if(textField == self.nameField){
        if (_model != nil) {
            NSDictionary *dict = @{_model.undaunted:textField.text};
            NSString *jsonStr = [DacoitOakletTapFactory oakMacDict:dict];
            self.commonField.text = [NSString stringWithFormat:@"%@",jsonStr];
            TAPLog(@"self.commonField.text>>>>>>%@",self.commonField.text);
        }
    }
}

@end
