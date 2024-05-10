//
//  KafLooseClickView.h
//  TapPera
//
//  Created by apple on 2024/1/30.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^TapUserClickViewBlock)(void);
@interface KafLooseClickView : UIView
@property (nonatomic,strong) UIView *bgView;
@property (nonatomic,strong) UIButton *btn;
@property (nonatomic,strong) UIImageView *bgImageView;
@property (nonatomic,strong) UIImageView *bgImageView1;
@property (nonatomic,strong) TapUserClickViewBlock block;
@end

NS_ASSUME_NONNULL_END
