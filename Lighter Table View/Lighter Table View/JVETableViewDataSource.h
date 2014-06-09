//
//  JVETableViewDataSource.h
//  Lighter Table View
//
//  Created by Jozsef Vesza on 09/06/14.
//  Copyright (c) 2014 Jozsef Vesza. All rights reserved.
//

@protocol JVECellConfiguratorDelegate <NSObject>

- (NSString *)fetchReuseIdentifierForObject:(id)object;
- (UITableViewCell *)configureCell:(UITableViewCell *)cell usingObject:(id)object;

@end

@interface JVETableViewDataSource : NSObject<UITableViewDataSource>

- (instancetype)initWithTableView:(UITableView *)tableView withItems:(NSArray *)items withCellConfigurator:(id<JVECellConfiguratorDelegate>)cellConfigurator;

@end
