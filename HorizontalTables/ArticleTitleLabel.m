//
//  ArticleTitleLabel.m
//  HorizontalTables
//
//  Created by Markus Kopf on 9/22/11.
//  Copyright 2011 arconsis. All rights reserved.
//

#import "ArticleTitleLabel.h"
#import "ControlVariables.h"

@implementation ArticleTitleLabel


-(void)setPersistentBackgroundColor:(UIColor *)color
{
    self.backgroundColor = color;
}

- (void)setBackgroundColor:(UIColor *)backgroundColor
{
    // do  nothing - background color never changes
}

- (void)drawTextInRect:(CGRect)rect
{
    CGFloat newWidth = rect.size.width - kArticleTitleLabelPadding;
    CGFloat newHeight = rect.size.height;
    
    CGRect newRect = CGRectMake(kArticleTitleLabelPadding * 0.5, 0, newWidth, newHeight);
    
    [super drawTextInRect:newRect];
}

@end
