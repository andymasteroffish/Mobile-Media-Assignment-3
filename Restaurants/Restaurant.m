//
//  Restaurant.m
//  Restaurants
//

#import "Restaurant.h"


@implementation Restaurant
@synthesize address, name, cuisineType, yearOpened, reviews;


-(int)age
{
    return 2012 - yearOpened;

}

-(Review*) mostHelpfulReview
{
    //go through the arrays and find the one with high hiest helpful rating percentage
    
    for (Review* review in [Restaurant reviews]) {
        NSLog(@"Review Text: %@", review.text);
    }
}
@end
