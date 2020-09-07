//
//  Son3TableViewCell.h
//  UINavigationController和UITabBarController
//
//  Created by 张立远 on 2020/9/6.
//  Copyright © 2020 张立远. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Son3TableViewCell : UITableViewCell

@property (nonatomic, strong) UILabel *nameLabel;

@property (nonatomic, strong) UIImageView *headImageView;

@property (nonatomic, strong) UILabel *titleLabel;

@property (nonatomic, strong) UILabel *addressLabel;

@property (nonatomic, strong) UIImageView *pointImageView;//三个点

@end

NS_ASSUME_NONNULL_END
