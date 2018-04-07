//
//  Country.m
//  Cities
//
//  Created by mac on 07.04.2018.
//  Copyright © 2018 mac. All rights reserved.
//

#import "Country.h"

@implementation Country

-(instancetype) initWithName:(NSString*)name{
    self = [super init];
    if (self) {
        self.name=name;
        self.nameRegions=[NSMutableArray array];
    }
    return self;
}

@end
