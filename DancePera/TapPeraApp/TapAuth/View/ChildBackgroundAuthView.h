//
//  ChildBackgroundAuthView.h
//  TapPera
//
//  Created by apple on 2024/1/24.
//

#import <UIKit/UIKit.h>
#import "HyperlinkItemEyelidsModel.h"

NS_ASSUME_NONNULL_BEGIN
typedef void(^TapPopAuthViewDisBlock)(void);
typedef void(^TapPopAuthSelectBlock)(HyperlinkItemEyelidsModel *model);
@interface ChildBackgroundAuthView : UIView<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) NSArray *array;
@property (nonatomic,strong) UIButton *canBtn;
@property (nonatomic,strong) UIImageView *iconImageView1;
@property (nonatomic,strong) UIImageView *iconImageView2;
@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) UILabel *nameLabel;
@property (nonatomic,strong) TapPopAuthViewDisBlock block;
@property (nonatomic,strong) TapPopAuthSelectBlock block1;
@end

NS_ASSUME_NONNULL_END
