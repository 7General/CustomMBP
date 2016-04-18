//
//  MainViewController.m
//  HZProgress
//
//  Created by 王会洲 on 16/4/8.
//  Copyright © 2016年 王会洲. All rights reserved.
//

#import "MainViewController.h"
#import "UIView+UIViewUtils.h"
#import "HZHttpHelper.h"


@interface MainViewController ()
@property (nonatomic, strong) UIButton * plusButton;

@property (nonatomic, assign) BOOL  startLog;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.startLog = YES;
    self.plusButton  = [UIButton buttonWithType:UIButtonTypeCustom];
    self.plusButton.frame = CGRectMake(100, 100, 100, 80);
    [self.plusButton setTitle:@"网络请求" forState:UIControlStateNormal];
    self.plusButton.backgroundColor = [UIColor redColor];
    [self.plusButton addTarget:self action:@selector(showClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.plusButton];

    UIButton * surebtn  = [UIButton buttonWithType:UIButtonTypeCustom];
    surebtn.frame = CGRectMake(100, 220, 100, 80);
    [surebtn setTitle:@"正确提示" forState:UIControlStateNormal];
    surebtn.backgroundColor = [UIColor redColor];
    [surebtn addTarget:self action:@selector(showSuccessClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:surebtn];
    
    
    UIButton * errorbtn  = [UIButton buttonWithType:UIButtonTypeCustom];
    errorbtn.frame = CGRectMake(100, 340, 100, 80);
    [errorbtn setTitle:@"错误提示" forState:UIControlStateNormal];
    errorbtn.backgroundColor = [UIColor redColor];
    [errorbtn addTarget:self action:@selector(showErrorClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:errorbtn];
}


-(void)showSuccessClick {
    [self.view showHUDIndicatorViewSuccessAtCenter:@"正确提示"];
}

-(void)showErrorClick {
    [self.view showHUDIndicatorViewErrorAtCenter:@"错误提示"];
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [HZHttpHelper defaultManager];
}

-(void)showClick {


    [self.view showHUDIndicatorViewAtCenter:(@"Loading...")];
    NSDictionary *parameters = @{@"username": @"123", @"password": @"456"};
    [[HZHttpHelper defaultManager] autoRequestHttpWithNetStateWithString:@"login" parameters:parameters success:^(id responseObject) {
        
        NSLog(@"yes==%@",responseObject);
        [self.view hideHUDIndicatorViewAtCenter];
        
    } failure:^(NSError *error) {

    } NetWorkState:^(NetWorkState typesState) {
        
    }];
    
    
    
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
