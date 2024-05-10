//
//  VacantAarnetHelpView.m
//  TapPera
//
//  Created by apple on 2024/2/1.
//

#import "VacantAarnetHelpView.h"
#import "JacarandaArgumentViewCell.h"

@implementation VacantAarnetHelpView

-(void)setArray:(NSArray *)array{
    _array = array;
}

- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStyleGrouped];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.showsVerticalScrollIndicator = NO;
        _tableView.estimatedSectionHeaderHeight = 0;
        _tableView.estimatedSectionFooterHeight = 0;
        _tableView.backgroundColor = [UIColor clearColor];
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
    NSString *TapHelpViewCellID = [NSString stringWithFormat:@"TapOrderViewCellID_%ld",indexPath.row];
    JacarandaArgumentViewCell *cell = [tableView dequeueReusableCellWithIdentifier:TapHelpViewCellID];
    cell = [[JacarandaArgumentViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:TapHelpViewCellID];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.model = _array[indexPath.row];
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _array.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return TapPix7(0.01);
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSInteger index = indexPath.row;
    PoolingActiveHelpModel *model = _array[index];
    if (model.isExpanded) {
        if (index == 0 || index == 1 ) {
            return TapPix7(147*2);
        }else if (index == 3 || index == 4){
            return TapPix7(165*2);
        }else{
            return TapPix7(222*2);
        }
    }else{
        return TapPix7(160);
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    JacarandaArgumentViewCell *cell = (JacarandaArgumentViewCell *)[tableView cellForRowAtIndexPath:indexPath];
    cell.model.isExpanded = !cell.model.isExpanded;
    [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
}

@end
