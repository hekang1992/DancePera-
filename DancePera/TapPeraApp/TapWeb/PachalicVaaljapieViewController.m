//
//  PachalicVaaljapieViewController.m
//  TapPera
//
//  Created by apple on 2024/1/29.
//

#import "PachalicVaaljapieViewController.h"
#import "XanthinActionViewController.h"

@interface PachalicVaaljapieViewController ()<WKNavigationDelegate,WKScriptMessageHandler>{
    NSString *endTime;
}
@property (nonatomic,strong) WKWebView *wkWebView;
@property (nonatomic,strong) UIProgressView *progressView;
@end

@implementation PachalicVaaljapieViewController

-(void)setWebUrl:(NSString *)webUrl{
    _webUrl = webUrl;
}

-(void)setType:(NSString *)type{
    _type = type;
}

- (UIProgressView *)progressView{
    if (!_progressView) {
        _progressView = [[UIProgressView alloc] initWithFrame:CGRectZero];
        _progressView.tintColor = [UIColor colorWithCSS:@"#302C2C"];
        _progressView.trackTintColor = [UIColor groupTableViewBackgroundColor];
    }
    return _progressView;
}

-(WKWebView *)wkWebView{
    if(!_wkWebView){
        WKWebViewConfiguration *config = [[WKWebViewConfiguration alloc] init];
        WKUserContentController *userContent = [[WKUserContentController alloc] init];
        if (@available(iOS 14.0,*)) {
            WKWebpagePreferences *pagePreferences = [[WKWebpagePreferences alloc]init];
            pagePreferences.allowsContentJavaScript = YES;
            config.defaultWebpagePreferences = pagePreferences;
        }else{
            WKPreferences *preferences = [[WKPreferences alloc]init];
            preferences.javaScriptEnabled = YES;
            config.preferences = preferences;
        }
        [userContent addScriptMessageHandler:self name:@"wouldWhose"];
        [userContent addScriptMessageHandler:self name:@"ladiesPathos"];
        [userContent addScriptMessageHandler:self name:@"seemedTears"];
        [userContent addScriptMessageHandler:self name:@"couldBecause"];
        [userContent addScriptMessageHandler:self name:@"astonishedTemple"];
        [userContent addScriptMessageHandler:self name:@"attemptTurning"];
        [userContent addScriptMessageHandler:self name:@"cleaningTheir"];
        [userContent addScriptMessageHandler:self name:@"pixelPlaced"];
        [userContent addScriptMessageHandler:self name:@"CateenSquare"];
        config.userContentController = userContent;
        _wkWebView = [[WKWebView alloc]initWithFrame:CGRectZero configuration:config];
        _wkWebView.scrollView.bounces = NO;
        _wkWebView.scrollView.alwaysBounceVertical = NO;
        _wkWebView.navigationDelegate = self;
        _wkWebView.scrollView.showsVerticalScrollIndicator = NO;
        _wkWebView.scrollView.showsHorizontalScrollIndicator = NO;
        _wkWebView.scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        [_wkWebView addObserver:self forKeyPath:@"estimatedProgress" options:NSKeyValueObservingOptionNew context:nil];
        [_wkWebView addObserver:self forKeyPath:@"title" options:NSKeyValueObservingOptionNew context:nil];
    }
    return _wkWebView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    @TAPWeakSelf(self);
    @TAPStrongSelf(weakSelf);
    [self addNavView];
    self.navView.rightBtn.hidden = NO;
    self.navView.block = ^{
        if ([strongSelf -> _type isEqualToString:@"bank"]) {
            [weakSelf removeHudView];
            [weakSelf.navigationController popToRootViewControllerAnimated:YES];
        }else{
            if ([weakSelf.wkWebView canGoBack]) {
                [weakSelf.wkWebView goBack];
            }else{
                [weakSelf removeHudView];
                [weakSelf.navigationController popViewControllerAnimated:YES];
            }
        }
    };
    self.navView.block1 = ^{
        [weakSelf pushHrla];
    };
    self.navView.backgroundColor = [UIColor whiteColor];
    self.wkWebView.frame = CGRectMake(0, TapNavBarHeight, PeraScreenWidth, PeraScreenHeight - TapNavBarHeight);
    [self.view insertSubview:self.wkWebView belowSubview:self.navView];
    [self.view insertSubview:self.progressView belowSubview:self.navView];
//    [self.view addSubview:self.progressView];
    [self.progressView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(self.view);
        make.top.equalTo(self.wkWebView.mas_top);
        make.height.mas_equalTo(TapPix7(8));
    }];
    NSString *urlWithoutSpaces = [_webUrl stringByReplacingOccurrencesOfString:@" " withString:@"%20"];
    NSURL *webUrl = [NSURL URLWithString:urlWithoutSpaces];
    NSURLRequest *request = [NSURLRequest requestWithURL:webUrl];
    [self.wkWebView loadRequest:request];
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.wkWebView.configuration.userContentController removeScriptMessageHandlerForName:@"wouldWhose"];
    [self.wkWebView.configuration.userContentController removeScriptMessageHandlerForName:@"ladiesPathos"];
    [self.wkWebView.configuration.userContentController removeScriptMessageHandlerForName:@"seemedTears"];
    [self.wkWebView.configuration.userContentController removeScriptMessageHandlerForName:@"couldBecause"];
    [self.wkWebView.configuration.userContentController removeScriptMessageHandlerForName:@"astonishedTemple"];
    [self.wkWebView.configuration.userContentController removeScriptMessageHandlerForName:@"cleaningTheir"];
    [self.wkWebView.configuration.userContentController removeScriptMessageHandlerForName:@"pixelPlaced"];
    [self.wkWebView.configuration.userContentController removeScriptMessageHandlerForName:@"attemptTurning"];
    [self.wkWebView.configuration.userContentController removeScriptMessageHandlerForName:@"CateenSquare"];
}

- (void)pushHrla{
    XanthinActionViewController *hepVc = [[XanthinActionViewController alloc]init];
    [self.navigationController pushViewController:hepVc animated:YES];
}

#pragma mark - 属性监听
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    if ([keyPath isEqualToString:@"title"]) {
        self.navView.titleLabel.text = change[NSKeyValueChangeNewKey];
    }else if ([keyPath isEqualToString:@"estimatedProgress"]) {
        CGFloat progress = [[change objectForKey:NSKeyValueChangeNewKey]floatValue];
        self.progressView.progress = progress;
        if (progress >= 1.0) {
            [UIView animateWithDuration:.3 delay:.3 options:UIViewAnimationOptionCurveEaseOut animations:^{
                self.progressView.alpha = 0;
            } completion:nil];
        }
    }else{
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
}

#pragma mark - WKNavigationDelegate
- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation{
    [self addHudView];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(10 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self removeHudView];
    });
    TAPLog(@">>>>>>>>>>页面开始加载>>>>>>>>>>>");
}

- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation{
    [self removeHudView];
    TAPLog(@">>>>>>>>>>页面加载完成>>>>>>>>>>>");
}

- (void)webView:(WKWebView *)webView didFailProvisionalNavigation:(WKNavigation *)navigation{
    [self removeHudView];
    TAPLog(@">>>>>>>>>>页面加载失败>>>>>>>>>>>");
}

- (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler{
    NSURL *url = navigationAction.request.URL;
    NSString *urlSecStr= [url absoluteString];
    if([urlSecStr hasPrefix:@"mailto:"]){
        if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:urlSecStr]]) {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlSecStr] options:@{} completionHandler:nil];
        }
    }else if ([urlSecStr hasPrefix:@"whatsapp:"]){
        if([[UIApplication sharedApplication]canOpenURL:[NSURL URLWithString:urlSecStr]]){
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlSecStr] options:@{} completionHandler:nil];
        }else{
            [MBProgressHUD wj_showPlainText:@"Not installed WhatsApp" view:nil];
        }
    }else{
        
    }
    if([urlSecStr hasPrefix:@"mailto:"] || [urlSecStr hasPrefix:@"whatsapp:"]){
        decisionHandler(WKNavigationActionPolicyCancel);
    }else{
        decisionHandler(WKNavigationActionPolicyAllow);
    }
}

- (void)webView:(WKWebView *)webView decidePolicyForNavigationResponse:(WKNavigationResponse *)navigationResponse decisionHandler:(void (^)(WKNavigationResponsePolicy))decisionHandler{
    NSString *url = navigationResponse.response.URL.absoluteString;
    if (!([url containsString:Base_html_url] || [url containsString:Base_html1_url])) {
        self.navView.titleLabel.text = @"Repayment";
    }
    //允许跳转
    decisionHandler(WKNavigationResponsePolicyAllow);
    //不允许跳转
    //    decisionHandler(WKNavigationResponsePolicyCancel);
}

#pragma mark - WKScriptMessageHandler
- (void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message {
    endTime = [LinkBabaDeviceInfo iadlCascadingSacrificed];
    NSString *nameStr = [NSString stringWithFormat:@"%@", message.name];
    NSArray *array = message.body;
    if([nameStr isEqualToString:@"wouldWhose"]){//风控
        NSString *proid = array.firstObject;
        NSString *startTime = array.lastObject;
        [DacoitOakletTapFactory librationBabaDian:proid abstained:@"10" startTime:startTime endTime:endTime];
    }else if ([nameStr isEqualToString:@"ladiesPathos"]){//转原生或者H5
        NSString *urlStr = array.firstObject;
        if ([urlStr containsString:Base_scheme_url]){
            //跳转原生 根据产品id去调产品详情页
            NSArray *array = [urlStr componentsSeparatedByString:@"beats="];
            NSString *product = array.lastObject;
            [self wacoImplementWith:product type:@""];
        }else{
            //跳转h5
            [self nabobshipImmutableWeb:urlStr type:@""];
        }
    }else if ([nameStr isEqualToString:@"seemedTears"]){//闭当前 H5
        [self.navigationController popViewControllerAnimated:YES];
    }else if ([nameStr isEqualToString:@"couldBecause"]){//回到
        [OTNotificationDefaultCenter postNotificationName:PeraSetUpPeraRootVc object:nil];
    }else if ([nameStr isEqualToString:@"astonishedTemple"]){//H5 页面里的拨打电话
        NSString *phone = array.firstObject;
        NSMutableString * phonestr=[[NSMutableString alloc] initWithFormat:@"telprompt://%@",phone];
        if([[UIApplication sharedApplication]canOpenURL:[NSURL URLWithString:phonestr]]){
            [[UIApplication sharedApplication]openURL:[NSURL URLWithString:phonestr] options:@{} completionHandler:nil];
        }
    }else if ([nameStr isEqualToString:@"attemptTurning"]){//调用 App 应用评分
        [self reviewApp];
    }else if ([nameStr isEqualToString:@"cleaningTheir"]){
        NSNumber *number = array.firstObject;
        int intValue = [number intValue];
        if (intValue == 1) {//隐藏
            self.navView.backgroundColor = [UIColor clearColor];
            self.wkWebView.frame = CGRectMake(0, 0, PeraScreenWidth, PeraScreenHeight);
        }else {
            self.navView.backgroundColor = [UIColor whiteColor];
            self.wkWebView.frame = CGRectMake(0, TapNavBarHeight, PeraScreenWidth, PeraScreenHeight - TapNavBarHeight);
        }
    }else if ([nameStr isEqualToString:@"CateenSquare"]){
        NSString *email = array.firstObject;
        NSString *title = array[1];
        NSString *phone = [TAPUserDefault objectForKey:USER_TAPPHONE];
        NSString *orderID = [NSString stringWithFormat:@"Dance Pera Account:%@ orderId:%@",phone,array.lastObject];
        NSString *emailStr = [NSString stringWithFormat:@"mailto:%@?subject=%@&body=%@",email,title,orderID];        
        NSString *urlWithoutSpaces = [emailStr stringByReplacingOccurrencesOfString:@" " withString:@"%20"];
        if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:urlWithoutSpaces]]) {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlWithoutSpaces] options:@{} completionHandler:nil];
        }
    }else {}
}

- (void)reviewApp{
    if (@available(iOS 14.0, *)) {
        if ([SKStoreReviewController respondsToSelector:@selector(requestReviewInScene:)]) {
            NSArray *array =[[[UIApplication sharedApplication] connectedScenes] allObjects];
            UIWindowScene *windowScene = (UIWindowScene *)array[0];
            [SKStoreReviewController requestReviewInScene:windowScene];
        }
    } else if ([SKStoreReviewController respondsToSelector:@selector(requestReview)]) {
        if (@available(iOS 10.3, *)) {
            if (@available(iOS 14.0, *)) {
                NSArray *array =[[[UIApplication sharedApplication] connectedScenes] allObjects];
                UIWindowScene *windowScene = (UIWindowScene *)array[0];
                [SKStoreReviewController requestReviewInScene:windowScene];
            }else{
                [SKStoreReviewController requestReview];
            }
        }
    }
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
