//
//  RegularManager.m
//  PizzaRestaurant
//
//  Created by Callum Davies on 2017-02-10.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "RegularManager.h"

@implementation RegularManager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings
{
    BOOL noAnchovies;
    
    if([toppings containsObject:@"anchovies"]){
        noAnchovies = NO;
    } else{
        noAnchovies = YES;
    }
    return noAnchovies;
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen
{
    return NO;
}

-(void)kitchenDidMakePizza:(Pizza *)pizza
{
    
    [_deliveryService deliverPizza:pizza];
    NSLog(@"Regular manager says 'thankyou, come again'");
}

@end
