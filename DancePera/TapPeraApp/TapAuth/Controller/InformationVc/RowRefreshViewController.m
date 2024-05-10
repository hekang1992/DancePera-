//
//  RowRefreshViewController.m
//  TapPera
//
//  Created by apple on 2024/1/19.
//

#import "RowRefreshViewController.h"
#import "FabricIntrospectionInfoView.h"
#import "InheritanceAssignmentVacancyModel.h"

@interface RowRefreshViewController ()<CNContactPickerDelegate>{
    NSString *startTime;
    NSString *endTime;
}
@property (nonatomic,strong) FabricIntrospectionInfoView *contactView;
@property (nonatomic,strong) FableJaboticabaContractCell *currentCell;
@property (nonatomic,strong) NSMutableArray *dictArray;
@property (nonatomic,assign) NSInteger currentIndex;
@end

@implementation RowRefreshViewController

-(void)setBeats:(NSString *)beats{
    _beats = beats;
}

-(FabricIntrospectionInfoView *)contactView{
    if (!_contactView) {
        _contactView = [[FabricIntrospectionInfoView alloc]init];
    }
    return _contactView;
}

-(NSMutableArray *)dictArray{
    if(!_dictArray){
        _dictArray = [NSMutableArray array];
    }
    return _dictArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    @TAPWeakSelf(self);
    [self addNavView];
    self.navView.titleLabel.text = @"Emergency Contact";
    self.navView.block = ^{
        [weakSelf.navigationController popToRootViewControllerAnimated:YES];
    };
    [self.view addSubview:self.contactView];
    [self.contactView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.navView.mas_bottom);
        make.left.right.bottom.equalTo(self.view);
    }];
    [self getContactInfo];
    self.contactView.block = ^(FableJaboticabaContractCell * _Nonnull cell, NSInteger index) {
        weakSelf.currentIndex = index;
        weakSelf.currentCell = cell;
        [weakSelf selContact:index];
    };
    self.contactView.block1 = ^{
        [weakSelf saveInfo];
    };
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    startTime = [LinkBabaDeviceInfo iadlCascadingSacrificed];
}

- (void)getContactInfo{
    @TAPWeakSelf(self);
    [self addHudView];
    NSDictionary *dict = @{@"beats":_beats};
    [[MemoryClassificationTapRequest sharedManager]alphabetizeKaffeeklatschApi:dict pageUrl:noPeed complete:^(id  _Nonnull result) {
        NSDictionary *requestDict = [NSDictionary dictionaryWithDictionary:result];
        NSString *undaunted = [NSString stringWithFormat:@"%@", [requestDict objectForKey:@"undaunted"]];
        if ([undaunted isEqualToString:@"0"] || [undaunted isEqualToString:@"00"]) {
            TAPLog(@"requestDict>info>>>>>>>>>>%@",[DacoitOakletTapFactory oakMacDict:requestDict])
            NSArray *array = [[[requestDict objectForKey:@"hastens"]objectForKey:@"uninhabited"]objectForKey:@"forelock"];
            NSArray *infoArray = [EagernessRandomTwistModel mj_objectArrayWithKeyValuesArray:array];
            weakSelf.contactView.array = infoArray;
            [weakSelf.contactView.tableView reloadData];
        }
        [weakSelf removeHudView];
    } errorBlock:^(NSError * _Nonnull error) {
        [weakSelf removeHudView];
    }];
}

- (void)selContact:(NSInteger)index{
    CNContactPickerViewController *contactPicker = [[CNContactPickerViewController alloc] init];
    contactPicker.delegate = self;
    contactPicker.displayedPropertyKeys = @[CNContactPhoneNumbersKey];
    [self presentViewController:contactPicker animated:YES completion:nil];
}

#pragma mark - CNContactPickerDelegate  进入系统通讯录页面 --
- (void)contactPicker:(CNContactPickerViewController *)picker didSelectContactProperty:(CNContactProperty *)contactProperty {
    @TAPWeakSelf(self);
    [self dismissViewControllerAnimated:YES completion:^{
        NSString *name = [NSString stringWithFormat:@"%@%@",contactProperty.contact.familyName,contactProperty.contact.givenName];
        CNLabeledValue  *phoneLabeledValue = [contactProperty.contact.phoneNumbers firstObject];
        CNPhoneNumber *phoneValue = phoneLabeledValue.value;
        NSString *phone = phoneValue.stringValue;
        weakSelf.currentCell.textField2.text = name;
        weakSelf.currentCell.textField3.text = phone;
        EagernessRandomTwistModel *model = weakSelf.currentCell.model;
        ActualSolvingTwistModel *model1 = model.architectural[self.currentIndex];
        NSDictionary *phoneDict = @{@"ineligible":phone,@"twist":name,@"sweetness":model.sweetness,@"insalubrious":model1.profiting};
        NSString *allDictStr = [DacoitOakletTapFactory oakMacDict:phoneDict];
        weakSelf.currentCell.commonField.text = allDictStr;
    }];
}

- (void)saveInfo{
    [self.dictArray removeAllObjects];
    for (UIView *view in self.view.subviews) {
        if([view isKindOfClass:[FabricIntrospectionInfoView class]]){
            for (UITableView *tableView in view.subviews) {
                if([tableView isKindOfClass:[UITableView class]]){
                    for (UITableViewCell *cell in tableView.subviews) {
                        if([cell isKindOfClass:[FableJaboticabaContractCell class]]){
                            FableJaboticabaContractCell *contactCell = (FableJaboticabaContractCell *)cell;
                            NSString *contactStr = [NSString stringWithFormat:@"%@",contactCell.commonField.text];
                            NSDictionary *resultDictionary = [NSDictionary dictionary];
                            resultDictionary = [DacoitOakletTapFactory cleanupPixelJosn:contactStr];
                            if(ISNOTNILDIC(resultDictionary)){
                                [self.dictArray addObject:resultDictionary];
                            }
                        }
                    }
                }
            }
        }
    }
    [self addHudView];
    @TAPWeakSelf(self);
    @TAPStrongSelf(weakSelf);
    NSMutableArray *dictArray = self.dictArray;
    NSString *beats = _beats;
    NSString *hastens = [DacoitOakletTapFactory oakMacDict:dictArray];
    NSDictionary *contactDict = @{@"beats":beats,@"hastens":hastens};
    TAPLog(@"dictArray==%@",dictArray);
    [[MemoryClassificationTapRequest sharedManager]keyQandaharApi:contactDict pageUrl:humanGroup complete:^(id  _Nonnull result) {
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
    [DacoitOakletTapFactory librationBabaDian:_beats abstained:@"7" startTime:startTime endTime:endTime];
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
