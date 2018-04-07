//
//  Region.h
//  Cities
//
//  Created by mac on 07.04.2018.
//  Copyright © 2018 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Region : NSObject

@property(nonatomic) NSString *name;
@property(nonatomic) NSMutableArray *nameCitys;

-(instancetype) initWithName:(NSString*)name;

@end
