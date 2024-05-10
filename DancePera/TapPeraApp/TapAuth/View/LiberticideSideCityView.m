//
//  LiberticideSideCityView.m
//  TapPera
//
//  Created by add on 2023/11/15.
//

#import "LiberticideSideCityView.h"
#import "HyperlinkItemEyelidsModel.h"

@implementation LiberticideSideCityView

-(void)setArray:(NSArray *)array{
    _array = array;
    if (array.count == 4) {
        HyperlinkItemEyelidsModel * model = _array[0];
        NSArray *array1 = model.eyelids;
        ActualSolvingTwistModel * cmodel = array1[0];
        self.addressStr = [NSString stringWithFormat:@"%@|%@",model.twist,cmodel.twist];
        self.dictValue = [NSString stringWithFormat:@"%@|%@",model.profiting,cmodel.profiting];
    }else{
        PrimaryQbeTwistModel * model = _array[0];
        NSArray *array1 = model.forelock;
        EagernessRandomTwistModel *emodel = array1[0];
        NSArray *earray = emodel.forelock;
        ActualSolvingTwistModel * qmodel = earray[0];
        self.addressStr = [NSString stringWithFormat:@"%@-%@-%@",model.twist,emodel.twist,qmodel.twist];
    }
}

-(UIImageView *)iconImageView1{
    if (!_iconImageView1) {
        _iconImageView1 = [[UIImageView alloc]init];
        _iconImageView1.image = [UIImage imageNamed:@"dacian_faceid_image"];
    }
    return _iconImageView1;
}

-(UIImageView *)iconImageView2{
    if (!_iconImageView2) {
        _iconImageView2 = [[UIImageView alloc]init];
        _iconImageView2.userInteractionEnabled = YES;
        _iconImageView2.image = [UIImage imageNamed:@"searching_pop_image"];
    }
    return _iconImageView2;
}

- (UILabel *)mainLabel{
    if(!_mainLabel){
        _mainLabel  = [DacoitOakletTapFactory ubiKnapsackCreate:[UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(40)] textColor:[UIColor colorWithCSS:@"#413E45"] textAliment:NSTextAlignmentLeft];
        _mainLabel.text = @"Selcct City";
    }
    return _mainLabel;
}

- (UIButton *)cancelBtn{
    if (!_cancelBtn) {
        _cancelBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_cancelBtn setImage:[UIImage imageNamed:@"modem_login_cancel"] forState:UIControlStateNormal];
        [_cancelBtn addTarget:self action:@selector(nextClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _cancelBtn;
}

- (UIButton *)sureBtn{
    if(!_sureBtn){
        _sureBtn= [UIButton buttonWithType:UIButtonTypeCustom];
        _sureBtn.layer.cornerRadius = TapPix7(30);
        _sureBtn.titleLabel.font = [UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(36)];
        [_sureBtn setBackgroundColor:[UIColor colorWithCSS:@"#413E45"]];
        [_sureBtn setTitle:@"Confirm" forState:UIControlStateNormal];
        [_sureBtn addTarget:self action:@selector(nextClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _sureBtn;
}

-(UIPickerView *)pickerView{
    if(!_pickerView){
        _pickerView = [[UIPickerView alloc]init];
        _pickerView.delegate = self;
        _pickerView.dataSource = self;
    }
    return _pickerView;
}

-(instancetype)initWithFrame:(CGRect)frame{
    if(self = [super initWithFrame:frame]){
        [self addSubview:self.iconImageView1];
        [self addSubview:self.iconImageView2];
        [self addSubview:self.cancelBtn];
        [self.iconImageView2 addSubview:self.mainLabel];
        [self.iconImageView2 addSubview:self.pickerView];
        [self.iconImageView2 addSubview:self.sureBtn];
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    [self.iconImageView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(TapPix7(670), TapPix7(900)));
        make.centerX.equalTo(self);
        make.bottom.equalTo(self).offset(-TapPix7(100));
    }];
    [self.iconImageView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(TapPix7(209), TapPix7(362)));
        make.right.equalTo(self);
        make.bottom.equalTo(self.iconImageView2.mas_top).offset(TapPix7(20));
    }];
    [self.cancelBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.iconImageView2.mas_top);
        make.left.equalTo(self.iconImageView2.mas_left);
        make.size.mas_equalTo(CGSizeMake(TapPix7(66), TapPix7(66)));
    }];
    [self.mainLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.iconImageView2).offset(TapPix7(40));
        make.right.equalTo(self.iconImageView2).offset(-TapPix7(40));
        make.top.equalTo(self.iconImageView2).offset(TapPix7(110));
        make.height.mas_equalTo(TapPix7(48));
    }];
    [self.pickerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.iconImageView2).offset(TapPix7(40));
        make.right.equalTo(self.iconImageView2).offset(-TapPix7(40));
        make.top.equalTo(self.mainLabel.mas_bottom);
        make.bottom.equalTo(self.iconImageView2).offset(-TapPix7(180));
    }];
    [self.sureBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.pickerView.mas_bottom).offset(TapPix7(20));
        make.centerX.equalTo(self.iconImageView2);
        make.left.equalTo(self.iconImageView2).offset(TapPix7(40));
        make.bottom.equalTo(self.iconImageView2).offset(-TapPix7(45));
    }];
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    if (_array.count == 4) {
        return 2;
    }
    return 3;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if (_array.count == 4) {
        if (component == 0) {
            return _array.count;
        }
        else if (component == 1){
            HyperlinkItemEyelidsModel * model = _array[self.provicerow];
            NSArray *array1 = model.eyelids;
            return array1.count;
        }
    }else{
        if (component == 0) {
            return _array.count;
        }
        else if (component == 1){
            PrimaryQbeTwistModel * model = _array[self.provicerow];
            NSArray *array = model.forelock;
            return array.count;
        }else if (component == 2){
            PrimaryQbeTwistModel * model = _array[self.provicerow];
            NSArray *array = model.forelock;
            EagernessRandomTwistModel *emodel = array[self.cityrow];
            NSArray *earray = emodel.forelock;
            return earray.count;
        }
    }
    return 0;
}

///显示的标题
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if (_array.count == 4) {
        //第一列
        if(component == 0){
            HyperlinkItemEyelidsModel * model = _array[row];
            return model.twist;
        }else{
            HyperlinkItemEyelidsModel * model = _array[self.provicerow];
            NSArray *array = model.eyelids;
            ActualSolvingTwistModel *emodel = array[row];
            return emodel.twist;
        }
    }else{
        //第一列
        if(component == 0){
            PrimaryQbeTwistModel * model = _array[row];
            return model.twist;
        }else if(component == 1){
            PrimaryQbeTwistModel * model = _array[self.provicerow];
            NSArray *array = model.forelock;
            EagernessRandomTwistModel *emodel = array[row];
            return emodel.twist;
        }else{
            PrimaryQbeTwistModel * model = _array[self.provicerow];
            NSArray *array = model.forelock;
            EagernessRandomTwistModel *emodel = array[self.cityrow];
            NSArray *earray = emodel.forelock;
            ActualSolvingTwistModel * qmodel = earray[row];
            return qmodel.twist;
        }
    }
}

///行高
- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component{
    return TapPix7(100);
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    if (_array.count == 4) {
        if (component == 0) {
            self.provicerow = row;
            self.cityrow = 0;
            [self.pickerView selectRow:0 inComponent:1 animated:NO];
            [pickerView reloadComponent:1];
        }else{
            self.cityrow = row;
        }
        HyperlinkItemEyelidsModel * model = _array[self.provicerow];
        NSArray *array1 = model.eyelids;
        ActualSolvingTwistModel *emodel = array1[self.cityrow];
        self.addressStr = [NSString stringWithFormat:@"%@|%@",model.twist,emodel.twist];
        self.dictValue = [NSString stringWithFormat:@"%@|%@",model.profiting,emodel.profiting];
    }else{
        if(component == 0){
            self.provicerow = row;
            self.cityrow = 0;
            self.qurow = 0;
            [self.pickerView selectRow:0 inComponent:1 animated:NO];
            [self.pickerView selectRow:0 inComponent:2 animated:NO];
            [pickerView reloadComponent:1];
            [pickerView reloadComponent:2];
        }else if(component == 1){
            self.cityrow = row;
            self.qurow = 0;
            [self.pickerView selectRow:0 inComponent:2 animated:NO];
            [pickerView reloadComponent:2];
        }else{
            self.qurow = row;
        }
        PrimaryQbeTwistModel * model = _array[self.provicerow];
        NSArray *array1 = model.forelock;
        EagernessRandomTwistModel *emodel = array1[self.cityrow];
        NSArray *earray = emodel.forelock;
        ActualSolvingTwistModel * qmodel = earray[self.qurow];
        self.addressStr = [NSString stringWithFormat:@"%@-%@-%@",model.twist,emodel.twist,qmodel.twist];
    }
}

-(UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view{
    UILabel *cityLabel = (UILabel *)view;
    if (cityLabel == nil) {
        cityLabel = [[UILabel alloc]init];
        cityLabel.textColor = [UIColor colorWithCSS:@"#413E45"];
        cityLabel.textAlignment = NSTextAlignmentCenter;
        cityLabel.numberOfLines = 0;
        cityLabel.font = [UIFont fontWithName:LINESeedSansAppBold size:TapPix7(34)];
        [cityLabel setBackgroundColor:[UIColor clearColor]];
    }
    cityLabel.text = [self pickerView:pickerView titleForRow:row forComponent:component];
    return cityLabel;
}

- (void)nextClick{
    if (_array.count == 4) {
        if (self.block1) {
            self.block1(self.addressStr, self.dictValue);
        }
    }else{
        if(self.block){
            self.block(self.addressStr);
        }
    }
}

@end
