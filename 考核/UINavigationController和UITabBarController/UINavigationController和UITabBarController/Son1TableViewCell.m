//
//  Son1TableViewCell.m
//  UINavigationController和UITabBarController
//
//  Created by 张立远 on 2020/9/6.
//  Copyright © 2020 张立远. All rights reserved.
//

#import "Son1TableViewCell.h"

@implementation Son1TableViewCell

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
    
    self.photoImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_photoImageView];
    
    self.headImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_headImageView];
    
    self.nameLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_nameLabel];
    
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    //图片大小
    _photoImageView.frame = CGRectMake(0, 0, 414, 200);
    _headImageView.frame = CGRectMake(300, 150, 70, 70);
    _nameLabel.frame = CGRectMake(250, 150, 60, 50);
}



@end
