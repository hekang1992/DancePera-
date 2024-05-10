//
//  AtomicOahuViewController.m
//  TapPera
//
//  Created by apple on 2024/2/1.
//

#import "AtomicOahuViewController.h"
#import "AachenXanthippeOredrModel.h"
#import "ZagazigIaaListView.h"
#import "XanthinActionViewController.h"

@interface AtomicOahuViewController ()
@property (nonatomic,strong) ZagazigIaaListView *listView;
@end

@implementation AtomicOahuViewController

-(void)setEpistles:(NSString *)epistles{
    _epistles = epistles;
}

-(void)setName:(NSString *)name{
    _name = name;
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
    self.navView.backgroundColor = [UIColor colorWithCSS:@"#FFFFFF"];
    self.navView.titleLabel.text = _name;
    self.navView.rightBtn.hidden = NO;
    self.navView.block = ^{
        [weakSelf.navigationController popToRootViewControllerAnimated:YES];
    };
    self.navView.block1 = ^{
        [weakSelf pushHrla];
    };
    [self.view addSubview:self.listView];
    [self.listView mas_makeConstraints:^(MASConstraintMaker *make){
        make.top.equalTo(self.navView.mas_bottom);
        make.left.right.bottom.equalTo(self.view);
    }];
    self.listView.tableView.mj_header = [IacuLabefactionJsonHeader headerWithRefreshingTarget:self refreshingAction:@selector(loadNewHomeData)];
    self.listView.block = ^(AachenXanthippeOredrModel * _Nonnull model) {
        [weakSelf pushWithModel:model];
    };
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    if (IS_LOGIN) {
        [self getOrderID];
    }
}

- (void)loadNewHomeData{
    [self getOrderID];
}

- (void)pushWithModel:(AachenXanthippeOredrModel *)model{
    NSString *url = model.cower;
    [self windowsPachalicStr:url beats:model.luminous];
}

- (void)getOrderID{
    @TAPWeakSelf(self);
    [self addHudView];
    NSString *epistles = _epistles;
    NSDictionary *dict = @{@"epistles":epistles};
    [[MemoryClassificationTapRequest sharedManager]alphabetizeKaffeeklatschApi:dict pageUrl:framingRivers complete:^(id  _Nonnull result) {
        NSDictionary *requestDict = [NSDictionary dictionaryWithDictionary:result];
        NSString *undaunted = [NSString stringWithFormat:@"%@", [requestDict objectForKey:@"undaunted"]];
//        NSString *incorruptible = [NSString stringWithFormat:@"%@", [requestDict objectForKey:@"incorruptible"]];
//        [MBProgressHUD wj_showPlainText:incorruptible view:nil];
        TAPLog(@">>>>>>>>>%@",[DacoitOakletTapFactory oakMacDict:requestDict]);
        if ([undaunted isEqualToString:@"0"] || [undaunted isEqualToString:@"00"]) {
            NSArray *forelock = [[requestDict objectForKey:@"hastens"]objectForKey:@"forelock"];
            if (ISNOTNILARR(forelock)) {
                NSArray *modelArray = [AachenXanthippeOredrModel mj_objectArrayWithKeyValuesArray:forelock];
                weakSelf.listView.modelArray = modelArray;
                [weakSelf.listView.tableView reloadData];
                [weakSelf.dataView removeFromSuperview];
            }else{
                [weakSelf.view addSubview:weakSelf.dataView];
                [weakSelf.dataView mas_makeConstraints:^(MASConstraintMaker *make) {
                    make.top.equalTo(weakSelf.navView.mas_bottom);
                    make.left.bottom.right.equalTo(weakSelf.view);
                }];
            }
        }
        [weakSelf removeHudView];
        [weakSelf.listView.tableView.mj_header endRefreshing];
    } errorBlock:^(NSError * _Nonnull error) {
        [weakSelf removeHudView];
        [weakSelf.listView.tableView.mj_header endRefreshing];
    }];
}

- (void)pushHrla{
    XanthinActionViewController *hepVc = [[XanthinActionViewController alloc]init];
    [self.navigationController pushViewController:hepVc animated:YES];
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
