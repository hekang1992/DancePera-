//
//  FableJaboticabaContractCell.h
//  TapPera
//
//  Created by apple on 2024/1/25.
//

#import <UIKit/UIKit.h>
#import "EagernessRandomTwistModel.h"

NS_ASSUME_NONNULL_BEGIN
typedef void(^TapContractCellBlock)(void);
@interface FableJaboticabaContractCell : UITableViewCell
@property (nonatomic,strong) UILabel *mainLabel;
@property (nonatomic,strong) UIView *bgView;
@property (nonatomic,strong) UIView *lineView;
@property (nonatomic,strong) UIButton *btn1;
@property (nonatomic,strong) UIButton *btn2;
@property (nonatomic,strong) UITextField *textField1;
@property (nonatomic,strong) UITextField *textField2;
@property (nonatomic,strong) UITextField *textField3;
@property (nonatomic,strong) UITextField *commonField;
@property (nonatomic,strong) UIImageView *iconImageView1;
@property (nonatomic,strong) UIImageView *iconImageView2;
@property (nonatomic,strong) TapContractCellBlock block1;
@property (nonatomic,strong) TapContractCellBlock block2;
@property (nonatomic,strong) EagernessRandomTwistModel *model;
@end

NS_ASSUME_NONNULL_END
