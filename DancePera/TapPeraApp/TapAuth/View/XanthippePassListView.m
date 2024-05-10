//
//  XanthippePassListView.m
//  TapPera
//
//  Created by apple on 2024/1/18.
//

#import "XanthippePassListView.h"

@implementation XanthippePassListView

-(void)setListArray:(NSArray *)listArray{
    _listArray = listArray;
}

-(UIImageView *)iconImageView{
    if (!_iconImageView) {
        _iconImageView = [[UIImageView alloc]init];
        _iconImageView.image = [UIImage imageNamed:@"qanon_idtype_tost"];
    }
    return _iconImageView;
}

- (UICollectionView *)collectionView{
    if(!_collectionView){
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        layout.scrollDirection = UICollectionViewScrollDirectionVertical;
        layout.minimumLineSpacing = TapPix7(0);
        layout.sectionInset = UIEdgeInsetsMake(0, TapPix7(40), 0, TapPix7(40));
        _collectionView = [[UICollectionView alloc]initWithFrame:CGRectZero collectionViewLayout:layout];
        _collectionView.backgroundColor = [UIColor whiteColor];
        _collectionView.dataSource = self;
        _collectionView.delegate = self;
        [_collectionView registerClass:[HaafRabbanistViewCell class] forCellWithReuseIdentifier:@"CellIdentifier"];
    }
    return _collectionView;
}

-(UILabel *)descLable1{
    if (!_descLable1) {
        _descLable1 = [DacoitOakletTapFactory ubiKnapsackCreate:[UIFont fontWithName:LINESeedSansAppBold size:TapPix7(26)] textColor:[UIColor colorWithCSS:@"#FFFFFF"] textAliment:NSTextAlignmentLeft];
        _descLable1.numberOfLines = 0;
    }
    return _descLable1;
}

-(instancetype)initWithFrame:(CGRect)frame{
    if(self = [super initWithFrame:frame]){
        self.backgroundColor = [UIColor whiteColor];
        [self addSubview:self.iconImageView];
        [self addSubview:self.collectionView];
        [self.iconImageView addSubview:self.descLable1];
        self.descLable1.frame = CGRectMake(TapPix7(112), 0, PeraScreenWidth - TapPix7(154), TapPix7(110));
        self.iconImageView.frame = CGRectMake(PeraScreenWidth, 0, PeraScreenWidth, TapPix7(110));
        self.iconImageView.alpha = 0.5;
        [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
            self.iconImageView.alpha = 1;
            self.iconImageView.frame = CGRectMake(0, 0, PeraScreenWidth, TapPix7(110));
        } completion:^(BOOL finished) {
            [self showText];
        }];
        [self.collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.iconImageView.mas_bottom);
            make.left.right.bottom.equalTo(self);
        }];
    }
    return self;
}

- (void)showText{
    self.fullText = @"Please verify that the selected ID type matches the one you are about to upload.*";
    self.characterIndex = 0;
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:0.03
                            target:self
                          selector:@selector(updateTyping)
                          userInfo:nil
                           repeats:YES];
    [[NSRunLoop currentRunLoop]addTimer:timer forMode:UITrackingRunLoopMode];
}

- (void)updateTyping {
    if (self.characterIndex < self.fullText.length) {
        NSString *partialText = [self.fullText substringToIndex:self.characterIndex + 1];
        self.descLable1.text = partialText;
        self.characterIndex++;
    }
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return _listArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    HaafRabbanistViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CellIdentifier" forIndexPath:indexPath];
    cell.iconImageView.image = [UIImage imageNamed:_listArray[indexPath.row]];
    cell.descLabel.text = _listArray[indexPath.row];
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(TapPix7(158*2), TapPix7(97*2) + TapPix7(120));
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    NSString *authStr = _listArray[indexPath.row];
    if(self.block){
        self.block(authStr);
    }
}

@end
