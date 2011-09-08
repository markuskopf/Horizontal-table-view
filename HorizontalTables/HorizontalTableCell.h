//
//  HorizontalTableCell.h
//  HorizontalTables
//
//  Created by Markus Kopf on 9/8/11.
//  Copyright 2011 arconsis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HorizontalTableCell : UITableViewCell <UITableViewDelegate, UITableViewDataSource>
{
    UITableView *_horizontalTableView;
    NSArray *_articles;
}

@property (nonatomic, retain) UITableView *horizontalTableView;
@property (nonatomic, retain) NSArray *articles;

@end