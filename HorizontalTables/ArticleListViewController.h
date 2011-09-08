//
//  ArticleListViewController.h
//  HorizontalTables
//
//  Created by Markus Kopf on 9/7/11.
//  Copyright 2011 arconsis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ArticleListViewController : UITableViewController
{
    NSDictionary *_articleDictionary;
}

@property (nonatomic, retain) NSDictionary *articleDictionary;

@end
