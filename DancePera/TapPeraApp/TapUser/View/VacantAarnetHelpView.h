//
//  VacantAarnetHelpView.h
//  TapPera
//
//  Created by apple on 2024/2/1.
//

#import <UIKit/UIKit.h>
#import "PoolingActiveHelpModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface VacantAarnetHelpView : UIView<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) NSArray *array;
@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) NSIndexPath *selectPath;
@end

NS_ASSUME_NONNULL_END

