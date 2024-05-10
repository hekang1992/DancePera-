//
//  InvariantsVoronoiDelView.h
//  TapPera
//
//  Created by apple on 2024/1/31.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^TapDelViewBlock)(void);
@interface InvariantsVoronoiDelView : UIView
@property (nonatomic,strong) UIImageView *bgImageView;
@property (nonatomic,strong) UIImageView *bgImageView1;
@property (nonatomic,strong) UILabel *mainLabel;
@property (nonatomic,strong) UIButton *changeBtn;
@property (nonatomic,strong) UIButton *confirmBtn;
@property (nonatomic,strong) UIButton *iconBtn;
@property (nonatomic,strong) UIButton *agreeBtn;
@property (nonatomic,strong) TapDelViewBlock block1;
@property (nonatomic,strong) TapDelViewBlock block2;
@end

NS_ASSUME_NONNULL_END
