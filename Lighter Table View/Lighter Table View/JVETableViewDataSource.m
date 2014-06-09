//
//  JVETableViewDataSource.m
//  Lighter Table View
//
//  Created by Jozsef Vesza on 09/06/14.
//  Copyright (c) 2014 Jozsef Vesza. All rights reserved.
//

#import "JVETableViewDataSource.h"

@interface JVETableViewDataSource ()

@property (nonatomic, copy) NSArray *items;
@property (nonatomic, weak) UITableView *tableView;
@property (nonatomic, strong) id<JVECellConfiguratorDelegate> cellConfigurator;

@end

@implementation JVETableViewDataSource

- (instancetype)initWithTableView:(UITableView *)tableView withItems:(NSArray *)items withCellConfigurator:(id<JVECellConfiguratorDelegate>)cellConfigurator {
    self = [super init];
    if (self) {
        _tableView = tableView;
        _tableView.dataSource = self;
        _items = items;
        _cellConfigurator = cellConfigurator;
    }
    
    return self;
}

#pragma mark - UITableViewDatasource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if ([self.items count]) {
        return [self.items count];
    }
    
    NSLog(@"tableView:numberOfRowsInSection: could not be determined, self.items is nil or empty.");
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    id itemAtCurrentIndex = self.items[indexPath.row];
    UITableViewCell *cellAtIndex = nil;
    
    NSString *reuseIdentifierForCell = [self.cellConfigurator fetchReuseIdentifierForObject:itemAtCurrentIndex];
    cellAtIndex = [self.tableView dequeueReusableCellWithIdentifier:reuseIdentifierForCell];
    
    if (itemAtCurrentIndex) {
        cellAtIndex = [self.cellConfigurator configureCell:cellAtIndex usingObject:itemAtCurrentIndex];
    }
    
    return cellAtIndex;
}

@end
