//
//  OakenHabacucViewController.m
//  TapPera
//
//  Created by apple on 2024/2/21.
//

#import "OakenHabacucViewController.h"
#import "LoaderEagletViewCell.h"

@interface OakenHabacucViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) NSArray *productArray;
@end

@implementation OakenHabacucViewController

- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.showsVerticalScrollIndicator = NO;
        _tableView.backgroundColor = [UIColor clearColor];
        _tableView.estimatedSectionHeaderHeight = 0;
        _tableView.estimatedSectionFooterHeight = 0;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.contentInsetAdjustmentBehavior
        = UIScrollViewContentInsetAdjustmentNever;
    }
    return _tableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    @TAPWeakSelf(self);
    [self addNavView];
    self.navView.titleLabel.text = @"Higher Limit Products";
    self.navView.block = ^{
        [weakSelf.navigationController popToRootViewControllerAnimated:YES];
    };
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.navView.mas_bottom);
        make.left.right.bottom.equalTo(self.view);
    }];
    self.tableView.mj_header = [IacuLabefactionJsonHeader headerWithRefreshingTarget:self refreshingAction:@selector(loadNewHomeData)];
    [self getHighProduct];
}

- (void)loadNewHomeData{
    [self getHighProduct];
}

- (void)getHighProduct{
    @TAPWeakSelf(self);
    [self addHudView];
    NSDictionary *dict = @{@"fitzjames":@"0"};
    [[MemoryClassificationTapRequest sharedManager]getApi:dict pageUrl:professesShould complete:^(id  _Nonnull result) {
        NSDictionary *requestDict = [NSDictionary dictionaryWithDictionary:result];
        NSString *undaunted = [NSString stringWithFormat:@"%@", [requestDict objectForKey:@"undaunted"]];
        if ([undaunted isEqualToString:@"0"] || [undaunted isEqualToString:@"00"]) {
            NSArray *productArray = [[requestDict objectForKey:@"hastens"]objectForKey:@"forelock"];
            NSArray *modelProductArray = [WackyCaballeroProductModel mj_objectArrayWithKeyValuesArray:productArray];
            weakSelf.productArray = modelProductArray;
            TAPLog(@"requestDict>info>>>>>>>>>>%@",[DacoitOakletTapFactory oakMacDict:requestDict]);
            [weakSelf.tableView reloadData];
        }
        [weakSelf removeHudView];
        [weakSelf.tableView.mj_header endRefreshing];
    } errorBlock:^(NSError * _Nonnull error) {
        [weakSelf removeHudView];
        [weakSelf.tableView.mj_header endRefreshing];
    }];
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    @TAPWeakSelf(self);
    LoaderEagletViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellIdentifier"];
    cell = [[LoaderEagletViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CellIdentifier"];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.model = self.productArray[indexPath.row];
    cell.block = ^{
        WackyCaballeroProductModel *model = weakSelf.productArray[indexPath.row];
        [weakSelf baathistYabbiStranger:model.cadet];
    };
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.productArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    WackyCaballeroProductModel *model = self.productArray[indexPath.row];
    if (ISTAPNOTSTRING(model.knives)) {
        return TapPix7(156+34+105);
    }else{
        return TapPix7(156+34);
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    WackyCaballeroProductModel *model = self.productArray[indexPath.row];
    [self baathistYabbiStranger:model.cadet];
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
