//
//  ZagrosItemInfoView.m
//  TapPera
//
//  Created by apple on 2024/1/23.
//

#import "ZagrosItemInfoView.h"
#import "EacmBaseInfoCell.h"

@implementation ZagrosItemInfoView

-(void)setModel:(PolygonXmlInfoModel *)model{
    _model = model;
}

- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStyleGrouped];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.backgroundColor = [UIColor clearColor];
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.contentInsetAdjustmentBehavior
        = UIScrollViewContentInsetAdjustmentNever;
        _tableView.estimatedSectionHeaderHeight = 0;
        _tableView.estimatedSectionFooterHeight = 0;
        _tableView.showsVerticalScrollIndicator = NO;
    }
    return _tableView;
}

-(UIImageView *)iconImageView1{
    if (!_iconImageView1) {
        _iconImageView1 = [[UIImageView alloc]init];
        _iconImageView1.userInteractionEnabled = YES;
        _iconImageView1.image = [UIImage imageNamed:@"idAtype_bg"];
    }
    return _iconImageView1;
}

-(UIImageView *)iconImageView2{
    if (!_iconImageView2) {
        _iconImageView2 = [[UIImageView alloc]init];
        _iconImageView2.image = [UIImage imageNamed:@"tabaret_img_login1"];
    }
    return _iconImageView2;
}

-(UIButton *)canBtn{
    if (!_canBtn) {
        _canBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_canBtn setBackgroundImage:[UIImage imageNamed:@"call_cancel_input"] forState:UIControlStateNormal];
        [_canBtn addTarget:self action:@selector(canClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _canBtn;
}

-(NSArray *)nameArray{
    if (!_nameArray) {
        _nameArray = @[@"Name",@"Number",@"Date"];
    }
    return _nameArray;
}

-(NSArray *)placeArray{
    if (!_placeArray) {
        _placeArray = @[@"Name",@"Number",@"Date"];
    }
    return _placeArray;
}

-(NSArray *)imageArray{
    if (!_imageArray) {
        _imageArray = @[@"qandahar_idupload_input",@"qandahar_idupload_input",@"point_pop_select"];
    }
    return _imageArray;
}

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self addSubview:self.iconImageView1];
        [self.iconImageView1 addSubview:self.tableView];
        [self.iconImageView1 addSubview:self.canBtn];
        [self addSubview:self.iconImageView2];
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    [self.iconImageView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self);
        make.right.equalTo(self).offset(-TapPix7(50));
        make.size.mas_equalTo(CGSizeMake(TapPix7(290), TapPix7(145)));
    }];
    [self.iconImageView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self);
        make.bottom.equalTo(self.iconImageView2.mas_top).offset(-TapPix7(45));
        make.size.mas_equalTo(CGSizeMake(TapPix7(670), TapPix7(933)));
    }];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.iconImageView1).with.insets(UIEdgeInsetsMake(TapPix7(0), TapPix7(0), TapPix7(90), TapPix7(0)));
    }];
    [self.canBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.iconImageView1).offset(TapPix7(50));
        make.right.equalTo(self.iconImageView1).offset(-TapPix7(80));
        make.size.mas_equalTo(CGSizeMake(TapPix7(44), TapPix7(44)));
    }];
}

- (void)canClick{
    if (self.block) {
        self.block();
    }
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    @TAPWeakSelf(self);
    @TAPStrongSelf(weakSelf);
    NSInteger index = indexPath.row;
    static NSString *TapAuthInfoCellID = @"TapAuthInfoCellID";
    EacmBaseInfoCell *cell = [tableView dequeueReusableCellWithIdentifier:TapAuthInfoCellID];
    if(!cell){
        cell = [[EacmBaseInfoCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:TapAuthInfoCellID];
        cell.backgroundColor = [UIColor clearColor];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.authView.nameLabel.text = self.nameArray[index];
        cell.authView.nameField.placeholder = self.placeArray[index];
        cell.authView.rightImageView.image = [UIImage imageNamed:self.imageArray[index]];
        if (index == 0) {
            cell.authView.nameField.text = _model.twist;
        }else if (index == 1){
            cell.authView.nameField.text = _model.insight;
        }else if (index == 2) {
            __weak EacmBaseInfoCell *minCell = cell;
            cell.authView.nameField.text = [NSString stringWithFormat:@"%@/%@/%@",_model.lameter,_model.rashly,_model.leaped];
            cell.authView.commonBtn.hidden = NO;
            cell.authView.block = ^{
                [weakSelf alertDate:strongSelf->_model cell:minCell];
            };
        }
    }
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return TapPix7(220);
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return TapPix7(160);
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    UIView *bgView = nil;
    bgView = [[UIView alloc]init];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.layer.cornerRadius = TapPix7(30);
    btn.titleLabel.font = [UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(36)];
    [btn setBackgroundColor:[UIColor colorWithCSS:@"#413E45"]];
    [btn setTitle:@"Confirm" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(nextClick) forControlEvents:UIControlEventTouchUpInside];
    [bgView addSubview:btn];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(bgView).offset(TapPix7(22));
        make.centerX.equalTo(bgView);
        make.left.equalTo(bgView).offset(TapPix7(40));
        make.height.mas_equalTo(TapPix7(140));
    }];
    return bgView;
}

- (void)nextClick{
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    NSIndexPath *indexPath1 = [NSIndexPath indexPathForRow:1 inSection:0];
    NSIndexPath *indexPath2 = [NSIndexPath indexPathForRow:2 inSection:0];
    EacmBaseInfoCell *cell = [self index:indexPath];
    EacmBaseInfoCell *cell1 = [self index:indexPath1];
    EacmBaseInfoCell *cell2 = [self index:indexPath2];
    NSString *name = cell.authView.nameField.text;
    NSString *number = cell1.authView.nameField.text;
    NSString *date = cell2.authView.nameField.text;
    NSArray *timeArray = [date componentsSeparatedByString:@"/"];
    NSString *time = [NSString stringWithFormat:@"%@/%@/%@",timeArray[2],timeArray[1],timeArray[0]];
    if (self.block1) {
        self.block1(name,number,time);
    }
}

- (EacmBaseInfoCell *)index:(NSIndexPath *)inxpath{
    EacmBaseInfoCell *cell = [self.tableView cellForRowAtIndexPath:inxpath];
    return cell;
}

- (void)alertDate:(PolygonXmlInfoModel *)model cell:(EacmBaseInfoCell *)cell{
    @TAPWeakSelf(self);
    // 1.创建日期选择器
    BRDatePickerView *datePickerView = [[BRDatePickerView alloc]init];
    // 2.设置属性
    datePickerView.pickerMode = BRDatePickerModeYMD;
    if (ISTAPNOTSTRING(self.year)) {
        datePickerView.selectDate = [NSDate br_setYear:self.year.integerValue month:self.yue.integerValue day:self.ri.integerValue];
    }else{
        datePickerView.selectDate = [NSDate br_setYear:model.leaped.integerValue month:model.rashly.integerValue day:model.lameter.integerValue];
        
    }
    datePickerView.minDate = [NSDate br_setYear:1900 month:3 day:12];
    datePickerView.maxDate = [NSDate date];
    datePickerView.resultBlock = ^(NSDate *selectDate, NSString *selectValue) {
        NSArray *timeArray = [selectValue componentsSeparatedByString:@"-"];
        weakSelf.year = timeArray[0];
        weakSelf.yue = timeArray[1];
        weakSelf.ri = timeArray[2];
        cell.authView.nameField.text = [NSString stringWithFormat:@"%@/%@/%@",weakSelf.ri,weakSelf.yue,weakSelf.year];
        TAPLog(@"selectValue：%@", selectValue);
    };
    // 设置自定义样式
    BRPickerStyle *customStyle = [[BRPickerStyle alloc]init];
    customStyle.pickerTextFont = [UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(36)];
    customStyle.pickerColor = BR_RGB_HEX(0xd9dbdf, 1.0f);
    customStyle.pickerTextColor = [UIColor colorWithCSS:@"#000000"];
    customStyle.separatorColor = [UIColor colorWithCSS:@"#000000"];
    datePickerView.pickerStyle = customStyle;
    // 3.显示
    [datePickerView show];
}

@end
