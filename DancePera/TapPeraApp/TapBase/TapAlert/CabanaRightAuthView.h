//
//  CabanaRightAuthView.h
//  TapPera
//
//  Created by apple on 2024/1/18.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^TapAlertBlock)(void);
@interface CabanaRightAuthView : UIView
@property (nonatomic,strong) UIImageView *bgImageView;
@property (nonatomic,strong) UIImageView *bgImageView1;
@property (nonatomic,strong) UIImageView *bgImageView2;
@property (nonatomic,strong) UILabel *mainLabel;
@property (nonatomic,strong) UIButton *changeBtn;
@property (nonatomic,strong) UIButton *confirmBtn;
@property (nonatomic,strong) TapAlertBlock block1;
@property (nonatomic,strong) TapAlertBlock block2;
@end

NS_ASSUME_NONNULL_END
