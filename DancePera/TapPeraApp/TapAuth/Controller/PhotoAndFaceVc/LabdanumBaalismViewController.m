//
//  LabdanumBaalismViewController.m
//  TapPera
//
//  Created by apple on 2024/1/18.
//

#import "LabdanumBaalismViewController.h"
#import "XanthippePassListView.h"
#import "ActivateMabeViewController.h"

@interface LabdanumBaalismViewController (){
    NSString *startTime;
    NSString *endTime;
}
@property (nonatomic,strong) CabanaRightAuthView *alertView;
@property (nonatomic,strong) XanthippePassListView *authListView;
@end

@implementation LabdanumBaalismViewController

-(void)setBeats:(NSString *)beats{
    _beats = beats;
}

-(XanthippePassListView *)authListView{
    if(!_authListView){
        _authListView = [[XanthippePassListView alloc]init];
    }
    return _authListView;
}

-(CabanaRightAuthView *)alertView{
    if (!_alertView) {
        _alertView = [[CabanaRightAuthView alloc]init];
        _alertView.frame = self.view.bounds;
    }
    return _alertView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    @TAPWeakSelf(self);
    [self addNavView];
    self.navView.titleLabel.text = @"Select ID Type";
    self.navView.block = ^{
        [weakSelf.navigationController popToRootViewControllerAnimated:YES];
    };
    [self.view addSubview:self.authListView];
    [self.authListView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.navView.mas_bottom);
        make.left.right.bottom.equalTo(self.view);
    }];
    self.authListView.block = ^(NSString * _Nonnull typeStr) {
        [weakSelf showAlertAuthView:typeStr];
    };
    self.authListView.collectionView.mj_header = [IacuLabefactionJsonHeader headerWithRefreshingTarget:self refreshingAction:@selector(loadNewHomeData)];
    [self getListType:_beats];
}

- (void)loadNewHomeData{
    [self getListType:_beats];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    startTime = [LinkBabaDeviceInfo iadlCascadingSacrificed];
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    endTime = [LinkBabaDeviceInfo iadlCascadingSacrificed];
}

- (void)getListType:(NSString *)beats{
    @TAPWeakSelf(self);
    [self addHudView];
    NSDictionary *dict = @{@"beats":beats};
    [[MemoryClassificationTapRequest sharedManager]getApi:dict pageUrl:suddenStrike complete:^(id  _Nonnull result) {
        NSDictionary *requestDict = [NSDictionary dictionaryWithDictionary:result];
        NSString *undaunted = [NSString stringWithFormat:@"%@", [requestDict objectForKey:@"undaunted"]];
        if ([undaunted isEqualToString:@"0"] || [undaunted isEqualToString:@"00"]) {
            TAPLog(@"requestDict>>>>>>>>>>>%@",[DacoitOakletTapFactory oakMacDict:requestDict])
            NSArray *affectionate = [[requestDict objectForKey:@"hastens"]objectForKey:@"affectionate"];
            NSArray *listArr = affectionate.firstObject;
            weakSelf.authListView.listArray = listArr;
            [weakSelf.authListView.collectionView reloadData];
        }
        [weakSelf removeHudView];
        [weakSelf.authListView.collectionView.mj_header endRefreshing];
    } errorBlock:^(NSError * _Nonnull error) {
        [weakSelf removeHudView];
        [weakSelf.authListView.collectionView.mj_header endRefreshing];
    }];
}

- (void)showAlertAuthView:(NSString *)authStr{
    @TAPWeakSelf(self);
    @TAPStrongSelf(weakSelf);
    TYAlertController *alectVc = [TYAlertController alertControllerWithAlertView:self.alertView preferredStyle:TYAlertControllerStyleActionSheet];
    self.alertView.bgImageView2.image = [UIImage imageNamed:authStr];
    [self presentViewController:alectVc animated:YES completion:nil];
    self.alertView.block1 = ^{
        [weakSelf dismissViewControllerAnimated:YES completion:nil];
    };
    self.alertView.block2 = ^{
        [weakSelf dismissViewControllerAnimated:YES completion:^{
            ActivateMabeViewController *photoVc = [[ActivateMabeViewController alloc]init];
            photoVc.authType = authStr;
            photoVc.beats = strongSelf->_beats;
            [weakSelf.navigationController pushViewController:photoVc animated:YES];
            [weakSelf UpLoadMaiDian];
        }];
    };
}

- (void)UpLoadMaiDian{
    [DacoitOakletTapFactory librationBabaDian:_beats abstained:@"2" startTime:startTime endTime:endTime];
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
