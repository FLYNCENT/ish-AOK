//
//  UIDevice.m
//  iSH-AOK
//
//  Created by Michael Miller on 9/10/23.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

char* printUIDevice(void);

@interface MyDeviceUtil : NSObject
+ (NSString*) getAllDeviceInfo;
@end

@implementation MyDeviceUtil

+ (NSString*) getAllDeviceInfo {
    UIDevice *device = [UIDevice currentDevice];
    NSMutableString *result = [[NSMutableString alloc] init];
    
    [result appendFormat:@"Model: %@\n", device.name];
//    [result appendFormat:@"Model: %@\n", device.model];
//    [result appendFormat:@"Localized Model: %@\n", device.localizedModel];
    [result appendFormat:@"OS Name: %@\n", device.systemName];
    [result appendFormat:@"OS Version: %@\n", device.systemVersion];
//    [result appendFormat:@"Identifier For Vendor: %@\n", device.identifierForVendor.UUIDString];
//    [result appendFormat:@"Multitasking Supported: %@\n", device.isMultitaskingSupported ? @"YES" : @"NO"];
//    [result appendFormat:@"User Interface Idiom: %ld\n", (long)device.userInterfaceIdiom];
//    [result appendFormat:@"Battery Monitoring Enabled: %@\n", device.isBatteryMonitoringEnabled ? @"YES" : @"NO"];
//    [result appendFormat:@"Battery State: %ld\n", (long)device.batteryState];
//    [result appendFormat:@"Battery Level: %f\n", device.batteryLevel];
//    [result appendFormat:@"Proximity Monitoring Enabled: %@\n", device.isProximityMonitoringEnabled ? @"YES" : @"NO"];
//    [result appendFormat:@"Proximity State: %@\n", device.proximityState ? @"YES" : @"NO"];
    
    return result;
}

@end

char* printUIDevice(void) {
    NSString *info = [MyDeviceUtil getAllDeviceInfo];
    const char *cString = [info UTF8String];
    return strdup(cString);
}
