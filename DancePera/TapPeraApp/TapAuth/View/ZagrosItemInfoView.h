//
//  ZagrosItemInfoView.h
//  TapPera
//
//  Created by apple on 2024/1/23.
//

#import <UIKit/UIKit.h>
#import "XanthininVolatileAuthView.h"
#import "PolygonXmlInfoModel.h"

NS_ASSUME_NONNULL_BEGIN
typedef void(^TapAlertAuthBlock)(void);
typedef void(^TapAlertAuthBlock1)(NSString *name,NSString *num,NSString *date);
@interface ZagrosItemInfoView : UIView<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) PolygonXmlInfoModel *model;
@property (nonatomic,strong) UIImageView *iconImageView1;
@property (nonatomic,strong) UIImageView *iconImageView2;
@property (nonatomic,strong) UIButton *canBtn;
@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) TapAlertAuthBlock block;
@property (nonatomic,strong) TapAlertAuthBlock1 block1;
@property (nonatomic,strong) NSArray *nameArray;
@property (nonatomic,strong) NSArray *placeArray;
@property (nonatomic,strong) NSArray *imageArray;
@property (nonatomic,copy) NSString *year;
@property (nonatomic,copy) NSString *yue;
@property (nonatomic,copy) NSString *ri;
@end

NS_ASSUME_NONNULL_END
