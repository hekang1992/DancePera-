//
//  KabobMangledUserView.h
//  TapPera
//
//  Created by apple on 2024/1/30.
//

#import <UIKit/UIKit.h>
#import "KafLooseClickView.h"
#import "DiscreteOrdinaryListView.h"

NS_ASSUME_NONNULL_BEGIN
typedef void(^TapUserViewBlock)(void);
typedef void(^TapUserViewBlock1)(AachenXanthippeOredrModel *model);
@interface KabobMangledUserView : UIView
@property (nonatomic,strong) NSArray *modelArray;
@property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIView *bgView;
@property (nonatomic,strong) UIImageView *bgImageView;
@property (nonatomic,strong) UILabel *phoneLabel;
@property (nonatomic,strong) UIButton *iconBtn;
@property (nonatomic,strong) UIImageView *iconImageView1;
@property (nonatomic,strong) UIImageView *iconImageView2;
@property (nonatomic,strong) UIImageView *iconImageView3;
@property (nonatomic,strong) DiscreteOrdinaryListView *listView;
@property (nonatomic,strong) KafLooseClickView *click1;
@property (nonatomic,strong) KafLooseClickView *click2;
@property (nonatomic,strong) KafLooseClickView *click3;
@property (nonatomic,strong) KafLooseClickView *click4;
@property (nonatomic,strong) KafLooseClickView *click5;
@property (nonatomic,strong) KafLooseClickView *click6;
@property (nonatomic,strong) KafLooseClickView *click7;
@property (nonatomic,strong) UILabel *numLabel1;
@property (nonatomic,strong) UILabel *numLabel2;
@property (nonatomic,strong) UILabel *numLabel3;
@property (nonatomic,strong) TapUserViewBlock block1;
@property (nonatomic,strong) TapUserViewBlock block2;
@property (nonatomic,strong) TapUserViewBlock block3;
@property (nonatomic,strong) TapUserViewBlock block4;
@property (nonatomic,strong) TapUserViewBlock block5;
@property (nonatomic,strong) TapUserViewBlock block8;
@property (nonatomic,strong) TapUserViewBlock block9;
@property (nonatomic,strong) TapUserViewBlock block6;
@property (nonatomic,strong) TapUserViewBlock1 block7;
@property (nonatomic,strong) NSString *fullText;
@property (nonatomic,assign) NSInteger characterIndex;
@end

NS_ASSUME_NONNULL_END
