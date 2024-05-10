//
//  RabbinateEdgeHomeView.m
//  TapPera
//
//  Created by apple on 2024/1/16.
//

#import "RabbinateEdgeHomeView.h"

@implementation RabbinateEdgeHomeView

-(void)setModel:(DefinitionMabHomeModel *)model{
    _model = model;
}

-(void)setKind:(NSString *)kind{
    _kind = kind;
}

- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.showsVerticalScrollIndicator = NO;
        _tableView.backgroundColor = [UIColor clearColor];
        _tableView.estimatedSectionHeaderHeight = 0;
        _tableView.estimatedSectionFooterHeight = 0;
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
    self.tableView.frame = CGRectMake(0, 0, PeraScreenWidth, PeraScreenHeight - TabBarHeight);
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    NSInteger index = indexPath.row;
    if (index == 0) {
        static NSString *TapOneHomeCellID  = @"TapOneHomeCellID";
        OpenActivateHomeCell *cell = [tableView dequeueReusableCellWithIdentifier:TapOneHomeCellID];
        cell = [[OpenActivateHomeCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:TapOneHomeCellID];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.model = _model;
        return cell;
    }else{
        static NSString *TapOneHomeAuthCellID  = @"TapOneHomeAuthCellID";
        NablusAssociativeAuthCell *cell = [tableView dequeueReusableCellWithIdentifier:TapOneHomeAuthCellID];
        cell = [[NablusAssociativeAuthCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:TapOneHomeAuthCellID];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.kind = _kind;
        cell.block1 = ^(NSString * _Nonnull authStr) {
            if (self.block1) {
                self.block1(authStr);
            }
        };
        return cell;
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSInteger index = indexPath.row;
    if (index == 0) {
        return TapPix7(850);
    }else{
        return TapPix7(890);
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    TAPLog(@"indexPath.row======%ld",(long)indexPath.row);
    NSInteger index = indexPath.row;
    if (index == 0) {
        if (self.block) {
            self.block();
        }
    }
}

@end
