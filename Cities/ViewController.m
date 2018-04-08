//
//  ViewController.m
//  Cities
//
//  Created by mac on 03.04.2018.
//  Copyright © 2018 mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property NSArray *countrys;
@property NSMutableArray *regions,*citys;
@property NSString *strRegion,*strCity;
@property (nonatomic) NSInteger rowCountry,rowRegion,count,countText;
@property (weak, nonatomic) IBOutlet UITextField *countryTextFild;
@property (weak, nonatomic) IBOutlet UITextField *regionTextFild;
@property (weak, nonatomic) IBOutlet UITextField *cityTextFild;
@property (weak, nonatomic) IBOutlet UIPickerView *countriPicker;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.countrys=@[@"Belarus",@"Georgia",@"Poland",@"Ukraine"];
    
    self.regions=[NSMutableArray array];
    [self.regions addObject:@"Region"];
    [self.regions addObject:@"Region"];
    [self.regions addObject:@"Region"];
    [self.regions addObject:@"Region"];
    self.citys=[NSMutableArray array];
    [self.citys addObject:@"City"];
    [self.citys addObject:@"City"];
    [self.citys addObject:@"City"];
    [self.citys addObject:@"City"];
    
    self.countriPicker.dataSource=self;
    self.countriPicker.delegate=self;
    self.rowCountry=0;
    self.rowRegion=0;
    self.count=0;
    self.countText=0;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 3;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    NSInteger count=0;
 
    if(component==0){
        count= self.countrys.count;
    }
    else if(component==1){
        count= self.regions.count;
    }
    else if(component==2){
        count= self.citys.count;
    }
    return count;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    NSString *rowv;
    NSLog(@"%li",self.count);
    self.count++;
    if(component==0){
        rowv= self.countrys[row];
    }
    else if(component==1){
        rowv= self.regions[row];
    }
    else if(component==2){
        rowv= self.citys[row];
    }
    return rowv;
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    NSLog(@"countText %li",self.countText);
    self.countText++;
    if (component == 0) {
        [self.countryTextFild setText:self.countrys[row]];
        [self changeRegion:row];
        self.rowCountry=row;
    }
    else if (component == 1) {
        [self.regionTextFild setText:self.regions[row]];
        self.rowRegion=row;
        [self changeCityBy:self.rowCountry andRagions:self.rowRegion];
    }
    else if(component== 2){
        [self.cityTextFild setText:self.citys[row]];
    }
}

-(void) changeRegion:(NSInteger)row {

    if(self.regions.count){
            [self.regions removeAllObjects];
    }
    
    switch (row) {
        case 0:
            [self.regions addObject:@"Brest region"];
            [self.regions addObject:@"Vitebsk region"];
            [self.regions addObject:@"Gomel region"];
            [self.regions addObject:@"Minsk region"];
            break;
            
        case 1:
            [self.regions addObject:@"Abkhazia"];
            [self.regions addObject:@"Adzhar region"];
            [self.regions addObject:@"Imereti region"];
            [self.regions addObject:@"Kakheti region"];
            break;
            
        case 2:
            [self.regions addObject:@"Mazowieckie"];
            [self.regions addObject:@"Dolnoslaskie"];
            [self.regions addObject:@"Lubuskie"];
            [self.regions addObject:@"Podlaskie"];
            break;
            
        case 3:
            [self.regions addObject:@"Dneprovskaya"];
            [self.regions addObject:@"Kharkivska"];
            [self.regions addObject:@"Kievskaya"];
            [self.regions addObject:@"Zaporozhskaya"];
            break;
            
        default:
            break;
    }
}

-(void) changeCityBy:(NSInteger)rowCountry andRagions:(NSInteger)rowRegion{
    
    if(self.citys.count){
            [self.citys removeAllObjects];
    }
    
    switch (rowCountry) {
        case 0:
            switch (rowRegion) {
                case 0:
                    [self.citys addObject:@"Baranav"];
                    [self.citys addObject:@"Gantsev"];
                    [self.citys addObject:@"Ivanov"];
                    [self.citys addObject:@"Brest"];
                    break;
                case 1:
                    [self.citys addObject:@"Vitebsk"];
                    [self.citys addObject:@"Orsha"];
                    [self.citys addObject:@"Senno"];
                    [self.citys addObject:@"Glubokoye"];
                    break;
                case 2:
                    [self.citys addObject:@"Gomel"];
                    [self.citys addObject:@"Mozyr"];
                    [self.citys addObject:@"Zhlobin"];
                    [self.citys addObject:@"Yelsk"];
                    break;
                case 3:
                    [self.citys addObject:@"Nesvizh"];
                    [self.citys addObject:@"Molodechno"];
                    [self.citys addObject:@"Vileika"];
                    [self.citys addObject:@"Minsk"];
                    break;
            }
            break;
            
        case 1:
            switch (rowRegion) {
                case 0:
                    [self.citys addObject:@"Gagra"];
                    [self.citys addObject:@"Sukhumi"];
                    [self.citys addObject:@"Tkvarcheli"];
                    [self.citys addObject:@"Gal"];
                    break;
                case 1:
                    [self.citys addObject:@"Kobuleti"];
                    [self.citys addObject:@"Chakvi"];
                    [self.citys addObject:@"Makhindjauri"];
                    [self.citys addObject:@"Kvariati"];
                    break;
                case 2:
                    [self.citys addObject:@"Tskhaltubo"];
                    [self.citys addObject:@"Chiatura"];
                    [self.citys addObject:@"Zestafoni"];
                    [self.citys addObject:@"Sachkhere"];
                    break;
                case 3:
                    [self.citys addObject:@"Kvareli"];
                    [self.citys addObject:@"Gurjaani"];
                    [self.citys addObject:@"Lagodekhi"];
                    [self.citys addObject:@"Sagarejo"];
                    break;
            }
            break;
            
        case 2:
            switch (rowRegion) {
                case 0:
                    [self.citys addObject:@"Varshava"];
                    [self.citys addObject:@"Ciechanow"];
                    [self.citys addObject:@"Ostroleka"];
                    [self.citys addObject:@"Pultusk"];
                    break;
                case 1:
                    [self.citys addObject:@"Wroclaw"];
                    [self.citys addObject:@"Walbrzych"];
                    [self.citys addObject:@"Legnica"];
                    [self.citys addObject:@"Lyubin"];
                    break;
                case 2:
                    [self.citys addObject:@"Zielona Gora"];
                    [self.citys addObject:@"Zhshzhuw-Wolskopol"];
                    [self.citys addObject:@"Nova sul"];
                    [self.citys addObject:@"Zhary"];
                    break;
                case 3:
                    [self.citys addObject:@"Melet"];
                    [self.citys addObject:@"Krosnensky"];
                    [self.citys addObject:@"Yaslen"];
                    [self.citys addObject:@"Zhechow"];
                    break;
            }
            break;
            
        case 3:
            switch (rowRegion) {
                case 0:
                    [self.citys addObject:@"Dnieper"];
                    [self.citys addObject:@"Krivoy_Rog"];
                    [self.citys addObject:@"Nikopol"];
                    [self.citys addObject:@"Marganets"];
                    break;
                case 1:
                    [self.citys addObject:@"Kharkiv"];
                    [self.citys addObject:@"Chuguyev"];
                    [self.citys addObject:@"Izyum"];
                    [self.citys addObject:@"Volchansk"];
                    break;
                case 2:
                    [self.citys addObject:@"Kiev"];
                    [self.citys addObject:@"Boryspil"];
                    [self.citys addObject:@"Irpen"];
                    [self.citys addObject:@"Belaya Tserkov"];
                    break;
                case 3:
                    [self.citys addObject:@"Zaporozhye"];
                    [self.citys addObject:@"Melitopol"];
                    [self.citys addObject:@"Energodar"];
                    [self.citys addObject:@"Berdyansk"];
                    break;
            }
            break;
            
        default:
            break;
    }
}

@end
