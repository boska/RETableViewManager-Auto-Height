//
//  ExampleAutoHeightCell.h
//  RETableViewManagerExample
//
//  Created by Boska Lee on 5/21/15.
//  Copyright (c) 2015 Roman Efimov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <RETableViewCell.h>
#import "ExampleAutoHeightItem.h"
@interface ExampleAutoHeightCell : RETableViewCell
@property (nonatomic,strong) ExampleAutoHeightItem *item;
@property (nonatomic,strong)IBOutlet UILabel *longStringLabel;
@end
