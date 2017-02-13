//
//  RegularManager.h
//  PizzaRestaurant
//
//  Created by Callum Davies on 2017-02-10.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "DeliveryService.h"

@interface RegularManager : NSObject <KitchenDelegate>

@property DeliveryService *deliveryService;

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;

@end
