//
//  Son3TableViewCell.m
//  UINavigationController和UITabBarController
//
//  Created by 张立远 on 2020/9/6.
//  Copyright © 2020 张立远. All rights reserved.
//

#import "Son3TableViewCell.h"

@implementation Son3TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    self.headImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_headImageView];
    
    self.nameLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_nameLabel];
    
    self.titleLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_titleLabel];
    
    self.addressLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_addressLabel];
    
    self.pointImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_pointImageView];
    
    return self;
    
}

- (void)layoutSubviews {
    
    _headImageView.frame = CGRectMake(5, 5, 50, 50);
    
    _nameLabel.frame = CGRectMake(70, 5, 100, 50);
    _nameLabel.textColor = [UIColor redColor];
    _nameLabel.font = [UIFont systemFontOfSize:17];
    
    _titleLabel.frame = CGRectMake(70, 50, 200, 50);
    
    _addressLabel.frame = CGRectMake(70, 100, 100, 50);
    _addressLabel.textColor = [UIColor grayColor];
    _addressLabel.font = [UIFont systemFontOfSize:17];
    
    _pointImageView.frame = CGRectMake(340, 100, 20, 10);
    
    
    
}



@end
