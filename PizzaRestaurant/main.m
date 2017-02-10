//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size (small, medium, or large) and any number of toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            // Loop forever
            
            
            //Get user input
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            //Parse user input
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            NSArray *toppings = [commandWords subarrayWithRange:NSMakeRange(1,[commandWords count]-1)];
            
            
            // Make-a-da-pizza! Call with enum, is logged with plaintext in Kitchen.m switch case
            if ([[commandWords objectAtIndex:0] isEqualToString:@"small"]) {
                [restaurantKitchen makePizzaWithSize:Small toppings:toppings];
            } else if ([[commandWords objectAtIndex:0] isEqualToString:@"medium"]) {
                [restaurantKitchen makePizzaWithSize: Medium toppings:toppings];
            } else if ([[commandWords objectAtIndex:0] isEqualToString:@"large"]) {
                [restaurantKitchen makePizzaWithSize: Large toppings:toppings];
            } else {
                NSLog(@"please enter small, medium, or large");
            }
        }
    }
    return 0;
}

