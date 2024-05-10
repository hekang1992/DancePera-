//
//  ActivateMabeViewController.h
//  TapPera
//
//  Created by apple on 2024/1/18.
//

#import "TabaretClauseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface ActivateMabeViewController : TabaretClauseViewController
@property (nonatomic,copy) NSString *authType;
@property (nonatomic,copy) NSString *beats;
@property (nonatomic,strong) UILabel *descLable1;
@property (nonatomic,strong) UIImageView *iconImageView;
@property (nonatomic,strong) NSString *fullText;
@property (nonatomic,assign) NSInteger characterIndex;
@end

NS_ASSUME_NONNULL_END
