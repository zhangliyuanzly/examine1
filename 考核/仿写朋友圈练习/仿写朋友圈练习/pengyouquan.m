//
//  pengyouquan.m
//  仿写朋友圈练习
//
//  Created by 张立远 on 2020/9/5.
//  Copyright © 2020 张立远. All rights reserved.
//

#import "pengyouquan.h"

@interface pengyouquan ()

@end

@implementation pengyouquan

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UINavigationController *FirstNavigationController = [[UINavigationController alloc] init];
    FirstNavigationController.title = @"朋友圈";
    
    
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"1.png"] landscapeImagePhone:nil style:nil target:self action:nil];
    
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"2.png"] landscapeImagePhone:nil style:nil target:nil action:nil];
    
    
    
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
