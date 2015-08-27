//
//  FISDanceMove.m
//  searchAndShout
//
//  Created by Joe Burgess on 7/2/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "FISDanceMove.h"


@implementation FISDanceMove

@dynamic step1;
@dynamic step2;
@dynamic step3;
@dynamic step4;
@dynamic name;

-(NSArray*)properties {
    return @[self.name,
             self.step1,
             self.step2,
             self.step3,
             self.step4];
}



@end
