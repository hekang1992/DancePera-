//
//  LoaderEagletViewCell.h
//  TapPera
//
//  Created by apple on 2024/2/2.
//

#import <UIKit/UIKit.h>
#import "WackyCaballeroProductModel.h"

NS_ASSUME_NONNULL_BEGIN
typedef void(^BtnCellBlock)(void);
@interface LoaderEagletViewCell : UITableViewCell
@property (nonatomic,strong) UIView *bgView;
@property (nonatomic,strong) UILabel *nameLabel;
@property (nonatomic,strong) UIButton *appBtn;
@property (nonatomic,strong) UILabel *descLabel;
@property (nonatomic,strong) UIImageView *iconImageView;
@property (nonatomic,strong) UIImageView *iconImageView1;
@property (nonatomic,strong) UIImageView *iconImageView2;
@property (nonatomic,strong) UILabel *descLabel1;
@property (nonatomic,strong) UIView *colorView;
@property (nonatomic,strong) UILabel *descLabel2;
@property (nonatomic,strong) WackyCaballeroProductModel *model;
@property (nonatomic,strong) BtnCellBlock block;
@end

NS_ASSUME_NONNULL_END
