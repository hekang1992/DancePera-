//
//  MacOptimizerInfoView.m
//  TapPera
//
//  Created by apple on 2024/1/23.
//

#import "MacOptimizerInfoView.h"
#import "EacmBaseInfoCell.h"
#import "SexagenarianCheckBtnCell.h"
#import "ChildBackgroundAuthView.h"
#import "LiberticideSideCityView.h"

@implementation MacOptimizerInfoView

-(void)setInfoArray:(NSArray *)infoArray{
    _infoArray = infoArray;
}

- (void)setCityArray:(NSArray *)cityArray{
    _cityArray = cityArray;
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

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self addSubview:self.tableView];
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self);
    }];
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    NSInteger index = indexPath.row;
    InheritanceAssignmentVacancyModel *model = _infoArray[index];
    NSString *undaunted = model.undaunted;
    NSString *amphitheatre = model.amphitheatre;
    if ([undaunted isEqualToString:@"gables"]) {//按钮男女
        NSString *TapPersonalAuthBtnCellID = [NSString stringWithFormat:@"TapPersonalAuthBtnCellID_%@",undaunted];
        SexagenarianCheckBtnCell *cell = [tableView dequeueReusableCellWithIdentifier:TapPersonalAuthBtnCellID];
        if(!cell){
            cell = [[SexagenarianCheckBtnCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:TapPersonalAuthBtnCellID];
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            cell.model = model;
        }
        return cell;
    }else if ([amphitheatre isEqualToString:@"rr"]){//文本
        NSString *TapAuthInfoCellID = [NSString stringWithFormat:@"TapAuthInfoCellID_%@",undaunted];
        EacmBaseInfoCell *cell = [tableView dequeueReusableCellWithIdentifier:TapAuthInfoCellID];
        if(!cell){
            cell = [[EacmBaseInfoCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:TapAuthInfoCellID];
            cell.backgroundColor = [UIColor clearColor];
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            cell.authView.rightImageView.image = [UIImage imageNamed:@"qandahar_idupload_input"];
            cell.model = _infoArray[index];
            if([model.toward isEqualToString:@"1"]){
                cell.authView.nameField.keyboardType = UIKeyboardTypeNumberPad;
            }
        }
        return cell;
    }else {//地址
        NSString *TapAuthInfoCellID = [NSString stringWithFormat:@"TapAuthInfoCellID_%@",undaunted];
        EacmBaseInfoCell *cell = [tableView dequeueReusableCellWithIdentifier:TapAuthInfoCellID];
        if(!cell){
            cell = [[EacmBaseInfoCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:TapAuthInfoCellID];
            cell.backgroundColor = [UIColor clearColor];
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            cell.authView.rightImageView.image = [UIImage imageNamed:@"point_pop_select"];
            cell.authView.nameField.enabled = NO;
            cell.model = _infoArray[index];
        }
        return cell;
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _infoArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return TapPix7(20);
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return TapPix7(220);
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return TapPix7(160);
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    UIView *bgView = nil;
    if (ISNOTNILARR(_infoArray)) {
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
    }
    return bgView;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    TAPLog(@"indexPath===%ld",indexPath.row);
    InheritanceAssignmentVacancyModel *model = _infoArray[indexPath.row];
    NSString *undaunted = model.undaunted;
    NSString *amphitheatre = model.amphitheatre;
    EacmBaseInfoCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    if ([amphitheatre isEqualToString:@"ee"]) {
        if ([undaunted isEqualToString:@"engagement"]) {
            [self selectCityView:cell model:model index:indexPath];
        }else{
            [self selectTapView:cell model:model];
        }
    }else if ([amphitheatre isEqualToString:@"tt"]){
        if ([undaunted isEqualToString:@"alluding"] || [undaunted isEqualToString:@"railing"]) {
            [self selectCityView:cell model:model index:indexPath];
        }
    }
}

- (void)selectTapView:(EacmBaseInfoCell *)cell model:(InheritanceAssignmentVacancyModel *)personModel{
    ChildBackgroundAuthView *popView = [[ChildBackgroundAuthView alloc]initWithFrame:self.bounds];
    popView.nameLabel.text = personModel.pulsation;
    popView.array = personModel.eyelids;
    [popView.tableView reloadData];
    TYAlertController *alectVc = [TYAlertController alertControllerWithAlertView:popView preferredStyle:TYAlertControllerStyleAlert];
    UIViewController *currentVc = [self viewControllerForView:cell];
    [currentVc presentViewController:alectVc animated:YES completion:nil];
    popView.block = ^{
        [currentVc dismissViewControllerAnimated:YES completion:nil];
    };
    popView.block1 = ^(HyperlinkItemEyelidsModel * _Nonnull model) {
        [currentVc dismissViewControllerAnimated:YES completion:^{
            NSDictionary *dict = @{personModel.undaunted:model.profiting};
            NSString *jsonStr = [DacoitOakletTapFactory oakMacDict:dict];
            cell.authView.commonField.text = [NSString stringWithFormat:@"%@",jsonStr];
            TAPLog(@"cell.authView.commonField.text>>>>>>>>>>>>%@",cell.authView.commonField.text);
            cell.authView.nameField.text = model.twist;
        }];
    };
}

- (void)selectCityView:(EacmBaseInfoCell *)cell model:(InheritanceAssignmentVacancyModel *)model index:indexPath{
    NSString *undaunted = model.undaunted;
    if ([undaunted isEqualToString:@"engagement"]) {
        [self hashJacalAlert:indexPath tablePView:self.tableView model:model];
    }else{
        if (self.block) {
            self.block(indexPath, model);
        }
    }
}



- (void)hashJacalAlert:(NSIndexPath *)indexPath
tablePView:(UITableView *)tableView model:(InheritanceAssignmentVacancyModel *)model{
    LiberticideSideCityView *popCityView = [[LiberticideSideCityView alloc]initWithFrame:self.bounds];
    NSString *undaunted = model.undaunted;
    if ([undaunted isEqualToString:@"engagement"]) {
        popCityView.array = model.eyelids;
        popCityView.mainLabel.text = @"Selcct Pay Day";
    }else{
        popCityView.mainLabel.text = @"Selcct City";
        popCityView.array = _cityArray;
    }
    TYAlertController *alectVc = [TYAlertController alertControllerWithAlertView:popCityView preferredStyle:TYAlertControllerStyleAlert];
    EacmBaseInfoCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    UIViewController *currentVc = [self viewControllerForView:cell];
    [currentVc presentViewController:alectVc animated:YES completion:nil];
    popCityView.block = ^(NSString * _Nonnull addressStr) {
        [currentVc dismissViewControllerAnimated:YES completion:^{
            NSDictionary *dict = @{model.undaunted:addressStr};
            NSString *jsonStr = [DacoitOakletTapFactory oakMacDict:dict];
            cell.authView.commonField.text = [NSString stringWithFormat:@"%@",jsonStr];
            cell.authView.nameField.text = addressStr;
            TAPLog(@">>>>>>%@",cell.authView.commonField.text);
        }];
    };
    popCityView.block1 = ^(NSString * _Nonnull addressStr , NSString * _Nonnull dictValue) {
        [currentVc dismissViewControllerAnimated:YES completion:^{
            NSDictionary *dict = @{model.undaunted:dictValue};
            NSString *jsonStr = [DacoitOakletTapFactory oakMacDict:dict];
            cell.authView.commonField.text = [NSString stringWithFormat:@"%@",jsonStr];
            cell.authView.nameField.text = addressStr;
            TAPLog(@">>>>>>%@",cell.authView.commonField.text);
        }];
    };
}

- (void)nextClick{
    if (self.block1) {
        self.block1();
    }
}

@end
