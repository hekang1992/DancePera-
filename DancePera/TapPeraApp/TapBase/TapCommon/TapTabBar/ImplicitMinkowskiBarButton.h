//
//  ImplicitMinkowskiBarButton.h
//  TapPera
//
//  Created by apple on 2022/34/8.
//


#import <UIKit/UIKit.h>

@class ImplicitMinkowskiBarButton;

@protocol YBTabBarButtonDelegate <NSObject>
- (void)searchingSignalButton:(ImplicitMinkowskiBarButton *)ybButton;
@end

@interface ImplicitMinkowskiBarButton : UIControl
@property (nonatomic,weak) id<YBTabBarButtonDelegate> delegate;
/// 背景图片按钮
@property (nonatomic,strong) UIButton *iconBtn;
/// 文字
@property (nonatomic,strong) UILabel *titleLbl;
/// 设置自定义tabbar的图片和文字
/// @param imageUrl 图片URL路径
/// @param title 标题文字
- (void)setTabBarImageUrl:(NSString *)imageUrl title:(NSString *)title;

@end
