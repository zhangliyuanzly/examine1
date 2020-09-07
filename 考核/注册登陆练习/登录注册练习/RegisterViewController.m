//
//  RegisterViewController.m
//  登录注册练习
//
//  Created by 张立远 on 2020/9/5.
//  Copyright © 2020 张立远. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()<UITextFieldDelegate>

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _accountandpassCombination = [[NSMutableArray alloc] init];
    
    UIImage *backgroundPhoto = [UIImage imageNamed:@"2.jpg"];
    self.view.layer.contents = (id) backgroundPhoto.CGImage;
    self.view.layer.backgroundColor = [UIColor clearColor].CGColor;
    //注册账户
    _accountTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 300, 300, 60)];
    _accountTextField.backgroundColor = [UIColor whiteColor];
    _accountTextField.layer.cornerRadius = 5;
    _accountTextField.placeholder = @"请输入要注册的账号";
    _accountTextField.delegate = self;
    _accountTextField.borderStyle = UIButtonTypeRoundedRect;
    [self.view addSubview:_accountTextField];
    
    //注册密码
    _passwordTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 400, 300, 60)];
    _passwordTextField.backgroundColor = [UIColor whiteColor];
    _passwordTextField.layer.cornerRadius = 5;
    _passwordTextField.placeholder = @"请输入要注册的密码";
    _passwordTextField.delegate = self;
    _passwordTextField.borderStyle = UIButtonTypeRoundedRect;
    [self.view addSubview:_passwordTextField];
    
    //注册按钮
    
    UIButton *registerButton = [[UIButton alloc] initWithFrame:CGRectMake(150, 500, 100, 50)];
    registerButton.backgroundColor = [UIColor whiteColor];
    [registerButton setTitle:@"注册" forState:UIControlStateNormal];
    [registerButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [registerButton addTarget:self action:@selector(returnAccount) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:registerButton];
    
}

//回收键盘

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
    
}


//返回函数
-(void) returnAccount {
    [self.view endEditing:YES];
    NSMutableArray *AccountArray = [[NSMutableArray alloc] init];
    [AccountArray addObject:_accountTextField.text];
    [AccountArray addObject:_passwordTextField.text];
    [_accountandpassCombination addObject:AccountArray];
    [self dismissViewControllerAnimated:YES completion:nil];
    if([_registerDelegate respondsToSelector:@selector(passAccount:passPassword:)]){
        [_registerDelegate passAccount:_accountTextField.text passPassword:_passwordTextField.text];
    }
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
