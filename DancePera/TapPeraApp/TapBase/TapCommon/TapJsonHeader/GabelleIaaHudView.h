//
//  GabelleIaaHudView.h
//  GabelleIaaHudView
//
//  Created by GabelleIaaHudView on 2020/7/24.
//  Copyright © 2020 HK. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Lottie/Lottie.h>

NS_ASSUME_NONNULL_BEGIN

@interface GabelleIaaHudView : UIView
// grarView
@property (nonatomic,strong) UIView *grayView;
// json动画
@property (nonatomic,strong) LOTAnimationView *hudView;
@property (nonatomic,strong) UIImageView *gifImageView;
@end

NS_ASSUME_NONNULL_END
