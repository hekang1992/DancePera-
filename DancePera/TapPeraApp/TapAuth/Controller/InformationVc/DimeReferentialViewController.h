//
//  DimeReferentialViewController.h
//  TapPera
//
//  Created by apple on 2024/1/19.
//

#import "TabaretClauseViewController.h"
#import "MacOptimizerInfoView.h"

NS_ASSUME_NONNULL_BEGIN

@interface DimeReferentialViewController : TabaretClauseViewController
@property (nonatomic,copy) NSString *beats;
@property (nonatomic,strong) MacOptimizerInfoView *infoView;
@property (nonatomic,strong) NSArray *modelArray;
@end

NS_ASSUME_NONNULL_END
