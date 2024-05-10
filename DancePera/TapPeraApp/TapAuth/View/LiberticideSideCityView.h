//
//  LiberticideSideCityView.h
//  TapPera
//
//  Created by add on 2023/11/15.
//

#import <UIKit/UIKit.h>
#import "PrimaryQbeTwistModel.h"

NS_ASSUME_NONNULL_BEGIN
typedef void(^DissBlock)(NSString *addressStr);
typedef void(^DissPayBlock)(NSString *addressStr,NSString *dictValue);
@interface LiberticideSideCityView : UIView<UIPickerViewDelegate,UIPickerViewDataSource>
@property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UILabel *mainLabel;
@property (nonatomic,strong) UIButton *cancelBtn;
@property (nonatomic,strong) UIPickerView* pickerView;
@property (nonatomic,strong) NSArray *array;
@property (nonatomic,strong) UIImageView *iconImageView1;
@property (nonatomic,strong) UIImageView *iconImageView2;
@property (nonatomic,strong) DissBlock block;
@property (nonatomic,strong) DissPayBlock block1;

@property (nonatomic,assign) NSInteger provicerow;
@property (nonatomic,assign) NSInteger cityrow;
@property (nonatomic,assign) NSInteger qurow;
@property (nonatomic,copy) NSString *addressStr;
@property (nonatomic,copy) NSString *dictValue;
@end

NS_ASSUME_NONNULL_END
