//
//  QbasicAccountViewCell.h
//  TapPera
//
//  Created by apple on 2024/1/31.
//

#import <UIKit/UIKit.h>
#import "AachenXanthippeOredrModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface QbasicAccountViewCell : UITableViewCell
@property (nonatomic,strong) UIImageView *bgImageView;
@property (nonatomic,strong) UIImageView *bgImageView1;
@property (nonatomic,strong) UIImageView *bgImageView2;
@property (nonatomic,strong) UILabel *label1;
@property (nonatomic,strong) UILabel *label2;
@property (nonatomic,strong) UILabel *label3;
@property (nonatomic,strong) UILabel *label4;
@property (nonatomic,strong) UILabel *numLabel3;
@property (nonatomic,strong) JhtHorizontalMarquee *horizontalMarquee;
@property (nonatomic,strong) AachenXanthippeOredrModel *model;
@end

NS_ASSUME_NONNULL_END
