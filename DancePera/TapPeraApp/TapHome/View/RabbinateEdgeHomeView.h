//
//  RabbinateEdgeHomeView.h
//  TapPera
//
//  Created by apple on 2024/1/16.
//

#import <UIKit/UIKit.h>
#import "OpenActivateHomeCell.h"
#import "NablusAssociativeAuthCell.h"
#import "DefinitionMabHomeModel.h"

NS_ASSUME_NONNULL_BEGIN
typedef void(^LoanOneHomeBlock)(void);
typedef void(^LoanOneHomeAtuhBlock)(NSString *authStr);
@interface RabbinateEdgeHomeView : UIView<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) DefinitionMabHomeModel *model;
@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) LoanOneHomeBlock block;
@property (nonatomic,strong) LoanOneHomeAtuhBlock block1;
@property (nonatomic,copy) NSString *kind;
@end

NS_ASSUME_NONNULL_END
