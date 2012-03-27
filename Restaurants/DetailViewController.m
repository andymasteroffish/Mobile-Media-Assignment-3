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
    restaurant = [[Restaurant alloc] init];
    
    restaurant.name = @"Pio Pio";
    restaurant.address = @"746 First Avenue\nNew York, NY 10128";
    restaurant.cuisineType = @"Peruvian";
    restaurant.yearOpened = 1995;

    Review* review1 = [[Review alloc] init];
    review1.text = @"What fab-u-lass chicken! We could eat it all day if we didn't have to stop to drink sangria!";
    review1.reviewer = @"The Addams";
    review1.score = 5;
    review1.numberOfHelpfulReviews = 19;
    review1.numberOfUnhelpfulReviews = 8;
    
    Review* review2 = [[Review alloc] init];
    review2.text = @"I DONE POSTED ON DA INTARWEBS!";
    review2.reviewer = @"Anonymous";
    review2.score = 1;
    review2.numberOfHelpfulReviews = 0;
    review2.numberOfUnhelpfulReviews = 45;
    
    Review* review3 = [[Review alloc] init];
    review3.text = @"Some of the best chicken I've ever eaten. A helpful tip: get some green (Aji) sauce to go, they sell it by the pint!";
    review3.reviewer = @"Jim Carr";
    review3.score = 5;
    review3.numberOfHelpfulReviews = 28;
    review3.numberOfUnhelpfulReviews = 2;
    
    Review* review4 = [[Review alloc] init];
    review4.text = @"While the food is amazing, they often simply don't pick up the phone when ordering out!";
    review4.reviewer = @"Paul";
    review4.score = 4;
    review4.numberOfHelpfulReviews = 14;
    review4.numberOfUnhelpfulReviews = 5;
    
    //toss there reviews into the array
    restaurant.reviews = [[NSArray alloc] initWithObjects:review1, review2, review3,review4, nil];
    
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
    
    //setting the stars with good old if statements
//    if ([restaurant averageCustomerReview]>=0.5)
//        star1.image = [UIImage imageNamed:@"Star_ON.png"];
//    if ([restaurant averageCustomerReview]>=1.5)
//        star2.image = [UIImage imageNamed:@"Star_ON.png"];
//    if ([restaurant averageCustomerReview]>=2.5)
//        star3.image = [UIImage imageNamed:@"Star_ON.png"];
//    if ([restaurant averageCustomerReview]>=3.5)
//        star4.image = [UIImage imageNamed:@"Star_ON.png"];
//    if ([restaurant averageCustomerReview]>=4.5)
//        star5.image = [UIImage imageNamed:@"Star_ON.png"];
    
    
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
