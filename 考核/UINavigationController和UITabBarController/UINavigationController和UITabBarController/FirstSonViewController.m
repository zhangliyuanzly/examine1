//
//  FirstSonViewController.m
//  UINavigationController和UITabBarController
//
//  Created by 张立远 on 2020/9/5.
//  Copyright © 2020 张立远. All rights reserved.
//

#import "FirstSonViewController.h"
#import "Son1TableViewCell.h"
#import "Son2TableViewCell.h"
#import "Son3TableViewCell.h"

@interface FirstSonViewController ()

@end

@implementation FirstSonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:@"左括号.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:nil action:nil];
    
    //UINavigationController *sonController = [[UINavigationController alloc] init];
    self.navigationController.navigationBar.tintColor = [UIColor blackColor];
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.navigationItem.title = @"朋友圈";
    
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"拍照.png"] style:UIBarButtonItemStyleDone target:nil action:nil];
    self.navigationItem.rightBarButtonItem = rightButton;

    UIView *firstView = [[UIView alloc] init];
    firstView.frame = CGRectMake(0, 0, 414, 300);
    [self.view addSubview:firstView];
    
    //画布范围
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 414, 625) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [_tableView registerClass:[Son1TableViewCell class] forCellReuseIdentifier:@"111"];
    [_tableView registerClass:[Son2TableViewCell class] forCellReuseIdentifier:@"222"];
    [_tableView registerClass:[Son3TableViewCell class] forCellReuseIdentifier:@"333"];
    
    [self.view addSubview:_tableView];
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        return 200;
    }if(indexPath.section == 1 && indexPath.row % 2 == 0) {
        return 150;
    }
    return 300;
}

//每组的个数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray *array = [NSArray arrayWithObjects:@1, @10, nil];
    return [array[section] integerValue];
}

//组数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        Son1TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"111" forIndexPath:indexPath];
        
        cell.photoImageView.image = [UIImage imageNamed:@"image-21.png"];
        cell.headImageView.image = [UIImage imageNamed:@"image-21.png"];
        
        cell.nameLabel.text = @"阡陌";
        cell.nameLabel.font = [UIFont systemFontOfSize:15];
        
        return cell;
        
    }else if (indexPath.section == 1 && indexPath.row % 2 == 0) {
        Son3TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"333" forIndexPath:indexPath];
        cell.headImageView.image = [UIImage imageNamed:@"image-21.png"];
        cell.nameLabel.text = @"爱笑的姑娘";
        cell.titleLabel.text = @"为什么老年人都喜欢泡脚?";
        cell.addressLabel.text = @"西安航天城";
        cell.pointImageView.image = [UIImage imageNamed:@"省略号.png"];
        return cell;
    }
    else {
        Son2TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"222" forIndexPath:indexPath];
        cell.headImageView.image = [UIImage imageNamed:@"image-21.png"];
        cell.nameLabel.text = @"Franklin D.Roosevelt";
        cell.signnatureLabel.text = @"楼上黄昏欲望休，玉体横绝月如钩";
        cell.photoImageView.image = [UIImage imageNamed:@"image-21.png"];
        cell.addressLabel.text = @"苏州.博纳国际影城";
        cell.timeLabel.text = @"昨天";
        cell.pointImageView.image = [UIImage imageNamed:@"省略号.png"];
        return cell;

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
