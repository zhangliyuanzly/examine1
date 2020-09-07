//
//  FirstViewController.m
//  UINavigationController和UITabBarController
//
//  Created by 张立远 on 2020/9/5.
//  Copyright © 2020 张立远. All rights reserved.
//

#import "FirstViewController.h"
#import "FirstSonViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //导航栏右侧按钮
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"push" style:UIButtonTypeRoundedRect target:self action:@selector(pushPush)];
    //[rightButton setTitle:@"push"];
    self.navigationItem.rightBarButtonItem = rightButton;
    
}

-(void) pushPush{
    FirstSonViewController *nextViewController = [[FirstSonViewController alloc] init];
    [self.navigationController pushViewController:nextViewController animated:NO];
    
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
