#import <Foundation/Foundation.h>

#if __has_attribute(swift_private)
#define AC_SWIFT_PRIVATE __attribute__((swift_private))
#else
#define AC_SWIFT_PRIVATE
#endif

/// The resource bundle ID.
static NSString * const ACBundleID AC_SWIFT_PRIVATE = @"com.tim.lemonRestaurant-ch7.-04-project-ch7";

/// The "Accent" asset catalog color resource.
static NSString * const ACColorNameAccent AC_SWIFT_PRIVATE = @"Accent";

/// The "Background" asset catalog color resource.
static NSString * const ACColorNameBackground AC_SWIFT_PRIVATE = @"Background";

/// The "Primary" asset catalog color resource.
static NSString * const ACColorNamePrimary AC_SWIFT_PRIVATE = @"Primary";

/// The "Surface" asset catalog color resource.
static NSString * const ACColorNameSurface AC_SWIFT_PRIVATE = @"Surface";

#undef AC_SWIFT_PRIVATE
