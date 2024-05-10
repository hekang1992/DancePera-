//
//  OpenActivateHomeCell.h
//  TapPera
//
//  Created by apple on 2024/1/16.
//

#import <UIKit/UIKit.h>
#import "DefinitionMabHomeModel.h"

NS_ASSUME_NONNULL_BEGIN
@interface OpenActivateHomeCell : UITableViewCell
@property (nonatomic,strong) UIView *bgView;
@property (nonatomic,strong) UIImageView *iconImageView1;
@property (nonatomic,strong) UIImageView *iconImageView2;
@property (nonatomic,strong) UIImageView *iconImageView3;
@property (nonatomic,strong) UIImageView *iconImageView4;
@property (nonatomic,strong) UIImageView *iconImageView5;
@property (nonatomic,strong) NSString *fullText;
@property (nonatomic,assign) NSInteger characterIndex;
@property (nonatomic,strong) UILabel *descLable1;
@property (nonatomic,strong) UILabel *descLable2;
@property (nonatomic,strong) UILabel *descLable3;
@property (nonatomic,strong) UILabel *descLable4;
@property (nonatomic,strong) UILabel *descLable5;
@property (nonatomic,strong) UILabel *descLable6;
@property (nonatomic,strong) DefinitionMabHomeModel *model;
@end

NS_ASSUME_NONNULL_END
