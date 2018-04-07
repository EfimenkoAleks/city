//
//  Region.m
//  Cities
//
//  Created by mac on 07.04.2018.
//  Copyright © 2018 mac. All rights reserved.
//

#import "Region.h"

@implementation Region

-(instancetype) initWithName:(NSString*)name{
    self = [super init];
    if (self) {
        self.name=name;
        self.nameCitys=[NSMutableArray array];
    }
    return self;
}

@end
