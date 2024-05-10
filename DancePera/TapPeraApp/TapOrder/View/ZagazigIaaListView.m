//
//  ZagazigIaaListView.m
//  TapPera
//
//  Created by apple on 2024/1/31.
//

#import "ZagazigIaaListView.h"

@implementation ZagazigIaaListView

-(void)setModelArray:(NSArray *)modelArray{
    _modelArray = modelArray;
}

- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStyleGrouped];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.showsVerticalScrollIndicator = NO;
        _tableView.estimatedSectionHeaderHeight = 0;
        _tableView.estimatedSectionFooterHeight = 0; 
        _tableView.backgroundColor = [UIColor colorWithCSS:@"#FFFFFF"];
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.contentInsetAdjustmentBehavior
        = UIScrollViewContentInsetAdjustmentNever;
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
    static NSString *TapOrderViewCellID = @"TapOrderViewCellID";
    QbasicAccountViewCell *cell = [tableView dequeueReusableCellWithIdentifier:TapOrderViewCellID];
    cell = [[QbasicAccountViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:TapOrderViewCellID];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.model = _modelArray[indexPath.row];
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _modelArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    AachenXanthippeOredrModel *model = _modelArray[indexPath.row];
    if ([model.regardlessness isEqualToString:@"8"] || [model.regardlessness isEqualToString:@"6"]) {
        if (ISTAPNOTSTRING(model.finds)) {
            return TapPix7(417+68);
        }else{
            return TapPix7(289+68);
        }
    }else{
        return TapPix7(289+68);
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    AachenXanthippeOredrModel *model = _modelArray[indexPath.row];
    if (self.block) {
        self.block(model);
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return TapPix7(0.01);
}

@end
