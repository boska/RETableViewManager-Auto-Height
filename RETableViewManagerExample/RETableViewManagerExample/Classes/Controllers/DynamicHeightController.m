//
//  DynamicHeightController.m
//  RETableViewManagerExample
//
//  Created by Boska Lee on 5/21/15.
//  Copyright (c) 2015 Roman Efimov. All rights reserved.
//

#import "DynamicHeightController.h"
#import <RETableViewManager.h>
#import "ExampleAutoHeightItem.h"
@interface DynamicHeightController ()
@property (nonatomic,strong) RETableViewManager *manager;
@end

@implementation DynamicHeightController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.manager = [[RETableViewManager alloc] initWithTableView:self.tableView];
    self.manager[@"ExampleAutoHeightItem"]= @"ExampleAutoHeightCell";

    RETableViewSection *section = [RETableViewSection section];
    ExampleAutoHeightItem *item = [ExampleAutoHeightItem item];
    item.cellIdentifier = @"ExampleAutoHeightCell";
    item.longString = @"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
    item.cellHeight = UITableViewAutomaticDimension;
    [section addItem:item];
    
    [self.manager addSection:section];
    
    [self.manager.tableView reloadData];
}
@end
