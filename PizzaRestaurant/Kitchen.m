//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"
#import "Pizza.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
    Pizza *pizza = [[Pizza alloc] init];
    pizza.size = size;
    pizza.toppings = toppings;
    
    //convert call with enum back to proper size
    switch (size) {
    case Small:
        NSLog(@"Pizza made with size: small, and the following toppings: %@", pizza.toppings);
        break;
    case Medium:
        NSLog(@"Pizza made with size: medium, and the following toppings: %@", pizza.toppings);
        break;
    case Large:
        NSLog(@"Pizza made with size: large, and the following toppings: %@", pizza.toppings);
        break;
    default:
        NSLog(@"That's not a proper pizza size!");
    }
    

    return pizza;
}

@end
