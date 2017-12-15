.class public Lcom/absolute/android/utils/DeviceUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "APS"

.field private static final b:Z = false

.field private static final c:Ljava/lang/String; = "000000000000000"

.field private static final d:Ljava/lang/String; = "Android"

.field private static final e:Ljava/lang/Object;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/Class;

.field private static h:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/absolute/android/utils/DeviceUtil;->e:Ljava/lang/Object;

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/absolute/android/utils/DeviceUtil;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .prologue
    const/16 v6, 0x20

    const/16 v4, 0x14

    const/4 v5, 0x7

    const/4 v2, 0x6

    .line 63
    sget-object v3, Lcom/absolute/android/utils/DeviceUtil;->e:Ljava/lang/Object;

    monitor-enter v3

    .line 65
    :try_start_9
    sget-object v0, Lcom/absolute/android/utils/DeviceUtil;->f:Ljava/lang/String;

    if-nez v0, :cond_74

    .line 67
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_bd

    .line 70
    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 73
    :goto_1e
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getModel()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_ba

    .line 76
    const/4 v1, 0x0

    const/16 v4, 0x14

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 80
    :goto_30
    const-string v0, "1"

    const-string/jumbo v4, "ro.kernel.qemu"

    invoke-static {v4}, Lcom/absolute/android/utils/DeviceUtil;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 81
    invoke-static {p0}, Lcom/absolute/android/utils/DeviceUtil;->getTelephonyId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_4f

    .line 83
    const/4 v4, 0x0

    const/4 v5, 0x7

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 85
    :cond_4f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "~"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/absolute/android/utils/DeviceUtil;->f:Ljava/lang/String;

    .line 97
    :cond_74
    :goto_74
    sget-object v0, Lcom/absolute/android/utils/DeviceUtil;->f:Ljava/lang/String;

    if-nez v0, :cond_7c

    .line 99
    const-string v0, "000000000000000"

    sput-object v0, Lcom/absolute/android/utils/DeviceUtil;->f:Ljava/lang/String;

    .line 106
    :cond_7c
    monitor-exit v3
    :try_end_7d
    .catchall {:try_start_9 .. :try_end_7d} :catchall_b7

    .line 108
    sget-object v0, Lcom/absolute/android/utils/DeviceUtil;->f:Ljava/lang/String;

    return-object v0

    .line 88
    :cond_80
    :try_start_80
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_91

    .line 91
    const/4 v4, 0x0

    const/16 v5, 0x20

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_91
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "~"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/absolute/android/utils/DeviceUtil;->f:Ljava/lang/String;
    :try_end_b6
    .catchall {:try_start_80 .. :try_end_b6} :catchall_b7

    goto :goto_74

    .line 106
    :catchall_b7
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_ba
    move-object v1, v0

    goto/16 :goto_30

    :cond_bd
    move-object v2, v0

    goto/16 :goto_1e
.end method

.method public static getHardwareName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 212
    const-string/jumbo v0, "ro.hardware"

    invoke-static {v0}, Lcom/absolute/android/utils/DeviceUtil;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHardwareRevision()Ljava/lang/String;
    .registers 1

    .prologue
    .line 222
    const-string/jumbo v0, "ro.revision"

    invoke-static {v0}, Lcom/absolute/android/utils/DeviceUtil;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 149
    const/4 v1, 0x0

    .line 152
    :try_start_1
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 153
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_13

    move-result-object v0

    .line 164
    :goto_12
    return-object v0

    .line 154
    :catch_13
    move-exception v0

    .line 155
    const-string v2, "APS"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getMacAddress: exception caught getting wifi MAC address. Exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/absolute/android/utils/ExceptionUtil;->getExceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_12
.end method

.method public static getManufacturer()Ljava/lang/String;
    .registers 1

    .prologue
    .line 176
    const-string/jumbo v0, "ro.product.manufacturer"

    invoke-static {v0}, Lcom/absolute/android/utils/DeviceUtil;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .registers 1

    .prologue
    .line 188
    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Lcom/absolute/android/utils/DeviceUtil;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOSVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 241
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getPlatform()Ljava/lang/String;
    .registers 1

    .prologue
    .line 232
    const-string v0, "Android"

    return-object v0
.end method

.method public static getSerialNumber()Ljava/lang/String;
    .registers 1

    .prologue
    .line 200
    const-string/jumbo v0, "ro.serialno"

    invoke-static {v0}, Lcom/absolute/android/utils/DeviceUtil;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 253
    const-string v1, ""

    .line 254
    sget-object v2, Lcom/absolute/android/utils/DeviceUtil;->e:Ljava/lang/Object;

    monitor-enter v2

    .line 255
    :try_start_5
    sget-object v0, Lcom/absolute/android/utils/DeviceUtil;->h:Ljava/lang/reflect/Method;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_4f

    if-nez v0, :cond_1f

    .line 257
    :try_start_9
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 258
    const-string v3, "get"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/absolute/android/utils/DeviceUtil;->h:Ljava/lang/reflect/Method;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1f} :catch_35
    .catchall {:try_start_9 .. :try_end_1f} :catchall_4f

    .line 265
    :cond_1f
    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/absolute/android/utils/DeviceUtil;->h:Ljava/lang/reflect/Method;
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_4f

    if-eqz v0, :cond_75

    .line 267
    :try_start_23
    sget-object v0, Lcom/absolute/android/utils/DeviceUtil;->h:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/absolute/android/utils/DeviceUtil;->g:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_33} :catch_52
    .catchall {:try_start_23 .. :try_end_33} :catchall_4f

    .line 274
    :goto_33
    :try_start_33
    monitor-exit v2

    .line 275
    return-object v0

    .line 260
    :catch_35
    move-exception v0

    .line 261
    const-string v3, "APS"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getSystemProperty: exception getting android.os.SystemProperties.get() method. Exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/absolute/android/utils/ExceptionUtil;->getExceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_33 .. :try_end_4e} :catchall_4f

    goto :goto_1f

    .line 274
    :catchall_4f
    move-exception v0

    monitor-exit v2

    throw v0

    .line 269
    :catch_52
    move-exception v0

    .line 270
    :try_start_53
    const-string v3, "APS"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getSystemProperty: exception getting invoking android.os.SystemProperties.get() method for propertyName: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/absolute/android/utils/ExceptionUtil;->getExceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catchall {:try_start_53 .. :try_end_75} :catchall_4f

    :cond_75
    move-object v0, v1

    goto :goto_33
.end method

.method public static getTelephonyId(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 120
    const/4 v1, 0x0

    .line 122
    :try_start_1
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 124
    if-eqz v0, :cond_2a

    .line 125
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_11

    move-result-object v0

    .line 137
    :goto_10
    return-object v0

    .line 127
    :catch_11
    move-exception v0

    .line 128
    const-string v2, "APS"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getTelephonyId: exception caught invoking TelephonyManager.getDeviceId(). Exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/absolute/android/utils/ExceptionUtil;->getExceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    move-object v0, v1

    goto :goto_10
.end method
