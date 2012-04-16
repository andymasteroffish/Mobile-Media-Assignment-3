//
//  DetailViewController.h
//  Restaurants
//
//

#import <UIKit/UIKit.h>
#import "Restaurant.h"
#import "ReviewViewController.h"

@interface DetailViewController : UIViewController
{
    Restaurant* restaurant;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;

@property (readwrite, strong) Restaurant* restaurant;

@property (weak, nonatomic) IBOutlet UILabel *addressLabel;
@property (weak, nonatomic) IBOutlet UINavigationItem *navigationHeader;
@property (weak, nonatomic) IBOutlet UILabel *cuisineLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@property (weak, nonatomic) IBOutlet UILabel *helpfulReviewPercentageLabel;
@property (weak, nonatomic) IBOutlet UILabel *helpfulReviewLabel;

- (IBAction)markAsFavorite:(id)sender;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *favoriteButton;


@property (weak, nonatomic) IBOutlet UIImageView *star1;
@property (weak, nonatomic) IBOutlet UIImageView *star2;
@property (weak, nonatomic) IBOutlet UIImageView *star3;
@property (weak, nonatomic) IBOutlet UIImageView *star4;
@property (weak, nonatomic) IBOutlet UIImageView *star5;

@end
