//
//  PoolingActiveHelpModel.h
//  TapPera
//
//  Created by apple on 2024/2/1.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PoolingActiveHelpModel : NSObject
@property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSString *content;
@property (nonatomic,copy) NSString *imageUrl;
@property (nonatomic,assign) BOOL isExpanded;
@end

NS_ASSUME_NONNULL_END
