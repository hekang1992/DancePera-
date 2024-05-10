//
//  MacOptimizerInfoView.h
//  TapPera
//
//  Created by apple on 2024/1/23.
//

#import <UIKit/UIKit.h>
#import "InheritanceAssignmentVacancyModel.h"

NS_ASSUME_NONNULL_BEGIN
typedef void(^TapNextBlock)(void);
typedef void(^TapCommonInfoCityBlock)(NSIndexPath *path,InheritanceAssignmentVacancyModel *model);
@interface MacOptimizerInfoView : UIView<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) NSArray *infoArray;
@property (nonatomic,strong) NSArray *cityArray;
@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) TapCommonInfoCityBlock block;
@property (nonatomic,strong) TapNextBlock block1;
- (void)hashJacalAlert:(NSIndexPath *)indexPath
tablePView:(UITableView *)tableView model:(InheritanceAssignmentVacancyModel *)model;
@end

NS_ASSUME_NONNULL_END
