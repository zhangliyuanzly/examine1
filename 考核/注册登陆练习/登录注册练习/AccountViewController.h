//
//  AccountViewController.h
//  登录注册练习
//
//  Created by 张立远 on 2020/9/5.
//  Copyright © 2020 张立远. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RegisterViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface AccountViewController : UIViewController
<
UITextFieldDelegate,
RegisterViewControllerDelegate
>

@property(nonatomic, strong) UITextField *accountTextField;

@property(nonatomic, strong) UITextField *passwordTextField;

@property(nonatomic, strong) NSMutableArray *accountandpassCombination;

@end

NS_ASSUME_NONNULL_END
