//
//  ActivateMabeViewController.m
//  TapPera
//
//  Created by apple on 2024/1/18.
//

#import "ActivateMabeViewController.h"
#import "ShapeTraversePhotoView.h"
#import "SexagesimalDiscreteViewController.h"
#import "PolygonXmlInfoModel.h"
#import "ZagrosItemInfoView.h"

@interface ActivateMabeViewController ()<UIImagePickerControllerDelegate,UINavigationControllerDelegate>{
    NSString *startTime;
    NSString *endTime;
}
@property (nonatomic,strong) UIButton *btn;
@property (nonatomic,strong) ShapeTraversePhotoView *photoView;
@property (nonatomic,strong) UIImagePickerController *imagePickerVc;
@end

@implementation ActivateMabeViewController

-(void)setAuthType:(NSString *)authType{
    _authType = authType;
}

-(void)setBeats:(NSString *)beats{
    _beats = beats;
}

-(ShapeTraversePhotoView *)photoView{
    if (!_photoView) {
        _photoView = [[ShapeTraversePhotoView alloc]init];
    }
    return _photoView;
}

- (UIImagePickerController *)imagePickerVc{
    if (!_imagePickerVc) {
        _imagePickerVc = [[UIImagePickerController alloc]init];
        _imagePickerVc.delegate = self;
        _imagePickerVc.editing = YES;
        _imagePickerVc.allowsEditing = YES;
    }
    return _imagePickerVc;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    @TAPWeakSelf(self);
    // Do any additional setup after loading the view.
    [self addNavView];
    self.navView.titleLabel.text = @"ID Card Upload";
    self.navView.block = ^{
        [weakSelf.navigationController popToRootViewControllerAnimated:YES];
    };
    [self.view insertSubview:self.photoView belowSubview:self.navView];
    [self.photoView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.navView.mas_bottom).offset(-TapPix7(110));
        make.left.right.bottom.equalTo(self.view);
    }];
    self.photoView.iconImageView3.image = [UIImage imageNamed:_authType];
    self.photoView.block1 = ^{
        [weakSelf.navigationController popViewControllerAnimated:YES];
    };
    self.photoView.block2 = ^{
        [weakSelf pushFaceVc];
    };
    self.photoView.block3 = ^(UIButton * _Nonnull btn) {
        weakSelf.btn = btn;
    };
    self.photoView.selectView.block1 = ^{
        [weakSelf gabbartBetZhendong];
        [weakSelf checkTapAlbum];
    };
    self.photoView.selectView.block2 = ^{
        [weakSelf gabbartBetZhendong];
        [weakSelf checkTapCamera];
    };
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self getListType:_beats];
    startTime = [LinkBabaDeviceInfo iadlCascadingSacrificed];
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
            NSString *concord = [[[requestDict objectForKey:@"hastens"]objectForKey:@"metamorphosed"]objectForKey:@"concord"];
            if (ISTAPNOTSTRING(concord)) {
                [weakSelf showPhoto:concord];
            }else{
                self.photoView.changeBtn.hidden = NO;
                self.photoView.startBtn.hidden = NO;
            }
        }
        [weakSelf removeHudView];
    } errorBlock:^(NSError * _Nonnull error) {
        [weakSelf removeHudView];
    }];
}

- (void)pushFaceVc{
    SexagesimalDiscreteViewController *faceVc = [[SexagesimalDiscreteViewController alloc]init];
    faceVc.beats = _beats;
    [self.navigationController pushViewController:faceVc animated:YES];
}

- (void)showPhoto:(NSString *)imageUrl{
    self.photoView.changeBtn.hidden = YES;
    self.photoView.startBtn.hidden = YES;
    self.photoView.changeBtn1.hidden = NO;
    NSURL *urlStr = [NSURL URLWithString:imageUrl];
    [self.photoView.iconImageView3 sd_setImageWithURL:urlStr];
}

- (void)checkTapCamera {
    AVAuthorizationStatus status = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    if (status == AVAuthorizationStatusNotDetermined) {
        [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
            if (granted) {
                dispatch_async(dispatch_get_main_queue(), ^{
                    [self takePhoto];
                });
            }
        }];
    } else if (status == AVAuthorizationStatusDenied || status == AVAuthorizationStatusRestricted) {
        [self goToCamera];
    } else {
        dispatch_async(dispatch_get_main_queue(), ^{
            [self takePhoto];
        });
    }
}

- (void)checkTapAlbum {
    PHAuthorizationStatus status = [PHPhotoLibrary authorizationStatus];
    if (status == PHAuthorizationStatusNotDetermined) {
        [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
            dispatch_async(dispatch_get_main_queue(), ^{
                if (status == PHAuthorizationStatusAuthorized) {
                    dispatch_async(dispatch_get_main_queue(), ^{
                        [self chosePhoto];
                    });
                }
            });
        }];
    } else if (status == PHAuthorizationStatusDenied || status == PHAuthorizationStatusRestricted) {
        [self goToCamera];
    } else {
        dispatch_async(dispatch_get_main_queue(), ^{
            [self chosePhoto];
        });
    }
}

- (void)chosePhoto{
    [self.photoView startClick:self.btn];
    self.imagePickerVc.allowsEditing = YES;
    self.imagePickerVc.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    self.imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:self.imagePickerVc animated:YES completion:nil];
}

- (void)takePhoto{
    [self.photoView startClick:self.btn];
    self.imagePickerVc.allowsEditing = YES;
    self.imagePickerVc.sourceType = UIImagePickerControllerSourceTypeCamera;
    self.imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    self.imagePickerVc.cameraCaptureMode = UIImagePickerControllerCameraCaptureModePhoto;
    [self presentViewController:self.imagePickerVc animated:YES completion:nil];
}

- (void)goToCamera{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"To verify the authenticity of your identity and prevent fraud, we require access to your photo album or camera. Kindly grant permission to use your photo album for identity verification or enable the camera for the same purpose. We will ensure the security of your personal information and use it solely for necessary identity verification purposes." message:@"" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Go to settings" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
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

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<UIImagePickerControllerInfoKey,id> *)info{
    UIImage *image = [info objectForKey:UIImagePickerControllerEditedImage];
    NSData *data = [DacoitOakletTapFactory imageQualityCompress:image toByte:1200];
    [self dismissViewControllerAnimated:YES completion:^{
        [self setTapIcon:data Image:image];
    }];
}

//照片上传
- (void)setTapIcon:(NSData *)iconData Image:(UIImage *)image{
    @TAPWeakSelf(self);
    [self addHudView];
    NSDictionary *dict = @{@"unwittingly":@"1",@"beats":_beats,@"profiting":@"11",@"uncut":_authType,@"escaping":@"",@"unexpressed":@"1"};
    [[MemoryClassificationTapRequest sharedManager]sendApiFile:dict pageUrl:rememberFriend data:iconData complete:^(id  _Nonnull result) {
        NSDictionary *requestDict = [NSDictionary dictionaryWithDictionary:result];
        NSString *undaunted = [NSString stringWithFormat:@"%@", [requestDict objectForKey:@"undaunted"]];
        NSString *incorruptible = [NSString stringWithFormat:@"%@", [requestDict objectForKey:@"incorruptible"]];
        [MBProgressHUD wj_showPlainText:incorruptible view:nil];
        if ([undaunted isEqualToString:@"0"] || [undaunted isEqualToString:@"00"]) {
            NSDictionary *hastens = [requestDict objectForKey:@"hastens"];
            PolygonXmlInfoModel *model = [PolygonXmlInfoModel mj_objectWithKeyValues:hastens];
            [weakSelf pushAlertInfo:model];
            TAPLog(@"requestDict>>>>>>>>>>>%@",[DacoitOakletTapFactory oakMacDict:requestDict])
        }
        [weakSelf removeHudView];
    } errorBlock:^(NSError * _Nonnull error) {
        [weakSelf removeHudView];
    }];
}

- (void)pushAlertInfo:(PolygonXmlInfoModel *)model{
    @TAPWeakSelf(self);
    ZagrosItemInfoView *alertView = [[ZagrosItemInfoView alloc]init];
    alertView.model = model;
    alertView.frame = self.view.bounds;
    [alertView.tableView reloadData];
    TYAlertController *alectVc = [TYAlertController alertControllerWithAlertView:alertView preferredStyle:TYAlertControllerStyleActionSheet transitionAnimation:TYAlertTransitionAnimationScaleFade];
    [self presentViewController:alectVc animated:YES completion:nil];
    alertView.block = ^{
        [weakSelf dismissViewControllerAnimated:YES completion:nil];
    };
    alertView.block1 = ^(NSString * _Nonnull name, NSString * _Nonnull num, NSString * _Nonnull date) {
        [weakSelf saveAuthInfoTime:date number:num name:name];
    };
}

- (void)saveAuthInfoTime:(NSString *)time number:(NSString *)num name:(NSString *)nam{
    @TAPWeakSelf(self);
    [self addHudView];
    NSString *fatherly = time;
    NSString *insight = num;
    NSString *gabbyHostTwist = nam;
    NSString *profiting = @"11";
    NSString *uncut = _authType;
    NSDictionary *dict = @{@"fatherly":fatherly,@"insight":insight,@"twist":gabbyHostTwist,@"profiting":profiting,@"uncut":uncut};
    [[MemoryClassificationTapRequest sharedManager]alphabetizeKaffeeklatschApi:dict pageUrl:continuallyCannot complete:^(id  _Nonnull result) {
        NSDictionary *requestDict = [NSDictionary dictionaryWithDictionary:result];
        NSString *undaunted = [NSString stringWithFormat:@"%@", [requestDict objectForKey:@"undaunted"]];
        NSString *incorruptible = [NSString stringWithFormat:@"%@", [requestDict objectForKey:@"incorruptible"]];
        [MBProgressHUD wj_showPlainText:incorruptible view:nil];
        if ([undaunted isEqualToString:@"0"] || [undaunted isEqualToString:@"00"]) {
            TAPLog(@"requestDict>>>>>>>>>>>%@",[DacoitOakletTapFactory oakMacDict:requestDict])
            [weakSelf pushNextVc];
        }
        [weakSelf removeHudView];
    } errorBlock:^(NSError * _Nonnull error) {
        [weakSelf removeHudView];
    }];
}

- (void)pushNextVc{
    [self dismissViewControllerAnimated:YES completion:^{
        SexagesimalDiscreteViewController *faceVc = [[SexagesimalDiscreteViewController alloc]init];
        faceVc.beats = self->_beats;
        [self.navigationController pushViewController:faceVc animated:YES];
        [self UpLoadMaiDian];
    } ];
}

- (void)UpLoadMaiDian{
    endTime = [LinkBabaDeviceInfo iadlCascadingSacrificed];
    [DacoitOakletTapFactory librationBabaDian:_beats abstained:@"3" startTime:startTime endTime:endTime];
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
