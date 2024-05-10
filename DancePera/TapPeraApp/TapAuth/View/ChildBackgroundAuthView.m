//
//  ChildBackgroundAuthView.m
//  TapPera
//
//  Created by apple on 2024/1/24.
//

#import "ChildBackgroundAuthView.h"
#import "UarUbicationViewCell.h"

@implementation ChildBackgroundAuthView

-(void)setArray:(NSArray *)array{
    _array = array;
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
        _iconImageView2.image = [UIImage imageNamed:@"nabi_pop_image"];
    }
    return _iconImageView2;
}

-(UIButton *)canBtn{
    if (!_canBtn) {
        _canBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_canBtn setImage:[UIImage imageNamed:@"modem_login_cancel"] forState:UIControlStateNormal];
        [_canBtn addTarget:self action:@selector(canClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _canBtn;
}

-(UILabel *)nameLabel{
    if (!_nameLabel) {
        _nameLabel = [DacoitOakletTapFactory ubiKnapsackCreate:[UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(32)] textColor:[UIColor colorWithCSS:@"#413E45"] textAliment:NSTextAlignmentLeft];
        _nameLabel.text = @"Name";
    }
    return _nameLabel;
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
        [self addSubview:self.iconImageView1];
        [self addSubview:self.iconImageView2];
        [self addSubview:self.canBtn];
        [self.iconImageView2 addSubview:self.nameLabel];
        [self.iconImageView2 addSubview:self.tableView];
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    [self.iconImageView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(TapPix7(670), TapPix7(653)));
        make.centerX.equalTo(self);
        make.bottom.equalTo(self).offset(-TapPix7(180));
    }];
    [self.iconImageView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(TapPix7(209), TapPix7(362)));
        make.right.equalTo(self);
        make.bottom.equalTo(self.iconImageView2.mas_top).offset(TapPix7(20));
    }];
    [self.canBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.iconImageView2.mas_top).offset(-TapPix7(10));
        make.left.equalTo(self.iconImageView2.mas_left);
        make.size.mas_equalTo(CGSizeMake(TapPix7(66), TapPix7(66)));
    }];
    [self.nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.iconImageView2).offset(TapPix7(40));
        make.right.equalTo(self.iconImageView2).offset(-TapPix7(40));
        make.top.equalTo(self.iconImageView2).offset(TapPix7(100));
        make.height.mas_equalTo(TapPix7(48));
    }];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.iconImageView2).offset(TapPix7(40));
        make.right.equalTo(self.iconImageView2).offset(-TapPix7(40));
        make.top.equalTo(self.nameLabel.mas_bottom).offset(TapPix7(10));
        make.bottom.equalTo(self.iconImageView2).offset(-TapPix7(40));
    }];
}

- (void)canClick{
    if (self.block) {
        self.block();
    }
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    static NSString *TapAuthInfoCellID = @"TapAuthInfoCellID";
    UarUbicationViewCell *cell = [tableView dequeueReusableCellWithIdentifier:TapAuthInfoCellID];
    HyperlinkItemEyelidsModel *model = _array[indexPath.row];
    cell = [[UarUbicationViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:TapAuthInfoCellID];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.model = model;
//    NSString *indexPathStr = [NSString stringWithFormat:@"indexPath_%@",model.twist];
//    NSInteger index = [TAPUserDefault integerForKey:indexPathStr];
//    if (indexPath.row == index) {
//        cell.nameLabel.textColor = [UIColor colorWithCSS:@"#3B7CFE"];
//    } else {
//        cell.nameLabel.textColor = [UIColor colorWithCSS:@"#413E45"];
//    }
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _array.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return TapPix7(10);
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return TapPix7(120);
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    TAPLog(@"indexPath===%ld",indexPath.row);
    HyperlinkItemEyelidsModel *model = _array[indexPath.row];
    UarUbicationViewCell *cell = [self.tableView cellForRowAtIndexPath:indexPath];
    NSString *indexPathStr = [NSString stringWithFormat:@"indexPath_%@",model.twist];
    [TAPUserDefault setInteger:indexPath.row forKey:indexPathStr];
    [TAPUserDefault synchronize];
    cell.nameLabel.textColor = [UIColor colorWithCSS:@"#3B7CFE"];
    if (self.block1) {
        self.block1(model);
    }
}

@end
