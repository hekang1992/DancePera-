//
//  TableArbitraryBarController.m
//  TapPera
//
//  Created by apple on 2024/1/15.
//

#import "TableArbitraryBarController.h"
#import "VaaljapieYachtyViewController.h"
#import "KaffeeklatschTaberdarViewController.h"
#import "MacadamizeOrdinaryViewController.h"
#import "ImplicitMinkowskiBarButton.h"
#import "ForwardingSabangViewController.h"
#import "TaberdarOrdinaryViewController.h"

@interface TableArbitraryBarController ()<YBTabBarDelegate>
@property (strong, nonatomic) LibertinismDaccaTabBar *customTabBar;
@property (strong, nonatomic) ImplicitMinkowskiBarButton *toBtn;
@end

@implementation TableArbitraryBarController

-(LibertinismDaccaTabBar *)customTabBar{
    if (!_customTabBar) {
        CGSize viewSize = self.view.bounds.size;
        CGFloat tabBarStartingY = viewSize.height;
        CGFloat tabBarHeight = TabBarHeight;
        _customTabBar = [[LibertinismDaccaTabBar alloc]initWithFrame: CGRectMake(TapPix7(30), tabBarStartingY - tabBarHeight - TapPix7(40), viewSize.width - TapPix7(60), tabBarHeight)];
    }
    return _customTabBar;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupTapTabbar];
    [self setupAllChildViewControllers];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    self.tabBar.hidden = YES;
    for (UIView *child in self.tabBar.subviews) {
        NSString * classname = NSStringFromClass([child class]);
        if([classname isEqualToString:@"_UIBarBackground"] || [classname isEqualToString:@"UIBarBackground"]){
            child.hidden = YES;
        }
        if ([child isKindOfClass:[UIControl class]]) {
            [child removeFromSuperview];
        }
    }
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    for (UIView *child in self.tabBar.subviews) {
        if ([child isKindOfClass:[UIControl class]]) {
            [child removeFromSuperview];
        }
    }
}

- (void)setupTapTabbar{
    self.customTabBar.delegate = self;
    [self.view addSubview:self.customTabBar];
    [self dropTapfset:CGSizeMake(0, -TapPix7(1))
               radius:TapPix7(40)
                color:[UIColor colorWithCSS:@"#B7B8C3"]
              opacity:TapPix7(1)];
}

- (void)setupAllChildViewControllers{
    MacadamizeOrdinaryViewController *homeVc = [[MacadamizeOrdinaryViewController alloc] init];
    [self setupChildViewController:homeVc title:@"Home" imageName:@"jabez_tab_icon" selectedImageName:@"jabez_tab_icon"];
    
    KaffeeklatschTaberdarViewController *orderVc = [[KaffeeklatschTaberdarViewController alloc] init];
    [self setupChildViewController:orderVc title:@"Order" imageName:@"named_tab_orders" selectedImageName:@"named_tab_orders"];
    
    ForwardingSabangViewController *userVc1 = [[ForwardingSabangViewController alloc] init];
    [self setupChildViewController:userVc1 title:@"Message" imageName:@"pachalic_tab_icon" selectedImageName:@"pachalic_tab_icon"];
    
    VaaljapieYachtyViewController *userVc = [[VaaljapieYachtyViewController alloc] init];
    [self setupChildViewController:userVc title:@"User" imageName:@"candidate_icon_tab" selectedImageName:@"candidate_icon_tab"];
}

- (void)setupChildViewController:(UIViewController *)childVc title:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selImageName {
    childVc.title = title;
    UIImage *selectedImage = [UIImage imageNamed:selImageName];
    childVc.tabBarItem.image = [UIImage imageNamed:imageName];
    childVc.tabBarItem.selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    childVc.tabBarItem.selectedImage = selectedImage;
    BetAaronicNavigationController *nav = [[BetAaronicNavigationController alloc] initWithRootViewController:childVc];
    [self addChildViewController:nav];
    [self.customTabBar addTapTabBarButtonNorImageUrl:imageName
                                         selImageUrl:selImageName
                                               title:title];
}

- (void)sealedAaronicTab:(LibertinismDaccaTabBar *)tabBar
    diduttonFrom:(NSInteger)from
              to:(NSInteger)to
           array:(NSMutableArray *)buttonArray{
    if (IS_LOGIN) {
        [self animationWithOop:buttonArray form:from to:to];
    }else{
        [self qandaharPrimaryLogin];
    }
}

- (void)animationWithOop:(NSMutableArray *)buttonArray form:(NSInteger)from to:(NSInteger)to{
    NSMutableArray *array = buttonArray;
    self.selectedIndex = to;
    TAPLog(@"sealedAaronicTab----from:%ld, to:%ld ",from,to);
    ImplicitMinkowskiBarButton *fromBtn = array[from];
    ImplicitMinkowskiBarButton *toBtn = array[to];
    self.toBtn = toBtn;
    if (from == 0 && to == 0) {
        toBtn.iconBtn.alpha = 1;
        [UIView animateWithDuration:0.25 animations:^{
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.25 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                toBtn.iconBtn.mj_y = TapPix7(28);
                toBtn.titleLbl.mj_y = TabBarHeight - TapPix7(60);
            });
        }];
        if(from == to){
            return;
        }
    }else{
        if(from == to){
            return;
        }
        [self gabbartBetZhendong];
        toBtn.iconBtn.alpha = 1;
        [UIView animateWithDuration:0.5 delay:0 usingSpringWithDamping:0.5 initialSpringVelocity:0.5 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            toBtn.iconBtn.mj_y = TapPix7(28);
            fromBtn.titleLbl.mj_y = TapPix7(65);
            fromBtn.iconBtn.mj_y = 0;
            toBtn.titleLbl.mj_y = TabBarHeight - TapPix7(60);
            fromBtn.iconBtn.alpha = 0;
        } completion:^(BOOL finished) {
        }];
    }
}

- (void)qandaharPrimaryLogin{
    TaberdarOrdinaryViewController *login = [[TaberdarOrdinaryViewController alloc]init];
    BoxingRabbahNavigationController *nav = [[BoxingRabbahNavigationController alloc]initWithRootViewController:login];
    nav.modalPresentationStyle = UIModalPresentationOverFullScreen;
    [self presentViewController:nav animated:YES completion:nil];
}

- (void)dropTapfset:(CGSize)offset
             radius:(CGFloat)radius
              color:(UIColor *)color
            opacity:(CGFloat)opacity {
    // Creating shadow path for better performance
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathAddRect(path, NULL, self.customTabBar.bounds);
    self.customTabBar.layer.shadowPath = path;
    CGPathCloseSubpath(path);
    CGPathRelease(path);
    self.customTabBar.layer.shadowColor = color.CGColor;
    self.customTabBar.layer.shadowOffset = offset;
    self.customTabBar.layer.shadowRadius = radius;
    self.customTabBar.layer.shadowOpacity = opacity;
    self.customTabBar.clipsToBounds = NO;
}

- (void)showTapTabBar{
    [UIView animateWithDuration:0.25 animations:^{
        self.customTabBar.mj_y = self.view.bounds.size.height - TabBarHeight - TapPix7(40);
    }];
}

- (void)libertymanTopologicalTab{
    [UIView animateWithDuration:0.25 animations:^{
        self.customTabBar.mj_y = self.view.bounds.size.height;
    }];
}

- (void)gabbartBetZhendong{
    UIImpactFeedbackGenerator *generator = [[UIImpactFeedbackGenerator alloc] initWithStyle:UIImpactFeedbackStyleHeavy];
    [generator impactOccurred];
    [generator prepare];
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
