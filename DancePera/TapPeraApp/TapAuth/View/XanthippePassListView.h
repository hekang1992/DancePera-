//
//  XanthippePassListView.h
//  TapPera
//
//  Created by apple on 2024/1/18.
//

#import <UIKit/UIKit.h>
#import "HaafRabbanistViewCell.h"

NS_ASSUME_NONNULL_BEGIN

typedef void(^CardTypeBlock)(NSString *typeStr);
@interface XanthippePassListView : UIView<UICollectionViewDataSource, UICollectionViewDelegate>
@property (nonatomic,strong) UILabel *descLable1;
@property (nonatomic,strong) UIImageView *iconImageView;
@property (nonatomic,strong) NSString *fullText;
@property (nonatomic,assign) NSInteger characterIndex;
@property (nonatomic,strong) UICollectionView *collectionView;
@property (nonatomic,strong) NSArray *listArray;
@property (nonatomic,strong) CardTypeBlock block;
@end

NS_ASSUME_NONNULL_END
