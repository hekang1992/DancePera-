//
//  EacmBaseInfoCell.h
//  TapPera
//
//  Created by apple on 2024/1/23.
//

#import <UIKit/UIKit.h>
#import "XanthininVolatileAuthView.h"
#import "InheritanceAssignmentVacancyModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface EacmBaseInfoCell : UITableViewCell
@property (nonatomic,strong) InheritanceAssignmentVacancyModel *model;
@property (nonatomic,strong) XanthininVolatileAuthView *authView;
@end

NS_ASSUME_NONNULL_END
