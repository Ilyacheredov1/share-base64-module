
#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(ShareBase64Module, NSObject)

RCT_EXTERN_METHOD(sharePdf: (NSString)base64String withNameFile:(NSString)nameFile)

@end
