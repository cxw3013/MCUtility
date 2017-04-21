//
//  MCRSAHelper.h
//  Pods
//
//  Created by changxiaowei on 2017/4/21.
//
//

#import <Foundation/Foundation.h>

@interface MCRSAHelper : NSObject

/**
 *  rsa加密
 *
 *  @param content 要加密的内容
 *
 *  @return 返回加密的字符串
 *  exam:
 *   NSString *publicKeyPath = [[NSBundle mainBundle] pathForResource:@"public_key_pkcs#8" ofType:@"pem"];
 */
+(NSString *)rsaEncryptString:(NSString *)content publicKeyPath:(NSString *)publicKeyPath;


/**
 *  rsa解密
 *
 *  @param content 要解密的内容
 *
 *  @return 返回解密后的字符串
 *  exam:
 *   NSString *privateKeyPath = [[NSBundle mainBundle] pathForResource:@"private_key_pkcs#8" ofType:@"pem"];
 */
+(NSString *)rsaDecryptString:(NSString *)content privateKeyPath:(NSString *)privateKeyPath;

@end
