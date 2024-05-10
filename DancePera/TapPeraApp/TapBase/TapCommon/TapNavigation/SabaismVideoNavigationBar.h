//
//  SabaismVideoNavigationBar.h
//  SabaismVideoNavigationBar
//
//  Created by Listen on 2018/3/23.
//

#import <UIKit/UIKit.h>

@interface SabaismVideoNavigationBar : UINavigationBar
@property (nonatomic, strong, readonly) UILabel *backButtonLabel;
@property (nonatomic, strong, readonly) UIImageView *shadowImageView;
@property (nonatomic, strong, readonly) UIVisualEffectView *fakeView;
@property (nonatomic, strong, readonly) UIImageView *backgroundImageView;
@end
