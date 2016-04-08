//
//  UIView+UIViewUtils.h
//  HZProgress
//
//  Created by 王会洲 on 16/4/8.
//  Copyright © 2016年 王会洲. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBProgressHUD.h"
#import "Config.h"




@interface UIView (UIViewUtils)
//- (void)showActivityViewAtCenter;
//
//- (void)showActivityViewAtCenter:(NSString*)indiTitle;
//
//- (void)hideActivityViewAtCenter;
//
//- (LoadingHUDView *)createActivityViewAtCenter:(UIActivityIndicatorViewStyle)style;
//
//- (LoadingHUDView *)createActivityViewAtCenter:(UIActivityIndicatorViewStyle)style title:(NSString*)indiTitle;
//
//- (LoadingHUDView *)getActivityViewAtCenter;
//
//
//
//- (void)showTipViewAtCenter:(NSString*)indiTitle posY:(CGFloat)y;
//
//- (void)showTipViewAtCenter:(NSString*)indiTitle;
//- (void)showTipViewAtCenter:(NSString*)indiTitle timer:(int)aTimer;
//- (void)showTipViewAtCenter:(NSString *)indiTitle message:(NSString *)message posY:(CGFloat)y;
//- (void)showTipViewAtCenter:(NSString *)indiTitle message:(NSString *)message;
//
//- (void)hideTipView;
//
//- (BBTipView *)getTipView;



- (void)showHUDIndicatorViewAtCenter:(NSString *)indiTitle;
- (void)hideHUDIndicatorViewAtCenter;
- (void)showHUDIndicatorViewAtCenter:(NSString *)indiTitle yOffset:(CGFloat)y;
- (MBProgressHUD *)createHUDIndicatorViewAtCenter:(NSString *)indiTitle yOffset:(CGFloat)y;
- (MBProgressHUD *)getHUDIndicatorViewAtCenter;


- (UIView *)viewWithTagNotDeepCounting:(NSInteger)tag;
@end
