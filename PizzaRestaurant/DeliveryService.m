//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Callum Davies on 2017-02-11.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"
#import "Pizza.h"
#import "DeliveryCar.h"

@implementation DeliveryService

- (instancetype)init
{
    self = [super init];
    if (self) {
        _descriptionsOfPizza = [NSMutableArray new];
    }
    return self;
}

-(void)deliverPizza:(Pizza *)pizza
{
    DeliveryCar *deliveryCar = [DeliveryCar new];
    [deliveryCar deliverPizza:pizza];
    [_descriptionsOfPizza addObject:pizza.description];
}

-(NSMutableArray *)deliveredPizzaDescription
{
    return _descriptionsOfPizza;
}


@end
