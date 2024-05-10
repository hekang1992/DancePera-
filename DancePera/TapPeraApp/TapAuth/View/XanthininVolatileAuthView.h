//
//  XanthininVolatileAuthView.h
//  TapPera
//
//  Created by apple on 2024/1/23.
//

#import <UIKit/UIKit.h>
#import "InheritanceAssignmentVacancyModel.h"

NS_ASSUME_NONNULL_BEGIN
typedef void(^TapCommonAuthViewBlock)(void);
@interface XanthininVolatileAuthView : UIView
@property (nonatomic,strong) UILabel *nameLabel;
@property (nonatomic,strong) UITextField *nameField;
@property (nonatomic,strong) UIView *leftView;
@property (nonatomic,strong) UIView *rightView;
@property (nonatomic,strong) UIImageView *rightImageView;
@property (nonatomic,strong) UIButton *commonBtn;
@property (nonatomic,strong) UITextField *commonField;
@property (nonatomic,strong) TapCommonAuthViewBlock block;
@property (nonatomic,strong) InheritanceAssignmentVacancyModel *model;
@end

NS_ASSUME_NONNULL_END
