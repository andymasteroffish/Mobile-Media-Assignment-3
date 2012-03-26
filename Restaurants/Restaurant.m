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
        NSLog(@"Review Text: %@", review.text);
        
        NSLog(@"score: %@", [review helpfulness]);
        if ([review helpfulness] > bestScore){
            bestScore=[review helpfulness];
            bestReview=review;
        }
    }
    
    NSLog(@"Most helpful: %@", bestReview.text);
    
    return bestReview;
}
@end
