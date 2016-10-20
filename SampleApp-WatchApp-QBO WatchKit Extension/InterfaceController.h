//
//  InterfaceController.h
//  SampleApp-WatchApp-QBO WatchKit Extension
//
//  Created by De Rose, Diana on 10/20/16.
//  Copyright © 2016 De Rose, Diana. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController : WKInterfaceController
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *myLabel;

@end
