//
//  XanthinActionViewController.m
//  TapPera
//
//  Created by apple on 2024/2/1.
//

#import "XanthinActionViewController.h"
#import "VacantAarnetHelpView.h"
#import "PoolingActiveHelpModel.h"

@interface XanthinActionViewController ()
@property (nonatomic,strong) UILabel *mainLabel;
@property (nonatomic,strong) VacantAarnetHelpView *helpView;
@property (nonatomic,strong) UIImageView *iconImageView;
@end

@implementation XanthinActionViewController

-(UIImageView *)iconImageView{
    if (!_iconImageView) {
        _iconImageView = [[UIImageView alloc]init];
        _iconImageView.image = [UIImage imageNamed:@"virtualObj_bg_image"];
    }
    return _iconImageView;
}

-(VacantAarnetHelpView *)helpView{
    if (!_helpView) {
        _helpView = [[VacantAarnetHelpView alloc]init];
    }
    return _helpView;
}

-(UILabel *)mainLabel{
    if (!_mainLabel) {
        _mainLabel = [DacoitOakletTapFactory ubiKnapsackCreate:[UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(36)] textColor:[UIColor colorWithCSS:@"#413E45"] textAliment:NSTextAlignmentLeft];
        _mainLabel.text = @"Frequently Asked Questions";
    }
    return _mainLabel;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    @TAPWeakSelf(self);
    // Do any additional setup after loading the view.
    [self addNavView];
    self.navView.backgroundColor = [UIColor colorWithCSS:@"#AFE901"];
    self.navView.titleLabel.text = @"Help Center";
    self.navView.block = ^{
        [weakSelf.navigationController popViewControllerAnimated:YES];
    };
    [self.view addSubview:self.iconImageView];
    [self.iconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(self.view);
        make.height.mas_equalTo(TapPix7(402));
        make.top.equalTo(self.navView.mas_bottom);
    }];
    [self.view addSubview:self.mainLabel];
    [self.mainLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.iconImageView.mas_bottom).offset(TapPix7(40));
        make.height.mas_equalTo(TapPix7(43));
        make.right.equalTo(self.view);
        make.left.equalTo(self.view).offset(TapPix7(40));
    }];
    [self.view addSubview:self.helpView];
    [self.helpView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mainLabel.mas_bottom);
        make.left.right.bottom.equalTo(self.view);
    }];
    NSDictionary *dict1 = @{@"title":@"What is the maximum loan amount available?",@"content":@"Borrowing is capped at a maximum of ₱75,000, and the loan amount varies based on individual circumstances for each user.",@"imageUrl":@"a1",@"isExpanded":@(NO)};
    NSDictionary *dict2 = @{@"title":@"What documentation is necessary for a loan application?",@"content":@"Loan application requirements: Identification card and a designated bank account for receiving funds.",@"imageUrl":@"a2",@"isExpanded":@(NO)};
    NSDictionary *dict3 = @{@"title":@"Why was the application not approved?",@"content":@"The loan amount is system-evaluated, and the result displayed on the page is final. Manual intervention cannot influence the outcome. If not approved, maintain good credit and retry later. Explore other recommended borrowing options. Thank you for your support!",@"imageUrl":@"a3",@"isExpanded":@(NO)};
    NSDictionary *dict4 = @{@"title":@"What should I do if the loan disbursement fails?",@"content":@"The disbursement may have failed due to an incorrect payment account. Update it in the 'Failed Loan Funding' section under Orders.",@"imageUrl":@"a4",@"isExpanded":@(NO)};
    NSDictionary *dict5 = @{@"title":@"How long does it take for the loan to be disbursed after submission?",@"content":@"The actual disbursement time may vary for different receiving bank cards; the credited time is subject to the processing of the receiving bank.",@"imageUrl":@"a5",@"isExpanded":@(NO)};
    NSArray *dictArray = @[dict1,dict2,dict3,dict4,dict5];
    self.helpView.array = [PoolingActiveHelpModel mj_objectArrayWithKeyValuesArray:dictArray];
    TAPLog(@">>>>>>>%@",[PoolingActiveHelpModel mj_objectArrayWithKeyValuesArray:dictArray]);
    [self.helpView.tableView reloadData];
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
