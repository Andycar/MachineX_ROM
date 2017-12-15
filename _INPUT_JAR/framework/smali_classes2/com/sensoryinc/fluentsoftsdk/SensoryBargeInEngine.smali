.class public Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;
.super Ljava/lang/Object;
.source "SensoryBargeInEngine.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .registers 3

    .prologue
    .line 19
    :try_start_0
    const-string v1, "SensoryBargeInEngine"

    const-string v2, "Trying to load libSensoryBargeInEngine.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    const-string v1, "SensoryBargeInEngine"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 21
    const-string v1, "SensoryBargeInEngine"

    const-string v2, "Loading libSensoryBargeInEngine.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 28
    .local v0, "e":Ljava/lang/Exception;
    :goto_13
    return-void

    .line 24
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_14
    move-exception v0

    .line 26
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "SensoryBargeInEngine"

    const-string v2, "WARNING: Could not load libSensoryBargeInEngine.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method


# virtual methods
.method public asyncPrint(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 13
    return-void
.end method

.method public native phrasespotClose(J)V
.end method

.method public native phrasespotInit(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public native phrasespotPipe(J[SJJ[F)Ljava/lang/String;
.end method
