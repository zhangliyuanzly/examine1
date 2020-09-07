//
//  Son2TableViewCell.m
//  UINavigationController和UITabBarController
//
//  Created by 张立远 on 2020/9/6.
//  Copyright © 2020 张立远. All rights reserved.
//

#import "Son2TableViewCell.h"

@implementation Son2TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    self.headImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_headImageView];
    
    self.nameLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_nameLabel];
    
    self.signnatureLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_signnatureLabel];
    
    self.photoImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_photoImageView];
    
    self.addressLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_addressLabel];
    
    self.timeLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_timeLabel];
    
    self.pointImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_pointImageView];
    
    return self;
    
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    _headImageView.frame = CGRectMake(20, 5, 50, 50);
    
    _nameLabel.frame = CGRectMake(75, 5, 200, 50);
    _nameLabel.textColor = [UIColor blueColor];
    
    _signnatureLabel.frame = CGRectMake(75, 40, 250, 50);
    
    _photoImageView.frame = CGRectMake(75, 100, 100, 120);
    
    _addressLabel.frame = CGRectMake(75, 220, 150, 50);
    
    _timeLabel.frame = CGRectMake(75, 250, 100, 50);
    _timeLabel.font = [UIFont systemFontOfSize:15];
    _timeLabel.textColor = [UIColor grayColor];
    
    _pointImageView.frame = CGRectMake(340, 250, 20, 10);
}

@end
