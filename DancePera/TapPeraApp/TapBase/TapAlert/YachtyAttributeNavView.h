//
//  YachtyAttributeNavView.h
//  TapPera
//
//  Created by apple on 2024/1/18.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^BackBtnBlock)(void);
@interface YachtyAttributeNavView : UIView
@property (nonatomic,strong) UIButton *backBtn;
@property (nonatomic,strong) UIButton *rightBtn;
@property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) BackBtnBlock block;
@property (nonatomic,strong) BackBtnBlock block1;
@end

NS_ASSUME_NONNULL_END
