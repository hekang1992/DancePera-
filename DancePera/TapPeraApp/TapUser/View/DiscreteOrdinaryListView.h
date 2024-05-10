//
//  DiscreteOrdinaryListView.h
//  TapPera
//
//  Created by apple on 2024/1/31.
//

#import <UIKit/UIKit.h>
#import "IaeaNabobismViewCell.h"

NS_ASSUME_NONNULL_BEGIN
typedef void(^TapUserListViewBlock1)(AachenXanthippeOredrModel *model);
typedef void(^TapUserListViewBlock)(NSInteger index);
@interface DiscreteOrdinaryListView : UIView<TYCyclePagerViewDataSource, TYCyclePagerViewDelegate>
@property (nonatomic,strong) NSArray *modelArray;
@property (nonatomic,strong) TYCyclePagerView *pagerView;
@property (nonatomic,strong) TapUserListViewBlock block;
@property (nonatomic,strong) TapUserListViewBlock1 block1;
@end

NS_ASSUME_NONNULL_END
