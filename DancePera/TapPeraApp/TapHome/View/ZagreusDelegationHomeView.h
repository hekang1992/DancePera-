//
//  ZagreusDelegationHomeView.h
//  TapPera
//
//  Created by apple on 2024/2/1.
//

#import <UIKit/UIKit.h>
#import "YachtHamiltonianViewCell.h"
#import "QandaharRecursiveBnnerModel.h"
#import "WackyCaballeroProductModel.h"

NS_ASSUME_NONNULL_BEGIN
typedef void(^TapTwoHomeViewBlock)(QandaharRecursiveBnnerModel *model);
typedef void(^TapTwoHomeViewBlock1)(WackyCaballeroProductModel *model);
typedef void(^TapTwoHomeViewBlock2)(NSString *url);
@interface ZagreusDelegationHomeView : UIView<UITableViewDelegate,UITableViewDataSource,TYCyclePagerViewDataSource,TYCyclePagerViewDelegate>
@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) NSArray *bannerArray;
@property (nonatomic,strong) NSArray *productArray;
@property (nonatomic,strong) NSArray *dictationList;
@property (nonatomic,strong) TYCyclePagerView *pagerView;
@property (nonatomic,strong) TapTwoHomeViewBlock block;
@property (nonatomic,strong) TapTwoHomeViewBlock1 block1;
@property (nonatomic,strong) TapTwoHomeViewBlock2 block2;
@end

NS_ASSUME_NONNULL_END
