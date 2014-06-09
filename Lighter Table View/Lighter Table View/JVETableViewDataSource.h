//
//  JVETableViewDataSource.h
//  Lighter Table View
//
//  Created by Jozsef Vesza on 09/06/14.
//  Copyright (c) 2014 Jozsef Vesza. All rights reserved.
//

/**
 *  Protocol for cell configurator classes
 */
@protocol JVECellConfiguratorDelegate <NSObject>

- (NSString *)fetchReuseIdentifierForObject:(id)object;
- (UITableViewCell *)configureCell:(UITableViewCell *)cell usingObject:(id)object;

@end

/**
 *  Class to encapsulate UITableViewDataSource logic
 */
@interface JVETableViewDataSource : NSObject<UITableViewDataSource>

/**
 *  Custom initializer
 *
 *  @param tableView        The table view that will use this instance as datasource
 *  @param items            The items to show in the table view
 *  @param cellConfigurator The object responsible for cell configuration
 *
 *  @return An instance of JVETableViewDataSource
 */
- (instancetype)initWithTableView:(UITableView *)tableView withItems:(NSArray *)items withCellConfigurator:(id<JVECellConfiguratorDelegate>)cellConfigurator;

@end
