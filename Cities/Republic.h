//
//  Republic.h
//  Cities
//
//  Created by mac on 07.04.2018.
//  Copyright © 2018 mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Country.h"
#import "Region.h"

@interface Republic : NSObject

@property(nonatomic) NSArray *nameCountrys;
@property (nonatomic) Country *country;
@property (nonatomic) Region *region;

-(instancetype) init;

@end
