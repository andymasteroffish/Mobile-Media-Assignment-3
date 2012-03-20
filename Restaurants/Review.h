//
//  Review.h
//  Restaurants
//
//  Created by Andy Wallace on 2/27/12.
//  Copyright (c) 2012 AndyMakes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Review : NSObject
{
    
    NSString* text;
    NSString* reviewer;
    int numberOfHelpfulReviews;
    int numberOfUnhelpfulReviews;
    int score;
}

@property(readwrite, strong) NSString* text;
@property(readwrite, strong) NSString* reviewer;
@property(readwrite) int numberOfHelpfulReviews;
@property(readwrite) int numberOfUnhelpfulReviews;
@property(readwrite) int score;


-(float) helpfulness;

@end


