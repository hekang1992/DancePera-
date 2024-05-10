//
//  UIView+FabianistEqualViewController.m
//  TapPera
//
//  Created by anc on 2023/12/13.
//

#import "UIView+FabianistEqualViewController.h"

@implementation UIView (FabianistEqualViewController)

- (UIViewController *)viewControllerForView:(UIView *)view {
    UIResponder *nextResponder = [view nextResponder];
    while (nextResponder != nil) {
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)nextResponder;
        }
        nextResponder = [nextResponder nextResponder];
    }
    return nil;
}

@end
