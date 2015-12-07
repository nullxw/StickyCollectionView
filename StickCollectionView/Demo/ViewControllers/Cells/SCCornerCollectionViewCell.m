//
//  DemoCollectionViewCell.m
//  StickCollectionView
//
//  Created by Bogdan Matveev on 21/09/15.
//  Copyright (c) 2015 Bogdan Matveev. All rights reserved.
//

#import "SCCornerCollectionViewCell.h"

@interface SCCornerCollectionViewCell ()
@property (weak, nonatomic) IBOutlet UILabel *cityLabel;
@property (weak, nonatomic) IBOutlet UIView *backingView;
@end

@implementation SCCornerCollectionViewCell

- (void)awakeFromNib {
    self.backingView.layer.cornerRadius = 12.f;
    self.backingView.layer.masksToBounds = YES;
}

- (void)setCity:(NSString *)city {
    self.cityLabel.text = city;
     self.backingView.backgroundColor = [UIColor colorWithHue:drand48() saturation:1.f brightness:.8f alpha:1.f];
}

@end