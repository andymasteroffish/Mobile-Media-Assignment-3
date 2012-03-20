//
//  Review.m
//  Restaurants
//
//  Created by Andy Wallace on 2/27/12.
//  Copyright (c) 2012 AndyMakes. All rights reserved.
//

#import "Review.h"

@implementation Review
@synthesize text, reviewer, numberOfHelpfulReviews, numberOfUnhelpfulReviews, score;

//returns a percentage of the number of helpful ratings from the total number of ratings
-(float) helpfulness
{
    return numberOfHelpfulReviews/(numberOfHelpfulReviews+numberOfUnhelpfulReviews);
    
}
@end
