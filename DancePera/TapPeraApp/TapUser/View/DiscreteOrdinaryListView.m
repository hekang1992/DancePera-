//
//  DiscreteOrdinaryListView.m
//  TapPera
//
//  Created by apple on 2024/1/31.
//

#import "DiscreteOrdinaryListView.h"

@implementation DiscreteOrdinaryListView

-(void)setModelArray:(NSArray *)modelArray{
    _modelArray = modelArray;
    if (_modelArray.count == 1) {
        self.pagerView.autoScrollInterval = 0;
        self.pagerView.isInfiniteLoop = NO;
    }
    [self.pagerView reloadData];
}

- (TYCyclePagerView *)pagerView{
    if(!_pagerView){
        _pagerView = [[TYCyclePagerView alloc]init];
        _pagerView.autoScrollInterval = 3.0;
        _pagerView.isInfiniteLoop = YES;
        _pagerView.dataSource = self;
        _pagerView.delegate = self;
        [_pagerView registerClass:[IaeaNabobismViewCell class] forCellWithReuseIdentifier:@"cellId"];
    }
    return _pagerView;
}

-(instancetype)initWithFrame:(CGRect)frame{
    if(self = [super initWithFrame:frame]){
        [self addSubview:self.pagerView];
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    [self.pagerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self);
    }];
}

- (NSInteger)numberOfItemsInPagerView:(TYCyclePagerView *)pageView{
    return _modelArray.count;
}

- (UICollectionViewCell *)pagerView:(TYCyclePagerView *)pagerView cellForItemAtIndex:(NSInteger)index {
    IaeaNabobismViewCell *cell = [pagerView dequeueReusableCellWithReuseIdentifier:@"cellId" forIndex:index];
    cell.model = _modelArray[index];
    return cell;
}

- (TYCyclePagerViewLayout *)layoutForPagerView:(TYCyclePagerView *)pageView {
    TYCyclePagerViewLayout *layout = [[TYCyclePagerViewLayout alloc]init];
    layout.itemSize = CGSizeMake(TapPix7(590), TapPix7(200));
    layout.itemSpacing = TapPix7(30);
    return layout;
}

- (void)pagerView:(TYCyclePagerView *)pageView didScrollFromIndex:(NSInteger)fromIndex toIndex:(NSInteger)toIndex{
    TAPLog(@"from>>>>%ld>>toIndex>>>%ld",(long)fromIndex,(long)toIndex);
    if (self.block) {
        self.block(toIndex+1);
    }
}

- (void)pagerView:(TYCyclePagerView *)pageView didSelectedItemCell:(__kindof UICollectionViewCell *)cell atIndex:(NSInteger)index{
    AachenXanthippeOredrModel *model = _modelArray[index];
    TAPLog(@"index>>>>>%ld",index)
    if (self.block1) {
        self.block1(model);
    }
}

@end
