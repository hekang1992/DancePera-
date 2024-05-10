//
//  MessageAaronPhotoView.h
//  TapPera
//
//  Created by apple on 2024/1/18.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^SelectPhotoBlock)(void);
@interface MessageAaronPhotoView : UIView
@property (nonatomic,strong) UIImageView *bgImageView;
@property (nonatomic,strong) UIButton *albumBtn;
@property (nonatomic,strong) UIButton *cameraBtn;
@property (nonatomic,strong) SelectPhotoBlock block1;
@property (nonatomic,strong) SelectPhotoBlock block2;
@end

NS_ASSUME_NONNULL_END
