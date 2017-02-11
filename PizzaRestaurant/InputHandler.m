//
//  InputHandler.m
//  PizzaRestaurant
//
//  Created by Callum Davies on 2017-02-10.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

-(NSString *)getUserInput
{
    char userInput [255];
    fgets(userInput, 255, stdin);
    
    NSString *convertedString = [NSString stringWithCString:userInput encoding:NSUTF8StringEncoding];
    NSCharacterSet *noBadChars = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *trimmedString = [convertedString stringByTrimmingCharactersInSet:noBadChars];
    
    return trimmedString;
}

@end
