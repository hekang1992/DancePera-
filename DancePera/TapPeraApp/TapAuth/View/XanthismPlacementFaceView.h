//
//  XanthismPlacementFaceView.h
//  TapPera
//
//  Created by apple on 2024/1/19.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^FaceClickBlock)(void);
@interface XanthismPlacementFaceView : UIView
@property (nonatomic,strong) UIButton *faceBtn;
@property (nonatomic,strong) UIImageView *faceImageView1;
@property (nonatomic,strong) UIImageView *faceImageView2;
@property (nonatomic,strong) UILabel *descLabel;
@property (nonatomic,strong) FaceClickBlock block;
@end

NS_ASSUME_NONNULL_END
