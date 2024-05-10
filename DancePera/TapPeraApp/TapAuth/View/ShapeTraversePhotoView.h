//
//  ShapeTraversePhotoView.h
//  TapPera
//
//  Created by apple on 2024/1/18.
//

#import <UIKit/UIKit.h>
#import "MessageAaronPhotoView.h"

NS_ASSUME_NONNULL_BEGIN
typedef void(^TypeAuthBlock)(void);
typedef void(^TypeAuthBtnBlock)(UIButton *btn);
@interface ShapeTraversePhotoView : UIView
@property (nonatomic,strong) UILabel *descLable1;
@property (nonatomic,strong) UIImageView *iconImageView;
@property (nonatomic,strong) NSString *fullText;
@property (nonatomic,assign) NSInteger characterIndex;
@property (nonatomic,strong) UIImageView *iconImageView1;
@property (nonatomic,strong) UIImageView *iconImageView2;
@property (nonatomic,strong) UIImageView *iconImageView3;
@property (nonatomic,strong) UILabel *mainLabel;
@property (nonatomic,strong) UIButton *changeBtn;
@property (nonatomic,strong) UIButton *startBtn;
@property (nonatomic,strong) UIButton *changeBtn1;
@property (nonatomic,strong) MessageAaronPhotoView *selectView;
@property (nonatomic,strong) TypeAuthBlock block1;
@property (nonatomic,strong) TypeAuthBlock block2;
@property (nonatomic,strong) TypeAuthBtnBlock block3;
- (void)startClick:(UIButton *)btn;
@end

NS_ASSUME_NONNULL_END
