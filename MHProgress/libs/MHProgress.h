//
//  MHProgress.h
//  MHProgress
//
//  Created by Macro on 10/12/15.
//  Copyright © 2015 Macro. All rights reserved.
//

#import <UIKit/UIKit.h>


// 黑框边长
#define kSideWidth 80
#define kSideHeight 80
// 圆角半径
#define kCornerRadius 5
// 加载等待的最长时长
#define kLoadingTime 5
// 加载提示语
#define kTips "数据努力加载中"
// 提示语更变提示的时间间隔
#define kTipsTimeInterval 0.5

typedef void (^failedBlock)(void);



// 加载等待视图类型
typedef NS_ENUM(NSInteger, MHPopViewType) {
    /*!
     *  @author Macro QQ:778165728, 15-11-17
     *
     *  @brief  全屏只有转圈
     */
    MHPopViewTypeFullScreen,
    /*!
     *  @author Macro QQ:778165728, 15-11-17
     *
     *  @brief  包裹控件无提示语
     */
    MHPopViewTypeWrapContent,
    /*!
     *  @author Macro QQ:778165728, 15-11-17
     *
     *  @brief  全屏有提示语
     */
    MHPopViewTypeFullScreenWithTips,
    /*!
     *  @author Macro QQ:778165728, 15-11-17
     *
     *  @brief  包裹控件有提示语
     */
    MHPopViewTypeWrapContentWithTips,
    /*!
     *  @author Macro QQ:778165728, 15-11-17
     *
     *  @brief  仅提示语
     */
    MHPopViewTypeTips,
};





@interface MHProgress : UIView

/*!
 *  @author Macro QQ:778165728, 15-10-12
 *
 *  @brief  初始化加载等待视图
 *
 *  @param type 类型
 *
 *  @return 等待视图
 */
- (instancetype)initWithType:(MHPopViewType)type;

- (instancetype)initWithType:(MHPopViewType)type failedBlock:failedBlock;

/*!
 *  @author Macro QQ:778165728, 15-10-12
 *
 *  @brief  显示加载等待视图
 */
- (void)showLoadingView;

/*!
 *  @author Macro QQ:778165728, 15-10-12
 *
 *  @brief  关闭加载等待视图
 */
- (void)closeLoadingView;

/*!
 *  @author Macro QQ:778165728, 15-10-12
 *
 *  @brief  显示提示语
 *
 *  @param tips         提示文本
 *  @param timeInterval 显示时间
 */
- (void)showTips:(NSString *)tips intInterval:(CGFloat)timeInterval;

@end
