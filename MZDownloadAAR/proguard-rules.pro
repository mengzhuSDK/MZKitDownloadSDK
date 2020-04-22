##--混淆时不会产生形形色色的类名  属于系统默认配置---##
-dontusemixedcaseclassnames
##--指定不去忽略非公共的库类  属于系统默认配置---##
-dontskipnonpubliclibraryclasses

##--指定不去忽略包可见的库类的成员  -dontskipnonpubliclibraryclassmembers ---##
##--屏蔽warning -ignorewarnings ---##
-ignorewarnings
##--输出生成信息  属于系统默认配置---##
-verbose
##--不混淆指定的文件---##
-dontoptimize
##--不预校验 属于系统默认配置---##
-dontpreverify
-optimizations !code/simplification/arithmetic,!code/simplification/cast,!field/*,!class/merging/*
##--通过指定数量的优化能执行 属于系统默认配置---##
-optimizationpasses 5
##--指定，当执行修改方法或属性的modifer范围---##
-allowaccessmodification
##--泛型类型转换错误---##
-keepattributes Signature
##--反射类型转换错误---##
-keepattributes *Annotation*

##--保护包下边类免被混淆，其中Activity Application Service BroadcastReceiver ContentProvider ILicensingService---##
##保护系统组件
-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class com.android.vending.licensing.ILicensingService
-keep public class * extends android.app.backup.BackupAgent
-keep public class * extends android.preference.Preference
-keep public class * extends android.support.v4.app.Fragment
-keep public class * extends android.app.Fragment
-keep public class * extends android.support.v4.**
-keep public class * extends android.support.annotation.**
-keep public class * extends android.support.v7.**
-dontwarn android.support.design.**
-keep class android.support.design.** { *; }
-keep interface android.support.design.** { *; }
-keep public class android.support.design.R$* { *; }
-keep class net.sourceforge.zbar.** { *; }
-keep public class * extends android.view.View{
    *** get*();
    void set*(***);
    public <init>(android.content.Context);
    public <init>(android.content.Context, android.util.AttributeSet);
    public <init>(android.content.Context, android.util.AttributeSet, int);
}
-assumenosideeffects class android.util.Log {
    public static *** d(...);
    public static *** v(...);
    public static *** i(...);
    public static *** e(...);
    public static *** w(...);
}
##第三方class禁止
-keep class android.content.pm.**{*;}
-keep class org.json.**{*;}
-keep class com.databases.**{*;}
-keep class org.apache.** {*;}
-keep class com.j256.ormlite.** {*;}
-keepattributes Exceptions,InnerClasses,Signature
-keepattributes *Annotation*
-keepattributes SourceFile,LineNumberTable
-keep public class javax.**
-keep public class android.webkit.**
-dontwarn org.apache.commons.**
-keep class android.support.**{ *; }
-keep class android.hardware.**{ *; }
-keep class org.apache.commons.**{ *; }
-dontwarn com.squareup.okhttp3.**
-keep class com.squareup.okhttp3.** { *;}
-dontwarn okio.**

-dontoptimize
-dontpreverify
-dontwarn com.google.**
-keep class com.google.gson.** {*;}
-keep class com.google.protobuf.** {*;}

-dontwarn android.support.graphics.drawable.**
-keep class  android.support.graphics.drawable.** { *; }
-dontwarn org.apache.tools.**
-keep class  org.apache.tools.** { *; }
-dontwarn images.**
-keep class  images.** { *; }
-dontwarn org.apache.tools.ant.launch.**
-keep class  org.apache.tools.ant.launch.** { *; }
-dontwarn android.support.test.espresso.**
-keep class  android.support.test.espresso.** { *; }
-dontwarn dagger.internal.**
-keep class  dagger.internal.** { *; }
-dontwarn com.bumptech.glide.**
-keep class  com.bumptech.glide.** { *; }
-dontwarn com.squareup.**
-keep class  com.squareup.** { *; }
-dontwarn javax.**
-keep class  javax.** { *; }
-dontwarn com.beust.**
-keep class  com.beust.** { *; }
-dontwarn junit.**
-keep class  junit.** { *; }
-dontwarn com.androidadvance.topsnackbar.**
-keep class  com.androidadvance.topsnackbar.** { *; }
-keep class com.mengzhu.sdk.download.** { *; }

-keepclassmembers class rx.internal.util.unsafe.BaseLinkedQueueProducerNodeRef {
    rx.internal.util.atomic.LinkedQueueNode producerNode;
}
-keepclassmembers class rx.internal.util.unsafe.BaseLinkedQueueConsumerNodeRef {
    rx.internal.util.atomic.LinkedQueueNode consumerNode;
}

-dontwarn sun.misc.**
-keepclassmembers class rx.internal.util.unsafe.*ArrayQueue*Field* {
long producerIndex;
long consumerIndex;
}
-keepclassmembers class rx.internal.util.unsafe.BaseLinkedQueueProducerNodeRef {
rx.internal.util.atomic.LinkedQueueNode producerNode;
}
-keepclassmembers class rx.internal.util.unsafe.BaseLinkedQueueConsumerNodeRef {
rx.internal.util.atomic.LinkedQueueNode consumerNode;
}
##--保护Gson特定类---##
-keep class sun.misc.Unsafe { *; }
#-keep class com.google.gson.stream.** { *; }


##--应用程序类将在Gson序列化/逆序列化---##
-keep class com.google.gson.examples.android.model.** { *; }