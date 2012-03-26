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
    
    NSLog(@"Num helpful %@", numberOfHelpfulReviews);
    NSLog(@"Num unhelpful %@", numberOfUnhelpfulReviews);
          
    NSLog(@"Checking %@", numberOfHelpfulReviews/(numberOfHelpfulReviews+numberOfUnhelpfulReviews));
    return numberOfHelpfulReviews/(numberOfHelpfulReviews+numberOfUnhelpfulReviews);
    
}
@end
