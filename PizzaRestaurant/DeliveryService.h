//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by Callum Davies on 2017-02-11.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Pizza;

@interface DeliveryService : NSObject

@property NSMutableArray *descriptionsOfPizza;

-(void)deliverPizza:(Pizza *)pizza;
-(NSMutableArray *)deliveredPizzaDescription;

@end
