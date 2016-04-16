//
//  ConfigManager.m
//  archiveUIImage
//
//  Created by 王会洲 on 16/1/28.
//  Copyright © 2016年 hzbj. All rights reserved.
//

#import "ConfigManager.h"

@implementation ConfigManager


+(NSDictionary *)requestDicWithString:(NSString *)string{
    NSString *url = @"http://open.qyer.com/qyer/bbs/forum_thread_list?client_id=qyer_android&client_secret=9fcaae8aefc4f9ac4915&forum_id=1&type=1&count=10&page=1&delcache=0";
    
    NSDictionary *dic =[[NSDictionary alloc]init];
    /**
     *  accounts
     */
    if ([string isEqualToString:@"login"]) {
      
        NSString *method =@"POST";
        NSArray *params =[NSArray arrayWithObjects:@"username",@"password", nil];
        NSMutableDictionary *tem =[[NSMutableDictionary alloc]initWithObjects:@[url,method,params] forKeys:@[@"url",@"method",@"params"]];
        dic =tem;
    }
    
    return dic ;
}


@end
