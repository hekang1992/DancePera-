//
//  LibertinismUnionViewController.m
//  TapPera
//
//  Created by apple on 2024/1/19.
//

#import "LibertinismUnionViewController.h"
#import "EacmBaseInfoCell.h"

@interface LibertinismUnionViewController (){
    NSString *startTime;
    NSString *endTime;
}
@property (nonatomic,strong) NSMutableDictionary *keydict;
@end

@implementation LibertinismUnionViewController

-(void)setBeats:(NSString *)beats{
    _beats = beats;
}

-(void)setModelArray:(NSArray *)modelArray{
    _modelArray = modelArray;
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
    @TAPWeakSelf(self);
    // Do any additional setup after loading the view.
    [self.view addSubview:self.infoView];
    [self.infoView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    self.infoView.infoArray = _modelArray;
    self.infoView.block1 = ^{
        [weakSelf comFirmBank];
    };
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    startTime = [LinkBabaDeviceInfo iadlCascadingSacrificed];
}

- (void)comFirmBank{
    [self.keydict removeAllObjects];
    for (UIView *view in self.view.subviews) {
        if([view isKindOfClass:[MacOptimizerInfoView class]]){
            for (UITableView *tableView in view.subviews) {
                if([tableView isKindOfClass:[UITableView class]]){
                    for (UITableViewCell *cell in tableView.subviews) {
                        if ([cell isKindOfClass:[EacmBaseInfoCell class]]) {
                            EacmBaseInfoCell *authCell = (EacmBaseInfoCell *)cell;
                            NSString *btnStr = authCell.authView.commonField.text;
                            NSDictionary *resultDictionary = [DacoitOakletTapFactory cleanupPixelJosn:btnStr];
                            [self.keydict addEntriesFromDictionary:resultDictionary];
                            TAPLog(@"authCell.minField.text===%@",btnStr);
                        }
                    }
                }
            }
        }
    }
    [self addHudView];
    @TAPWeakSelf(self);
    @TAPStrongSelf(weakSelf);
    NSDictionary *dict = @{@"beats":_beats,@"uncut":@"2"};
    [self.keydict addEntriesFromDictionary:dict];
    TAPLog(@"self.keydict>>>>>%@",self.keydict);
    [[MemoryClassificationTapRequest sharedManager]alphabetizeKaffeeklatschApi:self.keydict pageUrl:senseWorld complete:^(id  _Nonnull result) {
        NSDictionary *requestDict = [NSDictionary dictionaryWithDictionary:result];
        NSString *undaunted = [NSString stringWithFormat:@"%@", [requestDict objectForKey:@"undaunted"]];
        NSString *incorruptible = [NSString stringWithFormat:@"%@", [requestDict objectForKey:@"incorruptible"]];
        [MBProgressHUD wj_showPlainText:incorruptible view:nil];
        if ([undaunted isEqualToString:@"0"] || [undaunted isEqualToString:@"00"]) {
            [weakSelf UpLoadMaiDian];
            [weakSelf wacoImplementWith:strongSelf->_beats type:@"bank"];
        }
        [weakSelf removeHudView];
    } errorBlock:^(NSError * _Nonnull error) {
        [weakSelf removeHudView];
    }];
}

- (void)UpLoadMaiDian{
    endTime = [LinkBabaDeviceInfo iadlCascadingSacrificed];
    [DacoitOakletTapFactory librationBabaDian:_beats abstained:@"8" startTime:startTime endTime:endTime];
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
