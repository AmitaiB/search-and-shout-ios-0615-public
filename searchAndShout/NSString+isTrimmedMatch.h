//
//  NSString+isTrimmedMatch.h
//  searchAndShout
//
//  Created by Amitai Blickstein on 8/27/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (isTrimmedMatch)

-(BOOL)isEqualToString:(NSString *)aString whenTrimmed:(BOOL)trimmedComparison;

@end
