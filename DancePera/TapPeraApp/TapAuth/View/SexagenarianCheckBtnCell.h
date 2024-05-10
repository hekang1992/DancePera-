//
//  SexagenarianCheckBtnCell.h
//  TapPera
//
//  Created by apple on 2024/1/24.
//

#import <UIKit/UIKit.h>
#import "InheritanceAssignmentVacancyModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface SexagenarianCheckBtnCell : UITableViewCell
@property (nonatomic,strong) UIView *bgView;
@property (nonatomic,strong) UILabel *descLabel;
@property (nonatomic,strong) UITextField *commonField;
@property (nonatomic,strong) InheritanceAssignmentVacancyModel *model;
@end

NS_ASSUME_NONNULL_END
