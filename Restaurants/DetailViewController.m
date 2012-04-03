//
//  DetailViewController.m
//  Restaurants
//
//

#import "DetailViewController.h"
#import "Review.h"

@implementation DetailViewController
@synthesize addressLabel;
@synthesize navigationHeader;
@synthesize cuisineLabel;
@synthesize ageLabel;
@synthesize helpfulReviewPercentageLabel;
@synthesize helpfulReviewLabel;
@synthesize star1;
@synthesize star2;
@synthesize star3;
@synthesize star4;
@synthesize star5;

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //set the text to be the most helpful review
    helpfulReviewLabel.text = [[restaurant mostHelpfulReview] text];
    helpfulReviewPercentageLabel.text = [NSString stringWithFormat:@"Most helpful review -- %i out of %i found this helpful.", [ [restaurant mostHelpfulReview] numberOfHelpfulReviews], [ [restaurant mostHelpfulReview] numberOfHelpfulReviews]+[ [restaurant mostHelpfulReview] numberOfUnhelpfulReviews]];
    
    //set the stars based on the review score
    NSLog(@"avg score: %f", [restaurant averageCustomerReview] );
    
    //set the stars by putting them in an array and using a nice loop to set them
    NSArray* stars;
    stars = [[NSArray alloc] initWithObjects:star1, star2, star3, star4, star5, nil];
    for (int i=0; i<[stars count]; i++){
        NSLog(@"checking: %i", i );
        if ( [restaurant averageCustomerReview] >= (float)i+0.5 ){
            NSLog(@"printing: %i", i );
            ((UIImageView*)[stars objectAtIndex:i]).image = [UIImage imageNamed:@"Star_ON.png"];
        }
    }
    
    addressLabel.text = [restaurant address];
    navigationHeader.title = [restaurant name];
    cuisineLabel.text = [restaurant cuisineType];
    ageLabel.text = [NSString stringWithFormat:@"Est. %i (%i years ago)", restaurant.yearOpened, [restaurant age]];
    
}



- (void)viewDidUnload
{
    [self setAddressLabel:nil];
    [self setNavigationHeader:nil];
    [self setCuisineLabel:nil];
    [self setAgeLabel:nil];
    [self setHelpfulReviewPercentageLabel:nil];
    [self setHelpfulReviewLabel:nil];
    [self setStar1:nil];
    [self setStar2:nil];
    [self setStar3:nil];
    [self setStar4:nil];
    [self setStar5:nil];
    [super viewDidUnload];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


@end
