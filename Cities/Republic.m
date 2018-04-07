//
//  Republic.m
//  Cities
//
//  Created by mac on 07.04.2018.
//  Copyright © 2018 mac. All rights reserved.
//

#import "Republic.h"

@implementation Republic

-(instancetype) init{
    self = [super init];
    if (self) {
        Region *zaporozhkaya=[[Region alloc]initWithName:@"Zaporozhskaya"];
        [zaporozhkaya.nameCitys addObject:@"Zaporozhye"];
        [zaporozhkaya.nameCitys addObject:@"Vasilevka"];
        [zaporozhkaya.nameCitys addObject:@"Berdyansk"];
        [zaporozhkaya.nameCitys addObject:@"Melitopol"];
        
        Region *dneprovska=[[Region alloc]initWithName:@"Dneprovskaya"];
        [dneprovska.nameCitys addObject:@"Dnieper"];
        [dneprovska.nameCitys addObject:@"Krivoy_Rog"];
        [dneprovska.nameCitys addObject:@"Nikopol"];
        [dneprovska.nameCitys addObject:@"Marganets"];
        
        Region *xarkovska=[[Region alloc]initWithName:@"Kharkivska"];
        [xarkovska.nameCitys addObject:@"Kharkiv"];
        [xarkovska.nameCitys addObject:@"Chuguyev"];
        [xarkovska.nameCitys addObject:@"Izyum"];
        [xarkovska.nameCitys addObject:@"Lyubotin"];
        
        Region *kievska=[[Region alloc]initWithName:@"Kievskaya"];
        [kievska.nameCitys addObject:@"Kiev"];
        [kievska.nameCitys addObject:@"Boryspil"];
        [kievska.nameCitys addObject:@"Obuhov"];
        [kievska.nameCitys addObject:@"Pripyat"];
        
        Country *ukraine=[[Country alloc]initWithName:@"Ukraine"];
        [ukraine.nameRegions addObject:zaporozhkaya.name];
        [ukraine.nameRegions addObject:dneprovska.name];
        [ukraine.nameRegions addObject:xarkovska.name];
        [ukraine.nameRegions addObject:kievska.name];
        
        Country *poland=[[Country alloc]initWithName:@"Poland"];
        [poland.nameRegions addObject:zaporozhkaya.name];
        [poland.nameRegions addObject:dneprovska.name];
        [poland.nameRegions addObject:xarkovska.name];
        [poland.nameRegions addObject:kievska.name];
        
        self.nameCountrys=@[ukraine.name,poland.name];
    }
    return self;
}

@end
