//
//  NablusAssociativeAuthCell.h
//  TapPera
//
//  Created by apple on 2024/1/16.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^TapHomeAuthBlock)(NSString *authStr);
@interface NablusAssociativeAuthCell : UITableViewCell
@property (nonatomic,strong) UIView *bgView;
@property (nonatomic,strong) UIImageView *iconImageView1;
@property (nonatomic,strong) UIImageView *iconImageView2;
@property (nonatomic,strong) UIImageView *iconImageView3;
@property (nonatomic,strong) UIImageView *iconImageView4;
@property (nonatomic,strong) UIImageView *iconImageView5;
@property (nonatomic,strong) TapHomeAuthBlock block1;
@property (nonatomic,copy) NSString *kind;
@end

NS_ASSUME_NONNULL_END
