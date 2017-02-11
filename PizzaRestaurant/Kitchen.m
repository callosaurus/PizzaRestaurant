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
    
    SEL didMake = @selector(kitchenDidMakePizza:);
    
    Pizza *pizza = nil;
    
    //if there is a delegate in the first place do this
    if (self.delegate) {
        
        //check anchovy-hater manager doesn't veto pizza first
        if ([self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]) {
            
            pizza = [[Pizza alloc] initWithSize:size andWithToppings:toppings];
            
            //check cheery manager doesn't upgrade pizza first
            if ([self.delegate kitchenShouldUpgradeOrder:self]) {
                
                pizza = [[Pizza alloc] initWithSize:Large andWithToppings:toppings];
                
            }
            
            //check if manager can respond to didMake
            if ([self.delegate respondsToSelector:didMake]) {
                [self.delegate kitchenDidMakePizza:pizza];
            }
        }
    }
    
    return pizza;
}

@end
