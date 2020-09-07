//
//  Son2TableViewCell.h
//  UINavigationController和UITabBarController
//
//  Created by 张立远 on 2020/9/6.
//  Copyright © 2020 张立远. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Son2TableViewCell : UITableViewCell

@property (nonatomic, strong) UIImageView *headImageView;
@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *signnatureLabel;//个性签名
@property (nonatomic, strong) UIImageView *photoImageView;//图片
@property (nonatomic, strong) UILabel *addressLabel;
@property (nonatomic, strong) UILabel *timeLabel;
@property (nonatomic, strong) UIImageView *pointImageView;//三个点


@end

NS_ASSUME_NONNULL_END
