.class public Landroid/net/wifi/WifiConfiguration$KeyMgmt;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyMgmt"
.end annotation


# static fields
.field public static final CCKM:I = 0x7

.field public static final FT_EAP:I = 0x9

.field public static final FT_PSK:I = 0x8

.field public static final IEEE8021X:I = 0x3

.field public static final NONE:I = 0x0

.field public static final WAPI_CERT:I = 0x6

.field public static final WAPI_PSK:I = 0x5

.field public static final WPA2_PSK:I = 0x4

.field public static final WPA_EAP:I = 0x2

.field public static final WPA_PSK:I = 0x1

.field public static final strings:[Ljava/lang/String;

.field public static final varName:Ljava/lang/String; = "key_mgmt"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 170
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NONE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "WPA_PSK"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "WPA_EAP"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "IEEE8021X"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "WPA2_PSK"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "WAPI_PSK"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "WAPI_CERT"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CCKM"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "FT_PSK"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "FT_EAP"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
