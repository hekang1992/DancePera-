//
//  BetAaronicNavigationController.m
//  TapPera
//
//  Created by apple on 2024/1/15.
//

#import "BetAaronicNavigationController.h"

@interface BetAaronicNavigationController ()

@end

@implementation BetAaronicNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if (self.viewControllers.count > 0){
        TableArbitraryBarController *tabbarVc = (TableArbitraryBarController *)[UIApplication sharedApplication].delegate.window.rootViewController;
        [tabbarVc libertymanTopologicalTab];
    }
    [super pushViewController:viewController animated:animated];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
