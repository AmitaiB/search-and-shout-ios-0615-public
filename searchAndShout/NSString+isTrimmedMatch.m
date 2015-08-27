//
//  NSString+isTrimmedMatch.m
//  searchAndShout
//
//  Created by Amitai Blickstein on 8/27/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "NSString+isTrimmedMatch.h"

@implementation NSString (isTrimmedMatch)

-(BOOL)isEqualToString:(NSString *)aString whenTrimmed:(BOOL)trimmedComparison {
    if (!trimmedComparison) {
        return [self isEqualToString:aString];
    }
    
    NSString * trimmedString = [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return [trimmedString isEqualToString:aString];
}

@end
