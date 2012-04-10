//
//  MasterViewController.m
//  Restaurants
//
//

#import "MasterViewController.h"

@implementation MasterViewController

@synthesize restaurants;

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //set up restaurants array
    restaurants = [[NSMutableArray alloc] init];
    
    //set up a restaurant
    Restaurant* piopio;
    piopio = [[Restaurant alloc] init];
    
    piopio.name = @"Pio Pio";
    piopio.address = @"746 First Avenue\nNew York, NY 10128";
    piopio.cuisineType = @"Peruvian";
    piopio.yearOpened = 1995;
    
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
    
    piopio.reviews = [[NSMutableArray alloc] init];
    [piopio addReview:review1];
    [piopio addReview:review2];
    [piopio addReview:review3];
    [piopio addReview:review4];
    
    //set up another restaurant
    Restaurant* crabworld;
    crabworld = [[Restaurant alloc] init];
    
    crabworld.name = @"Carl's Crappy Crabs";
    crabworld.address = @"123 11th Ave\nNew York, NY 10128";
    crabworld.cuisineType = @"Crab food";
    crabworld.yearOpened = 1988;
    
    review1 = [[Review alloc] init];
    review1.text = @"Nobody loves Carl. Definitely not me.";
    review1.reviewer = @"The Addams";
    review1.score = 1;
    review1.numberOfHelpfulReviews = 15;
    review1.numberOfUnhelpfulReviews = 11;
    
    review2 = [[Review alloc] init];
    review2.text = @"I ate there and I cried. The next day my mother cried and would tell nobody why.";
    review2.reviewer = @"Standle";
    review2.score = 1;
    review2.numberOfHelpfulReviews = 30;
    review2.numberOfUnhelpfulReviews = 7;
    
    crabworld.reviews = [[NSMutableArray alloc] init];
    [crabworld addReview:review1];
    [crabworld addReview:review2];
    
    //set up another restaurant
    Restaurant* trustHole;
    trustHole = [[Restaurant alloc] init];
    
    trustHole.name = @"The Trusting Hole";
    trustHole.address = @"Deep, deep in the earth\nNew York, NY 10128";
    trustHole.cuisineType = @"Spiritual";
    trustHole.yearOpened = 1988;
    
    review1 = [[Review alloc] init];
    review1.text = @"A powerful force has brought me here for reasons that I do not yet understand.";
    review1.reviewer = @"The First";
    review1.score = 5;
    review1.numberOfHelpfulReviews = 20;
    review1.numberOfUnhelpfulReviews = 14;
    
    review2 = [[Review alloc] init];
    review2.text = @"The food is without taste, but I feel nourished in ways I have never felt in the past.";
    review2.reviewer = @"The Second";
    review2.score = 5;
    review2.numberOfHelpfulReviews = 26;
    review2.numberOfUnhelpfulReviews = 3;
    
    review3 = [[Review alloc] init];
    review3.text = @"I have no knowledge of who I am, who I was, or the life I led before dining here. I know only the hole, the earth, and the deep sustance I feel from the food provided.";
    review3.reviewer = @"The Second";
    review3.score = 5;
    review3.numberOfHelpfulReviews = 13;
    review3.numberOfUnhelpfulReviews = 1;
    
    trustHole.reviews = [[NSMutableArray alloc] init];
    [trustHole addReview:review1];
    [trustHole addReview:review2];
    [trustHole addReview:review3];
    
    //add the restaurants to my array
    [restaurants addObject: piopio];
    [restaurants addObject: crabworld];
    [restaurants addObject: trustHole];
     
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
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
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

-(int)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [restaurants count];
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath*)indexPath
{
    
    Restaurant* thisRestaurant;
    thisRestaurant = [restaurants objectAtIndex:indexPath.row];
    
    //This is the cell identifier we set in the Storyboard file
    NSString* cellIdentifier = @"RestaurantCell";
    
    //This line asks the tableView to "reuse" a cell. It will return a UITableViewCell with the identifier given.
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: cellIdentifier];
    
    //The cell type we selected in the storyboard supports a textLabel and a detailTextLabel. We'll set them both here.
    cell.textLabel.text = thisRestaurant.name;
    cell.detailTextLabel.text = thisRestaurant.cuisineType;
    return cell;
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //get the destination view controller
    DetailViewController* detailVC = (DetailViewController*)
    [segue destinationViewController];
    
    //get the table view
    UITableView* table = [self tableView];
    
    //get the selected row's idnex path from the table
    NSIndexPath* indexPath = [table indexPathForSelectedRow];
    
    //get the current restaurant using the index path
    Restaurant* currentRestaurant = [restaurants objectAtIndex:indexPath.row];
    
    //set the detail view controller's restaurant
    detailVC.restaurant = currentRestaurant;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source.
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

@end
