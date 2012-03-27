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
    float bestScore=0;
    Review* bestReview;
    for (Review* review in [self reviews]) {
        if ([review helpfulness] > bestScore){
            bestScore=[review helpfulness];
            bestReview=review;
        }
    }
    
    
    return bestReview;
}

-(float) averageCustomerReview;
{
    float total=0;
    
    for (Review* review in [self reviews]) {
        total+= (float)[review score];
    }
    
    return total/(float)[reviews count];
    
}

-(void) addReview:(Review*) newReview
{
    [reviews addObject: newReview];
}

@end
