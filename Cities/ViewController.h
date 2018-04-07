//
//  ViewController.h
//  Cities
//
//  Created by mac on 03.04.2018.
//  Copyright © 2018 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Republic.h"
#import "Country.h"

@interface ViewController : UIViewController<UIPickerViewDataSource,UIPickerViewDelegate>

@property (nonatomic) Republic *republic;

@end

