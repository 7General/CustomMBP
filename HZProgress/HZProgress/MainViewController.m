//
//  MainViewController.m
//  HZProgress
//
//  Created by 王会洲 on 16/4/8.
//  Copyright © 2016年 王会洲. All rights reserved.
//

#import "MainViewController.h"
#import "UIView+UIViewUtils.h"

@interface MainViewController ()
@property (nonatomic, strong) UIButton * plusButton;

@property (nonatomic, assign) BOOL  startLog;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.startLog = YES;
    self.plusButton  = [UIButton buttonWithType:UIButtonTypeCustom];
    self.plusButton.frame = CGRectMake(100, 100, 110, 110);
    self.plusButton.backgroundColor = [UIColor redColor];
    [self.plusButton addTarget:self action:@selector(showClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.plusButton];
}


-(void)showClick {
    [self.view showHUDIndicatorViewAtCenter:(@"Loading...")];
    [self.view hideHUDIndicatorViewAtCenter];
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
