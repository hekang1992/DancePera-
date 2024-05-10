//
//  FabricIntrospectionInfoView.h
//  TapPera
//
//  Created by apple on 2024/1/25.
//

#import <UIKit/UIKit.h>
#import "FableJaboticabaContractCell.h"

NS_ASSUME_NONNULL_BEGIN
typedef void(^CellPhoneBlock)(FableJaboticabaContractCell *cell,NSInteger index);
typedef void(^CellPBlock)(void);
@interface FabricIntrospectionInfoView : UIView<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) NSArray *array;
@property (nonatomic,strong) CellPhoneBlock block;
@property (nonatomic,strong) CellPBlock block1;
@end

NS_ASSUME_NONNULL_END
