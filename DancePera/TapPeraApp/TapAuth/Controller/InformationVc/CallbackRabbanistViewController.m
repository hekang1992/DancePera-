//
//  CallbackRabbanistViewController.m
//  TapPera
//
//  Created by apple on 2024/1/19.
//

#import "CallbackRabbanistViewController.h"
#import "MacOptimizerInfoView.h"
#import "InheritanceAssignmentVacancyModel.h"
#import "PrimaryQbeTwistModel.h"
#import "SexagenarianCheckBtnCell.h"
#import "EacmBaseInfoCell.h"

@interface CallbackRabbanistViewController (){
    NSString *startTime;
    NSString *endTime;
}
@property (nonatomic,strong) MacOptimizerInfoView *infoView;
@property (nonatomic,strong) NSMutableDictionary *keydict;
@property (nonatomic,strong) NSArray *modelArray;
@end

@implementation CallbackRabbanistViewController

-(void)setBeats:(NSString *)beats{
    _beats = beats;
}

-(MacOptimizerInfoView *)infoView{
    if (!_infoView) {
        _infoView = [[MacOptimizerInfoView alloc]init];
    }
    return _infoView;
}

-(NSMutableDictionary *)keydict{
    if(!_keydict){
        _keydict = [NSMutableDictionary dictionary];
    }
    return _keydict;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    @TAPWeakSelf(self);
    [self addNavView];
    self.navView.titleLabel.text = @"Work Information";
    self.navView.block = ^{
        [weakSelf.navigationController popToRootViewControllerAnimated:YES];
    };
    [self.view addSubview:self.infoView];
    [self.infoView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.navView.mas_bottom);
        make.left.right.bottom.equalTo(self.view);
    }];
    self.infoView.block = ^(NSIndexPath * _Nonnull path, InheritanceAssignmentVacancyModel * _Nonnull model) {
        [weakSelf getCityAdress:path model:model];
    };
    [self getWorkInfo];
    self.infoView.block1 = ^{
        [weakSelf comFirm];
    };
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    startTime = [LinkBabaDeviceInfo iadlCascadingSacrificed];
}

- (void)getWorkInfo{
    @TAPWeakSelf(self);
    [self addHudView];
    NSDictionary *dict = @{@"beats":_beats};
    [[MemoryClassificationTapRequest sharedManager]alphabetizeKaffeeklatschApi:dict pageUrl:clockWorked complete:^(id  _Nonnull result) {
        NSDictionary *requestDict = [NSDictionary dictionaryWithDictionary:result];
        NSString *undaunted = [NSString stringWithFormat:@"%@", [requestDict objectForKey:@"undaunted"]];
        if ([undaunted isEqualToString:@"0"] || [undaunted isEqualToString:@"00"]) {
            NSArray *infoArray = [InheritanceAssignmentVacancyModel mj_objectArrayWithKeyValuesArray:[[requestDict objectForKey:@"hastens"]objectForKey:@"vacancy"]];
            weakSelf.infoView.infoArray = infoArray;
            [weakSelf.infoView.tableView reloadData];
            TAPLog(@"requestDict>info>>>>>>>>>>%@",[DacoitOakletTapFactory oakMacDict:requestDict])
        }
        [weakSelf removeHudView];
    } errorBlock:^(NSError * _Nonnull error) {
        [weakSelf removeHudView];
    }];
}

- (void)getCityAdress:(NSIndexPath *)indexPath model:(InheritanceAssignmentVacancyModel *)model{
    if (ISNOTNILARR(self.modelArray)) {
        self.infoView.cityArray = self.modelArray;
        [self.infoView hashJacalAlert:indexPath tablePView:self.infoView.tableView model:model];
    } else {
        @TAPWeakSelf(self);
        [self addHudView];
        [[MemoryClassificationTapRequest sharedManager]getApi:@{@"undaunted":@"1"} pageUrl:whichSuccumbed complete:^(id  _Nonnull result) {
            NSDictionary *requestDict = [NSDictionary dictionaryWithDictionary:result];
            NSString *undaunted = [NSString stringWithFormat:@"%@", [requestDict objectForKey:@"undaunted"]];
            if ([undaunted isEqualToString:@"0"] || [undaunted isEqualToString:@"00"]) {
                NSArray *cityArray = [PrimaryQbeTwistModel mj_objectArrayWithKeyValuesArray:[[requestDict objectForKey:@"hastens"]objectForKey:@"forelock"]];
                TAPLog(@"requestDict>work>>>>>>>>>>%@",[DacoitOakletTapFactory oakMacDict:requestDict]);
                weakSelf.infoView.cityArray = cityArray;
                weakSelf.modelArray = cityArray;
                [weakSelf.infoView hashJacalAlert:indexPath tablePView:weakSelf.infoView.tableView model:model];
            }
            [weakSelf removeHudView];
        } errorBlock:^(NSError * _Nonnull error) {
            [weakSelf removeHudView];
        }];
    }
}

- (void)comFirm{
    [self.keydict removeAllObjects];
    for (UIView *view in self.view.subviews) {
        if([view isKindOfClass:[MacOptimizerInfoView class]]){
            for (UITableView *tableView in view.subviews) {
                if([tableView isKindOfClass:[UITableView class]]){
                    for (UITableViewCell *cell in tableView.subviews) {
                        if ([cell isKindOfClass:[SexagenarianCheckBtnCell class]]) {
                            SexagenarianCheckBtnCell *btnCell = (SexagenarianCheckBtnCell *)cell;
                            NSString *btnStr = btnCell.commonField.text;
                            NSDictionary *resultDictionary = [DacoitOakletTapFactory cleanupPixelJosn:btnStr];
                            [self.keydict addEntriesFromDictionary:resultDictionary];
                            TAPLog(@"btnCell.minField.text===%@",btnStr);
                        }else if ([cell isKindOfClass:[EacmBaseInfoCell class]]){
                            EacmBaseInfoCell *authCell = (EacmBaseInfoCell *)cell;
                            NSString *btnStr = authCell.authView.commonField.text;
                            NSDictionary *resultDictionary = [DacoitOakletTapFactory cleanupPixelJosn:btnStr];
                            [self.keydict addEntriesFromDictionary:resultDictionary];
                            TAPLog(@"authCell.minField.text===%@",btnStr);
                        }else{}
                    }
                }
            }
        }
    }
    [self addHudView];
    @TAPWeakSelf(self);
    @TAPStrongSelf(weakSelf);
    NSDictionary *dict = @{@"beats":_beats};
    [self.keydict addEntriesFromDictionary:dict];
    TAPLog(@"self.keydict>>>>>%@",self.keydict);
    [[MemoryClassificationTapRequest sharedManager]alphabetizeKaffeeklatschApi:self.keydict pageUrl:beforeOpportunity complete:^(id  _Nonnull result) {
        NSDictionary *requestDict = [NSDictionary dictionaryWithDictionary:result];
        NSString *undaunted = [NSString stringWithFormat:@"%@", [requestDict objectForKey:@"undaunted"]];
        NSString *incorruptible = [NSString stringWithFormat:@"%@", [requestDict objectForKey:@"incorruptible"]];
        [MBProgressHUD wj_showPlainText:incorruptible view:nil];
        if ([undaunted isEqualToString:@"0"] || [undaunted isEqualToString:@"00"]) {
            [weakSelf UpLoadMaiDian];
            [weakSelf wacoImplementWith:strongSelf->_beats type:@""];
        }
        [weakSelf removeHudView];
    } errorBlock:^(NSError * _Nonnull error) {
        [weakSelf removeHudView];
    }];
}

- (void)UpLoadMaiDian{
    endTime = [LinkBabaDeviceInfo iadlCascadingSacrificed];
    [DacoitOakletTapFactory librationBabaDian:_beats abstained:@"6" startTime:startTime endTime:endTime];
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
