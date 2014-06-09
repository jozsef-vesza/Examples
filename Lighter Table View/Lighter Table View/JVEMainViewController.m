//
//  JVEMainViewController.m
//  Lighter Table View
//
//  Created by Jozsef Vesza on 09/06/14.
//  Copyright (c) 2014 Jozsef Vesza. All rights reserved.
//

#import "JVEMainViewController.h"
#import "JVETableViewDataSource.h"
#import "JVECellConfigurator.h"
#import "JVEPerson.h"

@interface JVEMainViewController ()

@property (nonatomic, strong) JVETableViewDataSource *dataSource;

@end

@implementation JVEMainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"personCell"];
    self.dataSource = [[JVETableViewDataSource alloc] initWithTableView:self.tableView withItems:[self generatePeople] withCellConfigurator:[[JVECellConfigurator alloc] init]];
}

- (NSArray *)generatePeople {
    NSMutableArray *people = [NSMutableArray array];
    
    for (int i = 0; i < 10; i++) {
        JVEPerson *person = [[JVEPerson alloc] init];
        person.name = [NSString stringWithFormat:@"Person%d", i];
        [people addObject:person];
    }
    
    return people;
}

@end
