//
//  ForwardingSabangViewController.m
//  TapPera
//
//  Created by apple on 2024/1/30.
//

#import "ForwardingSabangViewController.h"
#import "ZagazigIaaListView.h"
#import "AachenXanthippeOredrModel.h"

@interface ForwardingSabangViewController ()
@property (nonatomic,strong) UIImageView *iconImageView;
@property (nonatomic,strong) NSString *fullText;
@property (nonatomic,assign) NSInteger characterIndex;
@property (nonatomic,strong) UILabel *descLable1;
@property (nonatomic,strong) ZagazigIaaListView *listView;
@end

@implementation ForwardingSabangViewController

-(UILabel *)descLable1{
    if (!_descLable1) {
        _descLable1 = [DacoitOakletTapFactory ubiKnapsackCreate:[UIFont fontWithName:LINESeedSansAppBold size:TapPix7(26)] textColor:[UIColor colorWithCSS:@"#FFFFFF"] textAliment:NSTextAlignmentLeft];
        _descLable1.numberOfLines = 0;
    }
    return _descLable1;
}

-(UIImageView *)iconImageView{
    if (!_iconImageView) {
        _iconImageView = [[UIImageView alloc]init];
        _iconImageView.image = [UIImage imageNamed:@"RadioIconSlice"];
    }
    return _iconImageView;
}

-(ZagazigIaaListView *)listView{
    if (!_listView) {
        _listView = [[ZagazigIaaListView alloc]init];
    }
    return _listView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    @TAPWeakSelf(self);
    // Do any additional setup after loading the view.
    [self addNavView];
    self.navView.backBtn.hidden = YES;
    self.navView.titleLabel.text = @"Message";
    self.iconImageView.frame = CGRectMake(0, 0, PeraScreenWidth, TapPix7(144));
    [self.view insertSubview:self.iconImageView belowSubview:self.navView];
    [UIView animateWithDuration:0.5 animations:^{
        self.iconImageView.frame = CGRectMake(0, TapNavBarHeight, PeraScreenWidth, TapPix7(144));
    } completion:^(BOOL finished) {
        [self showText];
    }];
    [self.iconImageView addSubview:self.descLable1];
    [self.descLable1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.iconImageView).offset(-TapPix7(40));
        make.centerY.equalTo(self.iconImageView);
        make.left.equalTo(self.iconImageView).offset(TapPix7(110));
    }];
    [self.view addSubview:self.listView];
    [self.listView mas_makeConstraints:^(MASConstraintMaker *make){
        make.bottom.equalTo(self.view).offset(-(TabBarHeight + TapPix7(20)));
        make.top.equalTo(self.iconImageView.mas_bottom);
        make.left.right.equalTo(self.view);
    }];
    self.listView.tableView.mj_header = [IacuLabefactionJsonHeader headerWithRefreshingTarget:self refreshingAction:@selector(loadNewHomeData)];
    self.listView.block = ^(AachenXanthippeOredrModel * _Nonnull model) {
        [weakSelf pushWithModel:model];
    };
    self.dataView.frame = self.view.bounds;
    [self.view addSubview:self.dataView];
}

- (void)pushWithModel:(AachenXanthippeOredrModel *)model{
    NSString *url = model.cower;
    [self windowsPachalicStr:url beats:model.luminous];
}

- (void)loadNewHomeData{
    [self getOrderID];
}

- (void)showText{
    self.fullText = @"Dear user, your invoice is scheduled to expire in two days. Kindly ensure timely payment to avoid any inconvenience.*";
    self.characterIndex = 0;
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:0.03
                            target:self
                          selector:@selector(updateTyping)
                          userInfo:nil
                           repeats:YES];
    [[NSRunLoop currentRunLoop]addTimer:timer forMode:UITrackingRunLoopMode];
}

- (void)updateTyping {
    if (self.characterIndex < self.fullText.length) {
        NSString *partialText = [self.fullText substringToIndex:self.characterIndex + 1];
        self.descLable1.text = partialText;
        self.characterIndex++;
    }
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self showTabBar];
    if (IS_LOGIN) {
        [self getOrderID];
    }
}

- (void)getOrderID{
    @TAPWeakSelf(self);
    [self addHudView];
    NSString *epistles = @"9";
    NSDictionary *dict = @{@"epistles":epistles};
    [[MemoryClassificationTapRequest sharedManager]alphabetizeKaffeeklatschApi:dict pageUrl:framingRivers complete:^(id  _Nonnull result) {
        NSDictionary *requestDict = [NSDictionary dictionaryWithDictionary:result];
        NSString *undaunted = [NSString stringWithFormat:@"%@", [requestDict objectForKey:@"undaunted"]];
        TAPLog(@">>>>>>>>>%@",[DacoitOakletTapFactory oakMacDict:requestDict]);
        if ([undaunted isEqualToString:@"0"] || [undaunted isEqualToString:@"00"]) {
            NSArray *forelock = [[requestDict objectForKey:@"hastens"]objectForKey:@"forelock"];
            if (ISNOTNILARR(forelock)) {
                NSArray *modelArray = [AachenXanthippeOredrModel mj_objectArrayWithKeyValuesArray:forelock];
                weakSelf.listView.modelArray = modelArray;
                [weakSelf.listView.tableView reloadData];
                [weakSelf.dataView removeFromSuperview];
            }else{
                weakSelf.dataView.frame = weakSelf.view.bounds;
                [weakSelf.view addSubview:weakSelf.dataView];
            }
        }
        [weakSelf removeHudView];
        [weakSelf.listView.tableView.mj_header endRefreshing];
    } errorBlock:^(NSError * _Nonnull error) {
        [weakSelf removeHudView];
        [weakSelf.listView.tableView.mj_header endRefreshing];
    }];
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
