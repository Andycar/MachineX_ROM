.class public final Lcom/android/internal/os/SMProviderContract;
.super Ljava/lang/Object;
.source "SMProviderContract.java"


# static fields
.field static final CONTENT_URI:Landroid/net/Uri;

.field static final CONTENT_URI_ALL:Landroid/net/Uri;

.field static final CONTENT_URI_BATTEY_DELTA:Landroid/net/Uri;

.field static final CONTENT_URI_PCONSUMING_PACKAGE:Landroid/net/Uri;

.field public static final KEY_BATTERY_DELTA:Ljava/lang/String; = "batterydelta"

.field public static final KEY_BATTERY_PERC:Ljava/lang/String; = "batterypercent"

.field public static final KEY_LCD:Ljava/lang/String; = "lcd_condition"

.field public static final KEY_NETWORK_USAGE:Ljava/lang/String; = "network_usage"

.field public static final KEY_OFFPOWER:Ljava/lang/String; = "offpower"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final KEY_POWER:Ljava/lang/String; = "power"

.field public static final KEY_SCREEN_USAGE:Ljava/lang/String; = "screen_usage"

.field public static final KEY_TIME:Ljava/lang/String; = "time"

.field public static final KEY_TOTALPOWER:Ljava/lang/String; = "totalpower"

.field public static final KEY_USAGE_TIME:Ljava/lang/String; = "usage_time"

.field public static final PROVIDER_NAME:Ljava/lang/String; = "com.sec.smartmanager.provider"

.field public static final URL:Ljava/lang/String; = "content://com.sec.smartmanager.provider"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-string v0, "content://com.sec.smartmanager.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/SMProviderContract;->CONTENT_URI:Landroid/net/Uri;

    .line 31
    const-string v0, "content://com.sec.smartmanager.provider/*"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/SMProviderContract;->CONTENT_URI_ALL:Landroid/net/Uri;

    .line 33
    const-string v0, "content://com.sec.smartmanager.provider/Battery_delta"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/SMProviderContract;->CONTENT_URI_BATTEY_DELTA:Landroid/net/Uri;

    .line 35
    const-string v0, "content://com.sec.smartmanager.provider/power_consuming_packages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/SMProviderContract;->CONTENT_URI_PCONSUMING_PACKAGE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
