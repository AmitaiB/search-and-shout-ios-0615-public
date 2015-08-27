//
//  FISDanceMove.h
//  searchAndShout
//
//  Created by Joe Burgess on 7/2/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface FISDanceMove : NSManagedObject

@property (nonatomic, retain) NSString * step1;
@property (nonatomic, retain) NSString * step2;
@property (nonatomic, retain) NSString * step3;
@property (nonatomic, retain) NSString * step4;
@property (nonatomic, retain) NSString * name;

@end
