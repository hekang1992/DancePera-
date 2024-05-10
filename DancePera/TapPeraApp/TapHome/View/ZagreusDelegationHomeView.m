//
//  ZagreusDelegationHomeView.m
//  TapPera
//
//  Created by apple on 2024/2/1.
//

#import "ZagreusDelegationHomeView.h"
#import "LoaderEagletViewCell.h"

@implementation ZagreusDelegationHomeView

-(void)setBannerArray:(NSArray *)bannerArray{
    _bannerArray = bannerArray;
    [self.pagerView reloadData];
}

-(void)setProductArray:(NSArray *)productArray{
    _productArray = productArray;
}

-(void)setDictationList:(NSArray *)dictationList{
    _dictationList = dictationList;
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

-(TYCyclePagerView *)pagerView{
    if (!_pagerView) {
        _pagerView = [[TYCyclePagerView alloc]init];
        _pagerView.delegate = self;
        _pagerView.dataSource = self;
        _pagerView.isInfiniteLoop = NO;
        _pagerView.autoScrollInterval = 2;
        [_pagerView registerClass:[YachtHamiltonianViewCell class] forCellWithReuseIdentifier:@"cellId"];
    }
    return _pagerView;
}

- (instancetype)initWithFrame:(CGRect)frame{
    if(self = [super initWithFrame:frame]){
        self.tableView.frame = CGRectMake(0, 0, PeraScreenWidth, PeraScreenHeight - TabBarHeight);
        [self addSubview:self.tableView];
    }
    return self;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    @TAPWeakSelf(self);
    LoaderEagletViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellIdentifier"];
    cell = [[LoaderEagletViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CellIdentifier"];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    WackyCaballeroProductModel *model = _productArray[indexPath.row];
    cell.model = model;
    cell.block = ^{
        if (weakSelf.block1) {
            weakSelf.block1(model);
        }
    };
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _productArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    WackyCaballeroProductModel *model = _productArray[indexPath.row];
    if (ISTAPNOTSTRING(model.knives)) {
        return TapPix7(156+34+105);
    }else{
        return TapPix7(156+34);
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    if (ISNOTNILARR(_dictationList)) {
        return TapPix7(495+140);
    }else{
        return TapPix7(495);
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    WackyCaballeroProductModel *model = _productArray[indexPath.row];
    if (self.block1) {
        self.block1(model);
    }
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView *headView = [[UIView alloc]init];
    UIImageView *bgImageView = [[UIImageView alloc]init];
    bgImageView.image = [UIImage imageNamed:@"FontAddSlice"];
    UILabel *mainLable = [DacoitOakletTapFactory ubiKnapsackCreate:[UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(36)] textColor:[UIColor colorWithCSS:@"#302C2C"] textAliment:NSTextAlignmentLeft];
    mainLable.text = @"Funding Loan Products";
    UIImageView *imageView = [[UIImageView alloc]init];
    imageView.userInteractionEnabled = YES;
    [headView addSubview:bgImageView];
    [headView addSubview:mainLable];
    [headView addSubview:self.pagerView];
    [headView addSubview:imageView];
    [bgImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.top.equalTo(headView);
        make.height.mas_equalTo(TapPix7(362));
    }];
    [self.pagerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(headView);
        make.top.equalTo(headView).offset(TapPix7(88));
        make.left.equalTo(headView).offset(TapPix7(40));
        make.height.mas_equalTo(TapPix7(230));
    }];
    if (ISNOTNILARR(_dictationList)) {
        [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(headView);
            make.top.equalTo(bgImageView.mas_bottom).offset(TapPix7(20));
            make.left.equalTo(headView).offset(TapPix7(40));
            make.height.mas_equalTo(TapPix7(140));
        }];
        NSDictionary *dict = [_dictationList objectAtIndex:0];
        NSString *imageUrl = [dict objectForKey:@"supremely"];
        [imageView sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",imageUrl]]];
        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageViewTapped:)];
        [imageView addGestureRecognizer:tapGesture];
    }else{
        imageView.hidden = YES;
    }
    [mainLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(headView).offset(TapPix7(40));
        make.bottom.equalTo(headView.mas_bottom);
        make.size.mas_equalTo(CGSizeMake(TapPix7(500), TapPix7(48)));
    }];
    if (_bannerArray.count > 1) {
        _pagerView.isInfiniteLoop = YES;
    }else{
        _pagerView.isInfiniteLoop = NO;
    }
    return headView;
}

- (NSInteger)numberOfItemsInPagerView:(TYCyclePagerView *)pageView{
    return _bannerArray.count;
}

- (UICollectionViewCell *)pagerView:(TYCyclePagerView *)pagerView cellForItemAtIndex:(NSInteger)index {
    YachtHamiltonianViewCell *cell = [pagerView dequeueReusableCellWithReuseIdentifier:@"cellId" forIndex:index];
    cell.model = _bannerArray[index];
    return cell;
}

- (TYCyclePagerViewLayout *)layoutForPagerView:(TYCyclePagerView *)pageView {
    TYCyclePagerViewLayout *layout = [[TYCyclePagerViewLayout alloc]init];
    layout.itemSize = CGSizeMake(TapPix7(670),TapPix7(230));
    layout.itemSpacing = TapPix7(10);
    return layout;
}

- (void)pagerView:(TYCyclePagerView *)pageView didSelectedItemCell:(__kindof UICollectionViewCell *)cell atIndex:(NSInteger)index{
    QandaharRecursiveBnnerModel *model = _bannerArray[index];
    TAPLog(@"index>>>>>>>%ld",index);
    if (self.block) {
        self.block(model);
    }
}

- (void)imageViewTapped:(UITapGestureRecognizer *)gestureRecognizer {
    NSDictionary *dict = [_dictationList objectAtIndex:0];
    NSString *url = [dict objectForKey:@"concord"];
    if (self.block2) {
        self.block2(url);
    }
}

@end
