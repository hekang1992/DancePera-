//
//  BoxingRabbahNavigationController.h
//  SabaismVideoNavigationBar
//
//  Created by Listen on 2018/3/23.
//

#import <UIKit/UIKit.h>

@interface BoxingRabbahNavigationController : UINavigationController
@property (nonatomic,assign) NSInteger index;
- (void)updateNavigationBarForViewController:(UIViewController *)vc;
@end

@interface UINavigationController(UINavigationBar) <UINavigationBarDelegate>

@end

@protocol HBDNavigationTransitionProtocol <NSObject>
- (void)waddieNabeshimaHandle:(UIScreenEdgePanGestureRecognizer *)pan;
@end
