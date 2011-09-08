//
//  ArticleListViewController.m
//  HorizontalTables
//
//  Created by Markus Kopf on 9/7/11.
//  Copyright 2011 arconsis. All rights reserved.
//

#import "ArticleListViewController.h"


@implementation ArticleListViewController

@synthesize articleDictionary = _articleDictionary;


- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.articleDictionary = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Articles" ofType:@"plist"]];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    
    self.articleDictionary = nil;
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return [self.articleDictionary.allKeys count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSSortDescriptor* sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:nil ascending:YES selector:@selector(localizedCompare:)];
    NSArray* sortedCategories = [self.articleDictionary.allKeys sortedArrayUsingDescriptors:[NSArray arrayWithObject:sortDescriptor]];
    
    NSString *categoryName = [sortedCategories objectAtIndex:section];
    
    NSArray *currentCategory = [self.articleDictionary objectForKey:categoryName];
    
    return [currentCategory count];
}


@end
