//
//  RegisterViewController.h
//  登录注册练习
//
//  Created by 张立远 on 2020/9/5.
//  Copyright © 2020 张立远. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol RegisterViewControllerDelegate <NSObject>
//参数回调函数
-(void) passAccount:(NSString *)accountString passPassword:(NSString *)passwordString;

@end

@interface RegisterViewController : UIViewController

@property(nonatomic, strong) UITextField *accountTextField;

@property(nonatomic, strong) UITextField *passwordTextField;

@property (nonatomic, strong) NSMutableArray *accountandpassCombination;


@property (nonatomic, weak) id<RegisterViewControllerDelegate>registerDelegate;


@end

NS_ASSUME_NONNULL_END
