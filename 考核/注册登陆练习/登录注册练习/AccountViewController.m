//
//  AccountViewController.m
//  登录注册练习
//
//  Created by 张立远 on 2020/9/5.
//  Copyright © 2020 张立远. All rights reserved.
//

#import "AccountViewController.h"
#import "RegisterViewController.h"
#import "MainViewController.h"

@interface AccountViewController ()<UITextFieldDelegate, RegisterViewControllerDelegate>

@end

@implementation AccountViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _accountandpassCombination = [[NSMutableArray alloc] init];
    
    [_accountandpassCombination addObject:@[@"iOSnb123", @"123456789"]];
    
    UIImage *backgroundPhoto = [UIImage imageNamed:@"1.jpg"];
    self.view.layer.contents = (id) backgroundPhoto.CGImage;
    self.view.layer.backgroundColor = [UIColor clearColor].CGColor;
    
    //创建一个开关
    UISwitch *switch1 = [[UISwitch alloc] initWithFrame:CGRectMake(100, 200, 60, 60)];
    [switch1 addTarget:self action:@selector(Switch) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:switch1];
    
    //账号栏
    _accountTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 300, 300, 60)];
    _accountTextField.backgroundColor = [UIColor whiteColor];
    _accountTextField.placeholder = @"请输入账号";
    //设置圆角风格
    _accountTextField.borderStyle = UITextBorderStyleRoundedRect;
    //设置代理
    _accountTextField.delegate = self;
    [self.view addSubview:_accountTextField];
    UIImageView *accountImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    accountImageView.image = [UIImage imageNamed:@"拍照.png"];
    _accountTextField.leftView = accountImageView;
    _accountTextField.leftViewMode = UITextFieldViewModeAlways;
    
    //密码拦
    _passwordTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 400, 300, 60)];
    _passwordTextField.backgroundColor = [UIColor whiteColor];
    _passwordTextField.placeholder = @"请输入密码:";
    _passwordTextField.borderStyle = UITextBorderStyleRoundedRect;
    //设置代理
    _passwordTextField.delegate = self;
    [self.view addSubview:_passwordTextField];
    
    //登陆按钮
    UIButton *landButton = [[UIButton alloc] init];
    landButton.frame = CGRectMake(70, 500, 100, 50);
    landButton.layer.cornerRadius = 5;
    landButton.backgroundColor = [UIColor whiteColor];
    [landButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [landButton setTitle:@"登陆" forState:UIControlStateNormal];
    [landButton addTarget:self action:@selector(touchAccout) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:landButton];
    
    //注册按钮
    UIButton *registerButton = [[UIButton alloc] init];
    registerButton.frame = CGRectMake(200, 500, 100, 50);
    registerButton.layer.cornerRadius = 5;
    registerButton.backgroundColor = [UIColor whiteColor];
    [registerButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [registerButton setTitle:@"注册" forState:UIControlStateNormal];
    [registerButton addTarget:self action:@selector(touchRegister) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:registerButton];
    
 
    }

//回收键盘
-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
    
}

- (void)Switch {
    NSLog(@"开关已打开");
}


-(void)passAccount:(NSString *)accountString passPassword:(NSString *)passwordString {
    _accountTextField.text = accountString;
    _passwordTextField.text = passwordString;
    NSMutableArray *mutableArray = [[NSMutableArray alloc] init];
    [mutableArray addObject:accountString];
    [mutableArray addObject:passwordString];
    [_accountandpassCombination addObject:mutableArray];
    
}


-(void) touchAccout {
    [self.view endEditing:YES];
    for (int i = 0; i < _accountandpassCombination.count; i++) {
        if ([_accountTextField.text isEqualToString:_accountandpassCombination[i][0]] && [_passwordTextField.text isEqualToString:_accountandpassCombination[i][1]] ) {
            //登陆成功
            UIAlertController *accountController = [UIAlertController alertControllerWithTitle:@"登陆成功" message:nil preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *actionYes = [UIAlertAction actionWithTitle:@"返回" style:UIAlertActionStyleCancel handler:nil];
            [accountController addAction:actionYes];
            [self presentViewController:accountController animated:YES completion:nil];
        }
    }
        //错误弹窗
    UIAlertController *wrongAlert = [UIAlertController alertControllerWithTitle:@"登陆失败" message:@"账号或密码错误" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *wrongYes = [UIAlertAction actionWithTitle:@"返回" style:UIAlertActionStyleCancel handler:nil];
    [wrongAlert addAction:wrongYes];
    [self presentViewController:wrongAlert animated:YES completion:nil];


}

-(void) touchRegister {
    [self.view endEditing:YES];
    RegisterViewController *registerViewController = [[RegisterViewController alloc] init];
    registerViewController.registerDelegate = self;
    registerViewController.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:registerViewController animated:YES completion:nil];
    registerViewController.accountandpassCombination = _accountandpassCombination;
    
     
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
