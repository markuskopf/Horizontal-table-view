//
//  HorizontalTableCell.m
//  HorizontalTables
//
//  Created by Markus Kopf on 9/8/11.
//  Copyright 2011 arconsis. All rights reserved.
//

#import "HorizontalTableCell.h"

@implementation HorizontalTableCell

@synthesize horizontalTableView = _horizontalTableView;
@synthesize articles = _articles;

#pragma mark - Table View Data Source

- (NSString *) reuseIdentifier 
{
    return @"HorizontalCell";
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{    
    return [self.articles count];
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"ArticleCell";
 
    [self.articles valueForKey:@""];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil) 
    {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier] autorelease];
    }
    
    cell.textLabel.text = @"The title of the cell in the table within the table :O";
    
    return cell;
}
 */

#pragma mark - Memory Management

- (void)dealloc
{
    self.horizontalTableView = nil;
    self.articles = nil;
    
    [super dealloc];
}

@end