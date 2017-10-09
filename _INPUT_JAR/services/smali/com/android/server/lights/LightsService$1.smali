.class Lcom/android/server/lights/LightsService$1;
.super Landroid/os/IHardwareService$Stub;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final FLASHLIGHT_FILE:Ljava/lang/String; = "/sys/class/leds/spotlight/brightness"


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/lights/LightsService;)V
    .registers 2

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Landroid/os/IHardwareService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlashlightEnabled()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 307
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    const-string v4, "/sys/class/leds/spotlight/brightness"

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 308
    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v2

    .line 309
    .local v2, "result":I
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_15

    .line 310
    const/16 v4, 0x30

    if-eq v2, v4, :cond_14

    const/4 v3, 0x1

    .line 312
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "result":I
    :cond_14
    :goto_14
    return v3

    .line 311
    :catch_15
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_14
.end method

.method public setFlashlightEnabled(Z)V
    .registers 7
    .param p1, "on"    # Z

    .prologue
    .line 317
    iget-object v3, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-virtual {v3}, Lcom/android/server/lights/LightsService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 318
    .local v1, "context":Landroid/content/Context;
    const-string v3, "android.permission.FLASHLIGHT"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1e

    const-string v3, "android.permission.HARDWARE_TEST"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1e

    .line 322
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FLASHLIGHT or HARDWARE_TEST permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 325
    :cond_1e
    :try_start_1e
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/sys/class/leds/spotlight/brightness"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 326
    .local v2, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x2

    new-array v0, v3, [B

    .line 327
    .local v0, "bytes":[B
    const/4 v4, 0x0

    if-eqz p1, :cond_3c

    const/16 v3, 0x31

    :goto_2d
    int-to-byte v3, v3

    aput-byte v3, v0, v4

    .line 328
    const/4 v3, 0x1

    const/16 v4, 0xa

    aput-byte v4, v0, v3

    .line 329
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 330
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_3b} :catch_3f

    .line 334
    .end local v0    # "bytes":[B
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_3b
    return-void

    .line 327
    .restart local v0    # "bytes":[B
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_3c
    const/16 v3, 0x30

    goto :goto_2d

    .line 331
    .end local v0    # "bytes":[B
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_3f
    move-exception v3

    goto :goto_3b
.end method
