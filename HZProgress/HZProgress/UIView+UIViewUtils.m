//
//  UIView+UIViewUtils.m
//  HZProgress
//
//  Created by 王会洲 on 16/4/8.
//  Copyright © 2016年 王会洲. All rights reserved.
//

#import "UIView+UIViewUtils.h"

@implementation UIView (UIViewUtils)


#pragma mark -
#pragma mark hud

- (void)showHUDIndicatorViewAtCenter:(NSString *)indiTitle
{
    MBProgressHUD *hud = [self getHUDIndicatorViewAtCenter];
    if (hud == nil){
        hud = [self createHUDIndicatorViewAtCenter:indiTitle yOffset:0];
        [hud show:YES];
    }else{
        hud.labelText = indiTitle;
    }
    
    
}

- (void)showHUDIndicatorViewAtCenter:(NSString *)indiTitle yOffset:(CGFloat)y
{
    MBProgressHUD *hud = [self getHUDIndicatorViewAtCenter];
    
    if (hud == nil){
        
        hud = [self createHUDIndicatorViewAtCenter:indiTitle yOffset:y];
        [hud show:YES];
    }else{
        hud.labelText = indiTitle;
    }
}

- (void)hideHUDIndicatorViewAtCenter
{
    MBProgressHUD *hud = [self getHUDIndicatorViewAtCenter];
    
    [hud hide:YES];
}

- (MBProgressHUD *)createHUDIndicatorViewAtCenter:(NSString *)indiTitle yOffset:(CGFloat)y
{
    MBProgressHUD *hud = [[MBProgressHUD alloc] initWithView:self];
    hud.layer.zPosition = 10;
    hud.yOffset = y;
    hud.removeFromSuperViewOnHide = YES;
    hud.labelText = indiTitle;
    hud.mode = MBProgressHUDModeIndeterminate;
    [self addSubview:hud];
    hud.tag = hudViewTag;
    return hud;
}

- (MBProgressHUD *)getHUDIndicatorViewAtCenter
{
    UIView *view = [self viewWithTagNotDeepCounting:hudViewTag];
    if (view != nil && [view isKindOfClass:[MBProgressHUD class]]){
        return (MBProgressHUD *)view;
    }
    else
    {
        return nil;
    }
}

- (UIView *)viewWithTagNotDeepCounting:(NSInteger)tag
{
    for (UIView *view in self.subviews)
    {
        if (view.tag == tag) {
            return view;
            break;
        }
    }
    return nil;
}
@end
