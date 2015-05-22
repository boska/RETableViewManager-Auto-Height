//
//  ExampleAutoHeightCell.m
//  RETableViewManagerExample
//
//  Created by Boska Lee on 5/21/15.
//  Copyright (c) 2015 Roman Efimov. All rights reserved.
//

#import "ExampleAutoHeightCell.h"

@implementation ExampleAutoHeightCell
@dynamic item;
-(void)cellDidLoad{
    [super cellDidLoad];
}
-(void)cellWillAppear{
    [super cellWillAppear];
    self.longStringLabel.text = self.item.longString;
}
//no need for + (CGFloat)heightWithItem:(RETableViewItem *)item tableViewManager:(RETableViewManager *)tableViewManager
@end
