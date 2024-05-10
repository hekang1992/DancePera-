//
//  FabricIntrospectionInfoView.m
//  TapPera
//
//  Created by apple on 2024/1/25.
//

#import "FabricIntrospectionInfoView.h"
#import "FableJaboticabaContractCell.h"
#import "ChildBackgroundAuthView.h"
#import "InheritanceAssignmentVacancyModel.h"

@implementation FabricIntrospectionInfoView

-(void)setArray:(NSArray *)array{
    _array = array;
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
    @TAPWeakSelf(self);
    NSString *TapAuthInfoCellID = [NSString stringWithFormat:@"TapAuthInfoCellID_%ld",(long)indexPath.row];
    FableJaboticabaContractCell *cell = [tableView dequeueReusableCellWithIdentifier:TapAuthInfoCellID];
    EagernessRandomTwistModel *model = _array[indexPath.row];
    if(!cell){
        cell = [[FableJaboticabaContractCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:TapAuthInfoCellID];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        __weak FableJaboticabaContractCell *weakCell = cell;
        cell.model = model;
        cell.block1 = ^{
            [weakSelf selectTapView:weakCell model:model];
        };
        cell.block2 = ^{
            if (weakSelf.block) {
                weakSelf.block(weakCell,indexPath.row);
            }
        };
    }
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _array.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return TapPix7(0.01);
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return TapPix7(380);
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return TapPix7(160);
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    UIView *bgView = nil;
    if (_array != nil) {
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

- (void)nextClick{
    if (self.block1) {
        self.block1();
    }
}

- (void)selectTapView:(FableJaboticabaContractCell *)cell 
                model:(EagernessRandomTwistModel *)personModel{
    ChildBackgroundAuthView *popView = [[ChildBackgroundAuthView alloc]initWithFrame:self.bounds];
    popView.nameLabel.text = @"Relationship";
    popView.array = personModel.architectural;
    [popView.tableView reloadData];
    TYAlertController *alectVc = [TYAlertController alertControllerWithAlertView:popView preferredStyle:TYAlertControllerStyleAlert];
    UIViewController *currentVc = [self viewControllerForView:cell];
    [currentVc presentViewController:alectVc animated:YES completion:nil];
    popView.block = ^{
        [currentVc dismissViewControllerAnimated:YES completion:nil];
    };
    popView.block1 = ^(HyperlinkItemEyelidsModel * _Nonnull model) {
        [currentVc dismissViewControllerAnimated:YES completion:^{
            cell.textField1.text = model.twist;
            NSDictionary *dict = @{@"sweetness":personModel.sweetness,@"insalubrious":model.profiting,@"twist":personModel.twist,@"ineligible":personModel.ineligible};
            NSString *jsonStr = [DacoitOakletTapFactory oakMacDict:dict];
            TAPLog(@">>>>>>>>>%@",jsonStr);
            cell.commonField.text = jsonStr;
        }];
    };
}

@end
