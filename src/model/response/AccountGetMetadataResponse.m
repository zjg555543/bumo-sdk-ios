//
//  AccountGetMetadataResponse.m
//  test-sdk-ios
//
//  Created by dxl on 2018/8/3.
//  Copyright © 2018 dxl. All rights reserved.
//

#import "AccountGetMetadataResponse.h"
#import "YYModelClass.h"

@implementation AccountGetMetadataResponse
+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{@"result" : AccountGetMetadataResult.class};
}
-(void)buildResponse:(int32_t)errorCode :(AccountGetMetadataResult *)result {
    self.errorCode = errorCode;
    self.errorDesc = [SDKError getDescription:errorCode];
    self.result = result;
}
-(void)buildResponse:(int32_t)errorCode : (NSString *)errorDesc :(AccountGetMetadataResult *)result {
    self.errorCode = errorCode;
    self.errorDesc = errorDesc;
    self.result = result;
}
@end
