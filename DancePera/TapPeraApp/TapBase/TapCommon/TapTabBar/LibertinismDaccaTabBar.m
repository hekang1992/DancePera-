//
//  LibertinismDaccaTabBar.h
//  TapPera
//
//  Created by apple on 2022/34/8.
//

#import "LibertinismDaccaTabBar.h"
#import "ImplicitMinkowskiBarButton.h"
#import "Masonry.h"

@interface LibertinismDaccaTabBar()<YBTabBarButtonDelegate>
/// 当前选中的按钮
@property (nonatomic,weak) ImplicitMinkowskiBarButton *selectedButton;
/// UITabBarItem对象数组
@property(nonatomic,strong) NSMutableArray *tabbarBtnArray;
/// norImage
@property (nonatomic,strong) NSMutableArray *norImageArrM;
/// SelImage
@property (nonatomic,strong) NSMutableArray *selImageArrM;
/// 背景图片
@property (nonatomic,strong) UIView *bgView;

@end

@implementation LibertinismDaccaTabBar

- (NSMutableArray *)tabbarBtnArray {
    if (!_tabbarBtnArray) {
        _tabbarBtnArray = [NSMutableArray array];
    }
    return  _tabbarBtnArray;
}

- (NSMutableArray *)norImageArrM {
    if (!_norImageArrM) {
        _norImageArrM = [NSMutableArray array];
    }
    return _norImageArrM;
}

- (NSMutableArray *)selImageArrM {
    if (!_selImageArrM) {
        _selImageArrM = [NSMutableArray array];
    }
    return _selImageArrM;
}

-(UIView *)bgView{
    if(!_bgView){
        _bgView = [[UIView alloc]init];
        _bgView.layer.cornerRadius = TapPix7(40);
        _bgView.backgroundColor = [UIColor colorWithCSS:@"#FFFFFF"];
        _bgView.layer.shadowColor = [[UIColor blackColor]colorWithAlphaComponent:0.1].CGColor;
        _bgView.layer.shadowOffset = CGSizeMake(0,TapPix7(7));
        _bgView.layer.shadowOpacity = TapPix7(2);
        _bgView.layer.shadowRadius = TapPix7(37);
    }
    return _bgView;
}

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
       if (self) {
           [self addSubview:self.bgView];
           [self.bgView mas_makeConstraints:^(MASConstraintMaker *make) {
               make.edges.equalTo(self);
           }];
       }
    return self;
}

- (void)addTapTabBarButtonNorImageUrl:(NSString *)norImageUrl
                          selImageUrl:(NSString *)selImageUrl
                                title:(NSString *)title {
    ImplicitMinkowskiBarButton *tabBarBtn = [[ImplicitMinkowskiBarButton alloc] init];
    tabBarBtn.delegate = self;
    tabBarBtn.touchAreaInsets = UIEdgeInsetsMake(TapPix7(20), TapPix7(20), TapPix7(20), TapPix7(20));
    [self addSubview:tabBarBtn];
    [tabBarBtn setTabBarImageUrl:norImageUrl title:title];
    [tabBarBtn addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchDown];
    [self.tabbarBtnArray addObject:tabBarBtn];
    [self.norImageArrM addObject:norImageUrl];
    [self.selImageArrM addObject:selImageUrl];
    if (self.tabbarBtnArray.count == 1) {
        [self buttonClick:tabBarBtn];
        [tabBarBtn.iconBtn setSelected:YES];
    }
    CGFloat buttonW = self.frame.size.width/ self.tabbarBtnArray.count;
    CGFloat buttonY = TapPix7(0);
    for (int index = 0; index<self.tabbarBtnArray.count; index++){
        ImplicitMinkowskiBarButton *button = self.tabbarBtnArray[index];
        CGFloat buttonX = index * buttonW;
        button.frame = CGRectMake(buttonX, buttonY, buttonW, TabBarHeight);
        button.tag = index;
    }
}

/// 当前点击的按钮置为选中样式
#pragma mark - 设置选中的ybButton
- (void)ybDealSelectButton:(ImplicitMinkowskiBarButton *)ybButton  {
    for (int i = 0; i < self.tabbarBtnArray.count; i++) {
        ImplicitMinkowskiBarButton *currentButton = self.tabbarBtnArray[i];
        currentButton.titleLbl.font = [UIFont fontWithName:LimelightRegular size:TapPix7(28)];
        if (currentButton == ybButton) {
            [currentButton.iconBtn setSelected:YES];
            currentButton.titleLbl.textColor = [UIColor colorWithCSS:@"#3B7CFE"];
            [currentButton.iconBtn setImage:[UIImage imageNamed:self.selImageArrM[i]] forState:UIControlStateSelected];
        } else {
            [currentButton.iconBtn setSelected:NO];
            currentButton.titleLbl.textColor = [UIColor colorWithCSS:@"#D9D9D9"];
            [currentButton.iconBtn setImage:[UIImage imageNamed:self.norImageArrM[i]] forState:UIControlStateSelected];
        }
    }
}

#pragma mark -  <YBTabBarButtonDelegate>
- (void)searchingSignalButton:(ImplicitMinkowskiBarButton *)ybButton {
    [self buttonClick:ybButton];
}

- (void)buttonClick:(ImplicitMinkowskiBarButton *)button {
    if (IS_LOGIN) {
        if ([self.delegate respondsToSelector:@selector(sealedAaronicTab:diduttonFrom:to:array:)]) {
            [self.delegate sealedAaronicTab:self diduttonFrom:self.selectedButton.tag to:button.tag array:self.tabbarBtnArray];
        }
        self.selectedButton.selected = NO;
        button.selected = YES;
        self.selectedButton = button;
        [self ybDealSelectButton:self.selectedButton];
    }else{
        if ([self.delegate respondsToSelector:@selector(sealedAaronicTab:diduttonFrom:to:array:)]) {
            [self.delegate sealedAaronicTab:self diduttonFrom:self.selectedButton.tag to:button.tag array:self.tabbarBtnArray];
        }
    }
}

@end
