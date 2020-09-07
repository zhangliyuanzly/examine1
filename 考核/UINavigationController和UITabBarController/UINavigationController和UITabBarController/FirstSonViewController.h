//
//  FirstSonViewController.h
//  UINavigationController和UITabBarController
//
//  Created by 张立远 on 2020/9/5.
//  Copyright © 2020 张立远. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FirstSonViewController : UIViewController<
UITableViewDelegate,
UITableViewDataSource
>

@property UITableView *tableView;

@end

NS_ASSUME_NONNULL_END
