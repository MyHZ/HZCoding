//
//  ViewController.m
//  HZCodingDemo
//
//  Created by DM on 2017/4/6.
//  Copyright © 2017年 HZ. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)archive:(id)sender
{
    Person *person = [Person new];
    person.name = @"张三";
    person.age = 18;
    person.isBig = NO;
    person.sex = PersonSexMan;
    [NSKeyedArchiver archiveRootObject:person toFile:[self getFilePath]];
}
- (IBAction)unarchive:(id)sender
{
    Person *person = (Person *)[NSKeyedUnarchiver unarchiveObjectWithFile:[self getFilePath]];
    
}

-(NSString *)getFilePath
{
    NSString *temp = NSTemporaryDirectory();
    NSString *personPath = [temp stringByAppendingPathComponent:@"person.plist"];
    NSLog(@"%@",personPath);
    return personPath;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
