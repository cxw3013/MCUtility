//
//  MCRSAHelper.m
//  Pods
//
//  Created by changxiaowei on 2017/4/21.
//
//

#import "MCRSAHelper.h"
#import "MCRSAManger.h"

@implementation MCRSAHelper

+ (NSString *)rsaEncryptString:(NSString *)content publicKeyPath:(NSString *)publicKeyPath {
    NSData *derData = [[NSData alloc] initWithContentsOfFile:publicKeyPath];
    NSString *publicKey = [[NSString alloc] initWithData:derData encoding:NSUTF8StringEncoding];
    NSString *encWithPubKey = [MCRSAManger encryptString:content publicKey:publicKey];
    return encWithPubKey;
}

+ (NSString *)rsaDecryptString:(NSString *)content privateKeyPath:(NSString *)privateKeyPath {
    NSData *privateData = [[NSData alloc] initWithContentsOfFile:privateKeyPath];
    NSString *privateKey = [[NSString alloc] initWithData:privateData encoding:NSUTF8StringEncoding];
    NSString *decWithPrivKey = [MCRSAManger decryptString:content privateKey:privateKey];
    return decWithPrivKey;
}

@end
