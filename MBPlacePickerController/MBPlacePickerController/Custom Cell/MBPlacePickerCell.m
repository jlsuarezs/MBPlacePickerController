//
//  MBPlacePickerCell.m
//  Kosher GPS
//
//  Created by Moshe Berman on 1/18/15.
//  Copyright (c) 2015 Moshe. All rights reserved.
//

#import "MBPlacePickerCell.h"

@implementation MBPlacePickerCell

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    
    // Configure the view for the selected state
    if (animated)
    {
        [UIView animateWithDuration:0.2 animations:^{
            [self setTapped:selected];
        }];
    }
    else
    {
        [self setTapped:selected];
    }
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
    if (animated)
    {
        [UIView animateWithDuration:0.3 animations:^{
            [self setTapped:highlighted];
        }];
    }
    else
    {
        [self setTapped:highlighted];
    }
}

#pragma mark - Tapped

- (void)setTapped:(BOOL)tapped
{
    UIColor *backgroundColor =  [UIColor colorWithWhite:0.97 alpha:0.1];
    UIColor *titleColor = [UIColor whiteColor];
    UIColor *subtitleColor = [UIColor lightGrayColor];
    
    if (tapped && self.selectionStyle != UITableViewCellSelectionStyleNone)
    {
        backgroundColor = [UIColor colorWithWhite:0.85 alpha:0.6];
        titleColor = [UIColor whiteColor];
        subtitleColor = [titleColor colorWithAlphaComponent:0.5];
    }
    
    self.backgroundColor = backgroundColor;
    self.textLabel.textColor = titleColor;
    self.textLabel.backgroundColor = [UIColor clearColor];
}

@end
