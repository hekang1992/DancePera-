//
//  MemoryClassificationTapRequest.m
//  TapPera
//
//  Created by apple on 2024/1/15.
//

#import "MemoryClassificationTapRequest.h"

@implementation MemoryClassificationTapRequest

+ (instancetype)sharedManager{
    static MemoryClassificationTapRequest *sharedManager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedManager = [[self alloc] init];
    });
    return sharedManager;
}

+ (AFHTTPSessionManager *)shareAFNManager{
    static AFHTTPSessionManager *afnManager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        afnManager = [AFHTTPSessionManager manager];
        afnManager.requestSerializer.timeoutInterval = 30;
        afnManager.responseSerializer = [AFHTTPResponseSerializer serializer];
        afnManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/x-www-form-urlencoded",@"image/png",@"text/plain",@"text/javascript",@"application/json",@"text/html",@"text/json",@"charset=UTF-8",@"multipart/form-data",nil];
    });
    return afnManager;
}

- (void)alphabetizeKaffeeklatschApi:(NSDictionary *)params
        pageUrl:(NSString *)pageUrl
       complete:(TapCompleteBlock)complete
     errorBlock:(TapNSErrorBlock)nserrorBlock{
    NSString *sabaeanRightPara = [DacoitOakletTapFactory sabaeanRightPara];
    NSString *apiStr = [[NSUserDefaults standardUserDefaults]objectForKey:APIBAERGITURL];
    NSString *baseUrl = [NSString stringWithFormat:@"%@",apiStr];
    if (ISTAPNOTSTRING(baseUrl)) {
        [[NSUserDefaults standardUserDefaults]setObject:baseUrl forKey:APIBAERGITURL];
        [[NSUserDefaults standardUserDefaults]synchronize];
    }else {
        baseUrl = Base_url;
    }
    NSString *url = [NSString stringWithFormat:@"%@%@%@",baseUrl,pageUrl,sabaeanRightPara];
    NSString *requestStr = [url stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    AFHTTPSessionManager *manager = [MemoryClassificationTapRequest shareAFNManager];
    [manager POST:requestStr parameters:params headers:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSDictionary *dictData = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableLeaves error:nil];
        NSString *undaunted = [NSString stringWithFormat:@"%@", [dictData objectForKey:@"undaunted"]];
        if ([undaunted isEqualToString:@"-2"]) {
            [self delabc];
            complete(dictData);
        }else {
            complete(dictData);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        TAPLog(@"error----%@",error);
        nserrorBlock(error);
    }];
}

- (void)getApi:(NSDictionary *)params
           pageUrl:(NSString *)pageUrl
          complete:(TapCompleteBlock)complete
    errorBlock:(TapNSErrorBlock)nserrorBlock{
    NSString *sabaeanRightPara = [DacoitOakletTapFactory sabaeanRightPara];
    NSString * apiStr = [[NSUserDefaults standardUserDefaults]objectForKey:APIBAERGITURL];
    NSString *baseUrl = [NSString stringWithFormat:@"%@",apiStr];
    if (ISTAPNOTSTRING(baseUrl)) {
        [[NSUserDefaults standardUserDefaults]setObject:baseUrl forKey:APIBAERGITURL];
        [[NSUserDefaults standardUserDefaults]synchronize];
    }else {
        baseUrl = Base_url;
    }
    NSString *url = [NSString stringWithFormat:@"%@%@%@",baseUrl,pageUrl,sabaeanRightPara];
    NSString *requestStr = [url stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    AFHTTPSessionManager *manager = [MemoryClassificationTapRequest shareAFNManager];
    [manager GET:requestStr parameters:params headers:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSDictionary *dictData = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableLeaves error:nil];
        complete(dictData);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        TAPLog(@"error----%@",error);
        nserrorBlock(error);
    }];
}

- (void)sendApiFile:(NSDictionary *)params
         pageUrl:(NSString *)pageUrl
            data:(NSData *)data
        complete:(TapCompleteBlock)complete
         errorBlock:(TapNSErrorBlock)nserrorBlock{
    AFHTTPSessionManager *manager = [MemoryClassificationTapRequest shareAFNManager];
    NSString *sabaeanRightPara = [DacoitOakletTapFactory sabaeanRightPara];
    NSString * apiStr = [[NSUserDefaults standardUserDefaults]objectForKey:APIBAERGITURL];
    NSString *baseUrl = [NSString stringWithFormat:@"%@",apiStr];
    if (ISTAPNOTSTRING(baseUrl)) {
        [[NSUserDefaults standardUserDefaults]setObject:baseUrl forKey:APIBAERGITURL];
        [[NSUserDefaults standardUserDefaults]synchronize];
    }else {
        baseUrl = Base_url;
    }
    NSString *url = [NSString stringWithFormat:@"%@%@%@",baseUrl,pageUrl,sabaeanRightPara];
    NSString *requestStr = [url stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    TAPLog(@"url===%@",url);
    [manager POST:requestStr parameters:nil headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
        [formData appendPartWithFileData:data name:@"escaping" fileName:@"escaping.png" mimeType:@"image/png"];
        for (NSString *key in params.allKeys) {
            [formData appendPartWithFormData:[params[key] dataUsingEncoding:NSUTF8StringEncoding] name:key];
        }
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        // 进度
        CGFloat progress = 100.0 * uploadProgress.completedUnitCount / uploadProgress.totalUnitCount;
        TAPLog(@"progress======%.2lf%%", progress);
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSError *error;
        NSData *plistData = responseObject;
        NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:plistData options:NSJSONReadingMutableContainers error:&error];
        if (jsonDict == nil) {
            TAPLog(@"Error parsing JSON data: %@", error.localizedDescription);
        } else {
            // 成功转换为NSDictionary，使用jsonDict进行操作
            complete(jsonDict);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        TAPLog(@"error--%@",error);
        nserrorBlock(error);
    }];
}

- (void)keyQandaharApi:(NSDictionary *)params
         pageUrl:(NSString *)pageUrl
        complete:(TapCompleteBlock)complete
         errorBlock:(TapNSErrorBlock)nserrorBlock{
    AFHTTPSessionManager *manager = [MemoryClassificationTapRequest shareAFNManager];
    NSString *sabaeanRightPara = [DacoitOakletTapFactory sabaeanRightPara];
    NSString * apiStr = [[NSUserDefaults standardUserDefaults]objectForKey:APIBAERGITURL];
    NSString *baseUrl = [NSString stringWithFormat:@"%@",apiStr];
    if (!ISTAPNOTSTRING(baseUrl)) {
        baseUrl = Base_url;
        [[NSUserDefaults standardUserDefaults]setObject:Base_url forKey:APIBAERGITURL];
        [[NSUserDefaults standardUserDefaults]synchronize];
    }
    NSString *url = [NSString stringWithFormat:@"%@%@%@",baseUrl,pageUrl,sabaeanRightPara];
    NSString *requestStr = [url stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    [manager POST:requestStr parameters:nil headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
        for (NSString *key in params.allKeys) {
            [formData appendPartWithFormData:[params[key] dataUsingEncoding:NSUTF8StringEncoding] name:key];
        }
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        // 进度
        CGFloat progress = 100.0 * uploadProgress.completedUnitCount / uploadProgress.totalUnitCount;
        TAPLog(@"progress======%.2lf%%", progress);
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSError *error;
        NSData *plistData = responseObject;
        NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:plistData options:NSJSONReadingMutableContainers error:&error];
        if (jsonDict == nil) {
            TAPLog(@"Error parsing JSON data: %@", error.localizedDescription);
        } else {
            // 成功转换为NSDictionary，使用jsonDict进行操作
            complete(jsonDict);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        TAPLog(@"error--%@",error);
        nserrorBlock(error);
    }];
}

- (void)delabc{
    [[WizardAapamoorLoginFactory instance]removeLoginMessage];
    [OTNotificationDefaultCenter postNotificationName:PeraSetUpLoginVc object:nil];
}

@end
