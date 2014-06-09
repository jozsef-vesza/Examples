//
//  JVECellConfigurator.m
//  Lighter Table View
//
//  Created by Jozsef Vesza on 09/06/14.
//  Copyright (c) 2014 Jozsef Vesza. All rights reserved.
//

#import "JVECellConfigurator.h"
#import "JVEPerson.h"

@implementation JVECellConfigurator

- (NSString *)fetchReuseIdentifierForObject:(JVEPerson *)object {
    return @"personCell";
}

- (UITableViewCell *)configureCell:(UITableViewCell *)cell usingObject:(JVEPerson *)object {
    cell.textLabel.text = object.name;
    return cell;
}

@end
