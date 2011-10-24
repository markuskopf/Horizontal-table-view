//
//  HorizontalTableCell_iPad.m
//  HorizontalTables
//
//  Created by Markus Kopf on 9/25/11.
//  Copyright 2011 arconsis. All rights reserved.
//

#import "HorizontalTableCell_iPad.h"
#import "ControlVariables.h"
#import "ArticleCell_iPad.h"
#import "ArticleTitleLabel.h"

@implementation HorizontalTableCell_iPad

- (id)initWithFrame:(CGRect)frame
{
    if ((self = [super initWithFrame:frame]))
    {
        self.horizontalTableView = [[[UITableView alloc] initWithFrame:CGRectMake(0, 0, kIPadCellHeight, kIPadTableLength)] autorelease];
        self.horizontalTableView.showsVerticalScrollIndicator = NO;
        self.horizontalTableView.showsHorizontalScrollIndicator = NO;
        self.horizontalTableView.transform = CGAffineTransformMakeRotation(-M_PI * 0.5);
        [self.horizontalTableView setFrame:CGRectMake(kRowHorizontalPadding * 0.5, kRowVerticalPadding * 0.5, kIPadTableLength - kRowHorizontalPadding, kIPadCellHeight)];
        
        self.horizontalTableView.rowHeight = kIPadCellWidth;
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
    
    ArticleCell_iPad *cell = (ArticleCell_iPad *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) 
    {
        cell = [[[ArticleCell_iPad alloc] initWithFrame:CGRectMake(0, 0, kIPadCellWidth, kIPadCellHeight)] autorelease];
    }
    
	NSDictionary *currentArticle = [self.articles objectAtIndex:indexPath.row];
    
    cell.thumbnail.image = [UIImage imageNamed:[currentArticle objectForKey:@"ImageName"]];
    cell.titleLabel.text = [currentArticle objectForKey:@"Title"];
    
    return cell;
}

@end
