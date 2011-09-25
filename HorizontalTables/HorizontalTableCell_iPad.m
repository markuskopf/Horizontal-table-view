//
//  HorizontalTableCell_iPad.m
//  HorizontalTables
//
//  Created by Markus Kopf on 9/25/11.
//  Copyright 2011 arconsis. All rights reserved.
//

#import "HorizontalTableCell_iPad.h"
#import "ControlVariables.h"
#import "ArticleCell_iPhone.h"
#import "ArticleTitleLabel.h"

@implementation HorizontalTableCell_iPad

- (id)initWithFrame:(CGRect)frame
{
    if ((self = [super initWithFrame:frame]))
    {
        self.horizontalTableView = [[[UITableView alloc] initWithFrame:CGRectMake(0, 0, kCellHeight, kTableLength)] autorelease];
        self.horizontalTableView.showsVerticalScrollIndicator = NO;
        self.horizontalTableView.showsHorizontalScrollIndicator = NO;
        self.horizontalTableView.transform = CGAffineTransformMakeRotation(-M_PI * 0.5);
        [self.horizontalTableView setFrame:CGRectMake(kRowHorizontalPadding * 0.5, kRowVerticalPadding * 0.5, kTableLength - kRowHorizontalPadding, kCellHeight)];
        
        self.horizontalTableView.rowHeight = kCellWidth;
        self.horizontalTableView.backgroundColor = kHorizontalTableBackgroundColor;
        
        self.horizontalTableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
        self.horizontalTableView.separatorColor = [UIColor clearColor];
        
        self.horizontalTableView.dataSource = self;
        self.horizontalTableView.delegate = self;
        [self addSubview:self.horizontalTableView];
    }
    
    return self;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"ArticleCell";
    
    ArticleCell_iPhone *cell = (ArticleCell_iPhone *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) 
    {
        cell = [[[ArticleCell_iPhone alloc] initWithFrame:CGRectMake(0, 0, kCellWidth, kCellHeight)] autorelease];
    }
    
	NSDictionary *currentArticle = [self.articles objectAtIndex:indexPath.row];
    
    cell.thumbnail.image = [UIImage imageNamed:[currentArticle objectForKey:@"ImageName"]];
    cell.titleLabel.text = [currentArticle objectForKey:@"Title"];
    
    return cell;
}

@end
