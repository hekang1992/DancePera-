//
//  ZagazigIaaListView.h
//  TapPera
//
//  Created by apple on 2024/1/31.
//

#import <UIKit/UIKit.h>
#import "QbasicAccountViewCell.h"
#import "AachenXanthippeOredrModel.h"

NS_ASSUME_NONNULL_BEGIN
typedef void(^TapOrderListViewBlock)(AachenXanthippeOredrModel *model);
@interface ZagazigIaaListView : UIView<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) NSArray *modelArray;
@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) TapOrderListViewBlock block;
@end

NS_ASSUME_NONNULL_END
