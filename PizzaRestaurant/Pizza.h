//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Callum Davies on 2017-02-09.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, PizzaSize) {
    Small,
    Medium,
    Large
};

@interface Pizza : NSObject

@property enum PizzaSize size;
@property NSArray *toppings;

@end
