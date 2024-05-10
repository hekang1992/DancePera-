//
//  InlineTypeLoginView.h
//  TapPera
//
//  Created by apple on 2024/1/17.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^LoginBackBlock)(void);
@interface InlineTypeLoginView : UIView<UITextFieldDelegate>
@property (nonatomic,strong) UIButton *backBtn;
@property (nonatomic,strong) UIImageView *iconImageView1;
@property (nonatomic,strong) UIImageView *iconImageView2;
@property (nonatomic,strong) UIImageView *iconImageView3;
@property (nonatomic,strong) UIImageView *iconImageView4;
@property (nonatomic,strong) UITextField *phoneField;
@property (nonatomic,strong) UITextField *codeField;
@property (nonatomic,strong) UIButton *cancelBtn;
@property (nonatomic,strong) UIButton *sendBtn;
@property (nonatomic,strong) UIButton *agreeBtn;
@property (nonatomic,strong) UIButton *loginBtn;
@property (nonatomic,strong) UIButton *iconBtn;
@property (nonatomic,strong) LoginBackBlock block;
@property (nonatomic,strong) LoginBackBlock block1;
@property (nonatomic,strong) LoginBackBlock block2;
@property (nonatomic,strong) LoginBackBlock block3;
@property (nonatomic,strong) LoginBackBlock block4;
@property (nonatomic,strong) UILabel *lable1;
@end

NS_ASSUME_NONNULL_END
