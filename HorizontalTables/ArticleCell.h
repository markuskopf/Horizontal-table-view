//
//  ArticleCell.h
//  HorizontalTables
//
//  Created by Markus Kopf on 9/22/11.
//  Copyright 2011 arconsis. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ArticleTitleLabel; 

@interface ArticleCell : UITableViewCell 
{
    UIImageView *_thumbnail;
    ArticleTitleLabel *_titleLabel;
}

@property (nonatomic, retain) UIImageView *thumbnail;
@property (nonatomic, retain) ArticleTitleLabel *titleLabel;


@end
