//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Callum Davies on 2017-02-09.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger{
    Small,
    Medium,
    Large
} PizzaSize;

@interface Pizza : NSObject

@property PizzaSize size;
@property NSArray *toppings;

-(instancetype)initWithSize:(PizzaSize)pizzaSize andWithToppings:(NSArray *)toppings;
-(NSString *)sizeToString:(PizzaSize)pizzaSize;
+(PizzaSize)sizeSelector:(NSString *)sizeString;

@end
