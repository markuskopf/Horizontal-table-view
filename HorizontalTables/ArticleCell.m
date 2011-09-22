//
//  ArticleCell.m
//  HorizontalTables
//
//  Created by Markus Kopf on 9/22/11.
//  Copyright 2011 arconsis. All rights reserved.
//

#import "ArticleCell.h"

@implementation ArticleCell

@synthesize thumbnail = _thumbnail;
@synthesize titleLabel = _titleLabel;


- (NSString *)reuseIdentifier
{
    return @"ArticleCell";
}


- (void)dealloc
{
    self.thumbnail = nil;
    self.titleLabel = nil;
    
    [super dealloc];
}

@end
