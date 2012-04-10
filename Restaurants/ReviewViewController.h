//
//  ReviewViewController.h
//  Restaurants
//
//  Created by Andy Wallace on 4/9/12.
//  Copyright (c) 2012 AndyMakes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Restaurant.h"

@interface ReviewViewController : UITableViewController
{
    Restaurant* restaurant;
}

@property (readwrite, strong) Restaurant* restaurant;

@end
