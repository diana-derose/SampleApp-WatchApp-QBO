//
//  InterfaceController.m
//  SampleApp-WatchApp-QBO WatchKit Extension
//
//  Created by De Rose, Diana on 10/20/16.
//  Copyright © 2016 De Rose, Diana. All rights reserved.
//

#import "InterfaceController.h"
#import <Foundation/Foundation.h>


@interface InterfaceController()

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction)getCustomer {
    // add tokens
    NSDictionary *headers = @{ @"accept": @"application/json", @"authorization": @"OAuth oauth_consumer_key=\"<add consumer key>\",oauth_token=\"<add oauth token>\",oauth_signature_method=\"HMAC-SHA1\",oauth_timestamp=\"1475995944\",oauth_nonce=\"ab3SF4\",oauth_version=\"1.0\",oauth_signature=\"<add oauth signature>\"", @"cache-control": @"no-cache"};
    
    //add company id and customer id
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"https://sandbox-quickbooks.api.intuit.com/v3/company/<companyid>/customer/<id>"] cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:10.0];
    
    [request setHTTPMethod:@"GET"];
    [request setAllHTTPHeaderFields:headers];
    
    NSURLSession *session = [NSURLSession sharedSession];
    
    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (error) {
            NSLog(@"%@", error);
        } else {
            
            NSDictionary *response = [NSJSONSerialization JSONObjectWithData:data options:0 error:NULL];
            
            
            NSDictionary *customer=[response objectForKey:@"Customer"];
            NSLog(@"%@", customer);
            
            NSString *displayName = nil;
            
            displayName = [customer objectForKey:@"DisplayName"];
            self.myLabel.text = displayName;
            
        }
        
    }];
    
    [dataTask resume];
}

- (IBAction)getEmployee {
    // add tokens
    NSDictionary *headers = @{ @"accept": @"application/json", @"authorization": @"OAuth oauth_consumer_key=\"<add consumer key>\",oauth_token=\"<add oauth token>\",oauth_signature_method=\"HMAC-SHA1\",oauth_timestamp=\"1476131023\",oauth_nonce=\"ZyU7mD\",oauth_version=\"1.0\",oauth_signature=\"<add oauth signature>\"", @"cache-control": @"no-cache"};
    
    //add company id and employee id
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"https://sandbox-quickbooks.api.intuit.com/v3/company/<companyid>/employee/<id>"] cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:10.0];
    
    [request setHTTPMethod:@"GET"];
    [request setAllHTTPHeaderFields:headers];
    
    NSURLSession *session = [NSURLSession sharedSession];
    
    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (error) {
            NSLog(@"%@", error);
        } else {
            
            NSDictionary *response = [NSJSONSerialization JSONObjectWithData:data options:0 error:NULL];
            
            
            NSDictionary *employee=[response objectForKey:@"Employee"];
            NSLog(@"%@", employee);
            
            NSString *displayName = nil;
            
            displayName = [employee objectForKey:@"DisplayName"];
            self.myLabel.text = displayName;
            
        }
        
    }];
    
    [dataTask resume];
}

- (IBAction)getVendor {
    // add tokens
    NSDictionary *headers = @{ @"accept": @"application/json", @"authorization": @"OAuth oauth_consumer_key=\"<add consumer key>\",oauth_token=\"<add oauth token>\",oauth_signature_method=\"HMAC-SHA1\",oauth_timestamp=\"1476131023\",oauth_nonce=\"ZyU7mD\",oauth_version=\"1.0\",oauth_signature=\"<add oauth signature>\"", @"cache-control": @"no-cache"};
    
    //add company id and vendor id
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"https://sandbox-quickbooks.api.intuit.com/v3/company/<companyid>/vendor/<id>"] cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:10.0];
    
    [request setHTTPMethod:@"GET"];
    [request setAllHTTPHeaderFields:headers];
    
    NSURLSession *session = [NSURLSession sharedSession];
    
    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (error) {
            NSLog(@"%@", error);
        } else {
            
            NSDictionary *response = [NSJSONSerialization JSONObjectWithData:data options:0 error:NULL];
            
            
            NSDictionary *vendor=[response objectForKey:@"Vendor"];
            NSLog(@"%@", vendor);
            
            NSString *displayName = nil;
            
            displayName = [vendor objectForKey:@"DisplayName"];
            self.myLabel.text = displayName;
            
        }
        
    }];
    
    [dataTask resume];
}

@end



