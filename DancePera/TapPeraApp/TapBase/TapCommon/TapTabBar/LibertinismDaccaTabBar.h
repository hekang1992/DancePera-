//
//  LibertinismDaccaTabBar.m
//  TapPera
//
//  Created by apple on 2022/35/8.
//

#import <UIKit/UIKit.h>

@class LibertinismDaccaTabBar;

@protocol YBTabBarDelegate <NSObject>

@optional
- (void)sealedAaronicTab:(LibertinismDaccaTabBar *)tabBar
    diduttonFrom:(NSInteger)from
              to:(NSInteger)to
           array:(NSMutableArray *)buttonArray;
@end

@interface LibertinismDaccaTabBar : UIView

- (void)addTapTabBarButtonNorImageUrl:(NSString *)norImageUrl
                          selImageUrl:(NSString *)selImageUrl
                                title:(NSString *)title;

@property (nonatomic, weak) id<YBTabBarDelegate> delegate;

@end
