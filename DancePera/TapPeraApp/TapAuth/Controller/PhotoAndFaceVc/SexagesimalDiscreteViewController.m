//
//  SexagesimalDiscreteViewController.m
//  TapPera
//
//  Created by apple on 2024/1/18.
//

#import "SexagesimalDiscreteViewController.h"
#import "XanthismPlacementFaceView.h"
#import "LabellumSemaphoreViewController.h"
#import "PolygonXmlInfoModel.h"
@import AAILiveness;
@interface SexagesimalDiscreteViewController (){
    NSString *startTime;
    NSString *endTime;
}
@property (nonatomic,strong) XanthismPlacementFaceView *faceView;
@property (nonatomic,copy) NSString *uncovered;
@property (nonatomic,copy) NSString *concord;
@end

@implementation SexagesimalDiscreteViewController

-(void)setBeats:(NSString *)beats{
    _beats = beats;
}

-(XanthismPlacementFaceView *)faceView{
    if (!_faceView) {
        _faceView = [[XanthismPlacementFaceView alloc]init];
    }
    return _faceView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    @TAPWeakSelf(self);
    [self addNavView];
    self.navView.titleLabel.text = @"Facial Recognition";
    self.navView.block = ^{
        [weakSelf.navigationController popToRootViewControllerAnimated:YES];
    };
    [self.view addSubview:self.faceView];
    [self.faceView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.navView.mas_bottom);
        make.left.right.bottom.equalTo(self.view);
    }];
    self.faceView.block = ^{
        if (ISTAPNOTSTRING(weakSelf.concord)) {
            [weakSelf getProductInfo];
        }else{
            [weakSelf getLicense];
        }
    };
    startTime = [LinkBabaDeviceInfo iadlCascadingSacrificed];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self getListType:_beats];
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
            NSString *concord = [[requestDict objectForKey:@"hastens"]objectForKey:@"concord"];
            if (ISTAPNOTSTRING(concord)) {
                weakSelf.concord = concord;
                NSURL *imageUrl = [NSURL URLWithString:concord];
                [weakSelf.faceView.faceImageView2 sd_setImageWithURL:imageUrl];
            }
        }
        [weakSelf removeHudView];
    } errorBlock:^(NSError * _Nonnull error) {
        [weakSelf removeHudView];
    }];
}

- (void)getLicense{
    @TAPWeakSelf(self);
    [self addHudView];
    NSDictionary *dict = @{@"inadvertently":@"0"};
    [[MemoryClassificationTapRequest sharedManager]alphabetizeKaffeeklatschApi:dict pageUrl:ratherFlower complete:^(id  _Nonnull result) {
        NSDictionary *requestDict = [NSDictionary dictionaryWithDictionary:result];
        NSString *undaunted = [NSString stringWithFormat:@"%@", [requestDict objectForKey:@"undaunted"]];
        if ([undaunted isEqualToString:@"0"] || [undaunted isEqualToString:@"00"]) {
            TAPLog(@"requestDict>>>>>>>>>>>%@",[DacoitOakletTapFactory oakMacDict:requestDict])
            NSString *uncovered = [[requestDict objectForKey:@"hastens"]objectForKey:@"uncovered"];
            weakSelf.uncovered = uncovered;
            [weakSelf takeTapFace];
        }
        [weakSelf removeHudView];
    } errorBlock:^(NSError * _Nonnull error) {
        [weakSelf removeHudView];
    }];
}

- (void)takeTapFace{
    AVAuthorizationStatus status = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    if (status == AVAuthorizationStatusNotDetermined) {
        [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
            if (granted) {
                dispatch_sync(dispatch_get_main_queue(), ^{
                    [self faceTap];
                });
            }
        }];
    } else if (status == AVAuthorizationStatusDenied || status == AVAuthorizationStatusRestricted) {
        [self goCamera];
    } else {
        [self faceTap];
    }
}

- (void)goCamera{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Go Camera" message:@"Turn on the camera" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"To Set" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
        NSString * urlString = UIApplicationOpenSettingsURLString;
        if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:urlString]]) {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlString] options:@{} completionHandler:nil];
        }
    }];
    UIAlertAction *otherAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
    }];
    // Add the actions.
    [alertController addAction:cancelAction];
    [alertController addAction:otherAction];
    [self presentViewController:alertController animated:YES completion:nil];
}

- (void)faceTap{
    @TAPWeakSelf(self);
    [AAILivenessSDK initWithMarket:AAILivenessMarketPhilippines];
    NSString *checkResult = [AAILivenessSDK configLicenseAndCheck:self.uncovered];
    AAILivenessViewController *faceVc = [[AAILivenessViewController alloc]init];
    if ([checkResult isEqualToString:@"SUCCESS"]) {
        faceVc.detectionSuccessBlk = ^(AAILivenessViewController * _Nonnull rawVC, AAILivenessResult * _Nonnull result) {
            NSString *livenessId = result.livenessId;
            UIImage *bestImg = result.img;
            CGSize size = bestImg.size;
            TAPLog(@">>>>>livenessId: %@, imgSize: %.2f, %.2f", livenessId, size.width, size.height);
            [MBProgressHUD wj_showPlainText:@"success" view:nil];
            [rawVC.navigationController dismissViewControllerAnimated:YES completion:nil];
            NSData *data = [DacoitOakletTapFactory imageQualityCompress:bestImg toByte:1200];
            [weakSelf tapLoadIcon:data livenessId:livenessId image:bestImg];
       };
        UINavigationController *navc = [[UINavigationController alloc] initWithRootViewController:faceVc];
        navc.modalPresentationStyle = UIModalPresentationFullScreen;
        [self presentViewController:navc animated:YES completion:nil];
    } else if ([checkResult isEqualToString:@"LICENSE_EXPIRE"]) {
       // "LICENSE_EXPIRE"
        [MBProgressHUD wj_showPlainText:@"license expire" view:nil];
    } else if ([checkResult isEqualToString:@"APPLICATION_ID_NOT_MATCH"]) {
       // "APPLICATION_ID_NOT_MATCH"
        [MBProgressHUD wj_showPlainText:@"application id not match" view:nil];
    } else {
       // other unkown errors ...
    }
    faceVc.detectionFailedBlk = ^(AAILivenessViewController * _Nonnull rawVC, NSDictionary * _Nonnull errorInfo) {
       AAILivenessFailedResult *result = [AAILivenessFailedResult resultWithErrorInfo:errorInfo];
       TAPLog(@"❌: Detection failed: %@, message: %@, transactionId: %@", result.errorCode, result.errorMsg, result.transactionId);
        [MBProgressHUD wj_showPlainText:@"recognition failed" view:nil];
        [rawVC.presentingViewController dismissViewControllerAnimated:YES completion:nil];
    };
}

- (void)tapLoadIcon:(NSData *)iconData livenessId:(NSString *)livenessId image:(UIImage *)image {
    @TAPWeakSelf(self);
    [self addHudView];
    NSDictionary *dict = @{@"unwittingly":@"2",@"beats":_beats,@"profiting":@"10",@"uncut":@"",@"escaping":@"",@"unexpressed":@"1",@"buoyed":livenessId};
    [[MemoryClassificationTapRequest sharedManager]sendApiFile:dict pageUrl:rememberFriend data:iconData complete:^(id  _Nonnull result) {
        NSDictionary *requestDict = [NSDictionary dictionaryWithDictionary:result];
        NSString *undaunted = [NSString stringWithFormat:@"%@", [requestDict objectForKey:@"undaunted"]];
        if ([undaunted isEqualToString:@"0"] || [undaunted isEqualToString:@"00"]) {
            TAPLog(@"requestDict>>>>>>>>>>>%@",[DacoitOakletTapFactory oakMacDict:requestDict])
            [weakSelf getProductInfo];
        }
        [weakSelf removeHudView];
    } errorBlock:^(NSError * _Nonnull error) {
        [weakSelf removeHudView];
    }];
}

- (void)getProductInfo{
    [self UpLoadMaiDian];
    NSDictionary *dict = @{@"beats":_beats};
    [[MemoryClassificationTapRequest sharedManager]alphabetizeKaffeeklatschApi:dict pageUrl:@"/trulyPleasure" complete:^(id  _Nonnull result) {
    } errorBlock:^(NSError * _Nonnull error) {
    }];
    [self wacoImplementWith:_beats type:@""];
}

- (void)UpLoadMaiDian{
    endTime = [LinkBabaDeviceInfo iadlCascadingSacrificed];
    [DacoitOakletTapFactory librationBabaDian:_beats abstained:@"4" startTime:startTime endTime:endTime];
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
