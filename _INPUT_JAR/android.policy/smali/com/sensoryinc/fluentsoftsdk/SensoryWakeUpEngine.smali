.class public Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;
.super Ljava/lang/Object;
.source "SensoryWakeUpEngine.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .registers 3

    .prologue
    .line 21
    :try_start_0
    const-string v1, "SensoryWakeUpEngine"

    const-string v2, "Trying to load libSensoryWakeUpEngine.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    const-string v1, "SensoryWakeUpEngine"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 23
    const-string v1, "SensoryWakeUpEngine"

    const-string v2, "Loading libSensoryWakeUpEngine.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 30
    .local v0, "e":Ljava/lang/Exception;
    :goto_13
    return-void

    .line 26
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_14
    move-exception v0

    .line 28
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "SensoryWakeUpEngine"

    const-string v2, "WARNING: Could not load libSensoryWakeUpEngine.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method


# virtual methods
.method public GetFWVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    invoke-static {}, Lcom/samsung/voiceshell/WakeUpUtils;->GetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asyncPrint(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 15
    return-void
.end method

.method public native phrasespotClose(J)V
.end method

.method public native phrasespotInit(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public native phrasespotPipe(J[SJJ)Ljava/lang/String;
.end method
