//
//  Generated file. Do not edit.
//

#import "GeneratedPluginRegistrant.h"

#if __has_include(<bluetooth_print/BluetoothPrintPlugin.h>)
#import <bluetooth_print/BluetoothPrintPlugin.h>
#else
@import bluetooth_print;
#endif

#if __has_include(<path_provider/FLTPathProviderPlugin.h>)
#import <path_provider/FLTPathProviderPlugin.h>
#else
@import path_provider;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [BluetoothPrintPlugin registerWithRegistrar:[registry registrarForPlugin:@"BluetoothPrintPlugin"]];
  [FLTPathProviderPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTPathProviderPlugin"]];
}

@end
