//
//  DacoitOakletTapFactory.m
//  TapPera
//
//  Created by apple on 2024/1/16.
//

#import "DacoitOakletTapFactory.h"

@implementation DacoitOakletTapFactory

+ (instancetype)sharedManager{
    static DacoitOakletTapFactory *sharedManager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedManager = [[self alloc] init];
    });
    return sharedManager;
}

+ (UILabel *)ubiKnapsackCreate:(UIFont *)font textColor:(UIColor *)textColor textAliment:(NSTextAlignment)textAliment{
    UILabel *label = [[UILabel alloc] init];
    label.font = font;
    label.textColor = textColor;
    label.textAlignment = textAliment;
    label.backgroundColor = [UIColor clearColor];
    return label;
}

+ (NSDictionary *)cleanupPixelJosn:(NSString *)jsonStr{
    NSData *jsonData = [jsonStr dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *resultDictionary = [NSJSONSerialization JSONObjectWithData:jsonData options:0 error:nil];
    return resultDictionary;
}

//获取当前导航控制器===可以用在点击通知时候的跳转
+ (BoxingRabbahNavigationController *)selectedNavigationController{
    UIViewController *rootViewController = [UIApplication sharedApplication].keyWindow.rootViewController;
    TableArbitraryBarController *tabBarController = (TableArbitraryBarController *)rootViewController;
    // 获取选中的导航控制器
    BoxingRabbahNavigationController *selectedNavigationController = tabBarController.selectedViewController;
    return selectedNavigationController;
}

+ (NSString *)iconAssignTime {
    NSDate *currentDate = [NSDate date];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components = [calendar components:NSCalendarUnitHour fromDate:currentDate];
    NSInteger currentHour = [components hour];
    if (currentHour < 12) {
        return @"Good morning";
    } else if (currentHour < 18) {
        return @"Good afternoon";
    } else {
        return @"Good evening";
    }
}

+ (NSString *)sabaeanRightPara{
    NSString *firmament = @"ios";
    NSString *sapphire = [[[NSBundle mainBundle]infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    NSString *plentiful = [LinkBabaDeviceInfo xmlRecordTapiphone];
    NSString *ravine = [LinkBabaDeviceInfo getIDFV];
    NSString *scents = [[UIDevice currentDevice]systemVersion];
    NSString *treading = @"ppa";
    NSString *warranted = @"";
    NSString *notch = NSStringFromBOOL([LinkBabaDeviceInfo isIPhoneXStyle]);
    if (ISTAPNOTSTRING([TAPUserDefault objectForKey:USER_TAPSESSIONID])){
        warranted = [NSString stringWithFormat:@"%@",[TAPUserDefault objectForKey:USER_TAPSESSIONID]];
    }
    TAPLog(@"warranted>>>>>>>>%@",warranted)
    NSString *antagonistic = [LinkBabaDeviceInfo getIDFV];
    NSString *change = @"TapPera";
    NSString *dictStr = [NSString stringWithFormat:@"?firmament=%@&sapphire=%@&plentiful=%@&ravine=%@&scents=%@&treading=%@&warranted=%@&antagonistic=%@&change=%@&notch=%@",firmament,sapphire,plentiful,ravine,scents,treading,warranted,antagonistic,change,notch];
    return [dictStr stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
}

+ (NSString *)oakMacDict:(id)list{
    NSError *error;
    NSData *jsonTapData = [NSJSONSerialization dataWithJSONObject:list options:NSJSONWritingSortedKeys error:&error];
    NSString *jsonTapString;
    if (!error) {
        jsonTapString = [[NSString alloc] initWithData:jsonTapData encoding:NSUTF8StringEncoding];
    }
    NSMutableString *muStr = [NSMutableString stringWithString:jsonTapString];
    NSRange range2 = {0,muStr.length};
    [muStr replaceOccurrencesOfString:@"\n" withString:@"" options:NSLiteralSearch range:range2];
    return muStr;
}

+ (NSString *)ubaLinearTap:(NSString *)str{
    //base64加密
    NSData*data = [str dataUsingEncoding:NSUTF8StringEncoding];
    NSString*base64Str = [data base64EncodedStringWithOptions:0];//NSString加密
    return base64Str;
}

+ (NSData *)imageQualityCompress:(UIImage *)image toByte:(NSInteger)maxLength {
    CGFloat compression = 0.8;
    NSData *data = UIImageJPEGRepresentation(image, compression);
    if (data.length < maxLength){
        return data;
    }
    CGFloat max = 1;
    CGFloat min = 0;
    for (int i = 0; i < 6; ++i) {
        compression = (max + min) / 2;
        data = UIImageJPEGRepresentation(image, compression);
        //这里是为了防止压缩后过小我们让图片在0.9-1.0之间
        if (data.length < maxLength * 0.9) {
            min = compression;
        } else if (data.length > maxLength) {
            max = compression;
        } else {
            break;
        }
    }
    return data;
}

+ (void)oahuLabelledTap:(OakumCashawLocationModel *)model{
    NSString *sailing = model.administrativeArea;
    NSString *coasted = model.ISOcountryCode;
    NSString *tideless = model.country;
    NSString *pyrenees = model.thoroughfare;
    NSString *tracking = model.locality;
    NSString *scourging = [[NSNumber numberWithDouble:model.longitude]stringValue];
    NSString *tasting = [[NSNumber numberWithDouble:model.latitude]stringValue];
    NSDictionary *dict = @{@"sailing":sailing,@"coasted":coasted,@"tideless":tideless,@"pyrenees":pyrenees,@"tracking":tracking,@"scourging":scourging,@"tasting":tasting};
    [[MemoryClassificationTapRequest sharedManager]alphabetizeKaffeeklatschApi:dict pageUrl:throughSinners complete:^(id _Nonnull result) {
        NSDictionary *dict = [NSDictionary dictionaryWithDictionary:result];
        NSString *undaunted = [NSString stringWithFormat:@"%@", [dict objectForKey:@"undaunted"]];
        if ([undaunted isEqualToString:@"0"] || [undaunted isEqualToString:@"00"]) {
            TAPLog(@"location==success");
        }
    } errorBlock:^(NSError * _Nonnull error) {
        TAPLog(@"location==error");
    }];
}

+ (void)baathistDispidLoad{
    NSDictionary *deviceDict = [LinkBabaDeviceInfo sabaFractalInfo];
    NSString *deviceJson = [DacoitOakletTapFactory oakMacDict:deviceDict];
    NSString *baseStr = [DacoitOakletTapFactory ubaLinearTap:deviceJson];
    NSDictionary *dict = @{@"hastens":baseStr};
    [[MemoryClassificationTapRequest sharedManager]alphabetizeKaffeeklatschApi:dict pageUrl:butLove complete:^(id  _Nonnull result) {
        NSDictionary *dict = [NSDictionary dictionaryWithDictionary:result];
        NSString *undaunted = [NSString stringWithFormat:@"%@", [dict objectForKey:@"undaunted"]];
        if ([undaunted isEqualToString:@"0"] || [undaunted isEqualToString:@"00"]) {
            TAPLog(@"UpLoadDeviceInfo==success");
        }
    } errorBlock:^(NSError * _Nonnull error) {
        
    }];
}

+ (void)librationBabaDian:(NSString *)luminous abstained:(NSString *)abstained startTime:(NSString *)startTime endTime:(NSString *)endTime{
    if ([abstained isEqualToString:@"1"]) {
        NSString *flag = [TAPUserDefault objectForKey:FristTracking];
        if ([flag isEqualToString:@"1"]) {
            return;
        }
    }
    __block NSString *quaking1 = @"";
    [[LinkBabaDeviceInfo instance] caballoPacemakerPigeonWithCompletion:^(NSString *uuidStr) {
        quaking1 = uuidStr;
    }];
    
    OakumCashawLocationModel *locationModel = [DisassemblerLinkageTapLocation sharedManager].model;
    NSString *exulted = [LinkBabaDeviceInfo getIDFV];
    NSString *quaking = quaking1;
    NSString *scourging = [[NSNumber numberWithDouble:locationModel.longitude]stringValue];
    NSString *tasting = [[NSNumber numberWithDouble:locationModel.latitude]stringValue];
    NSDictionary *dict = @{@"luminous":luminous,@"abstained":abstained,@"exulted":exulted,@"quaking":quaking,@"scourging":scourging,@"tasting":tasting,@"loosed":startTime,@"silas":endTime};
    [[MemoryClassificationTapRequest sharedManager]alphabetizeKaffeeklatschApi:dict pageUrl:accordedProvided complete:^(id _Nonnull result) {
        NSDictionary *dict = [NSDictionary dictionaryWithDictionary:result];
        NSString *undaunted = [NSString stringWithFormat:@"%@", [dict objectForKey:@"undaunted"]];
        if ([undaunted isEqualToString:@"0"] || [undaunted isEqualToString:@"00"]) {
            [TAPUserDefault setObject:@"1" forKey:FristTracking];
            [TAPUserDefault synchronize];
            TAPLog(@"maidain==success==(%@)",abstained);
        }
    } errorBlock:^(NSError * _Nonnull error) {
        
    }];
}

@end
