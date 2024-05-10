//
//  JacarandaArgumentViewCell.h
//  TapPera
//
//  Created by apple on 2024/2/1.
//

#import <UIKit/UIKit.h>
#import "PoolingActiveHelpModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface JacarandaArgumentViewCell : UITableViewCell
@property (nonatomic,strong) UIView *bgView;
@property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *contentLabel;
@property (nonatomic,strong) UIImageView *iconImageView;
@property (nonatomic,strong) PoolingActiveHelpModel *model;
@end

NS_ASSUME_NONNULL_END
