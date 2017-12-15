.class public Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;
.super Ljava/lang/Object;
.source "MMUIRecognizer.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .registers 3

    .prologue
    .line 24
    :try_start_0
    const-string v1, "MMUIRecognizer"

    const-string v2, "Trying to load libsasr-jni.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const-string/jumbo v1, "sasr-jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 26
    const-string v1, "MMUIRecognizer"

    const-string v2, "Loading libsasr-jni.so done"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    :goto_14
    return-void

    .line 28
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_15
    move-exception v0

    .line 30
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "MMUIRecognizer"

    const-string v2, "WARNING: Could not load libsasr-jni.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method


# virtual methods
.method public native RECThread([S)I
.end method

.method public native ResetFx()I
.end method

.method public native SASRClose()I
.end method

.method public native SASRDoRecognition([F[Ljava/lang/String;Ljava/lang/String;[S[Ljava/lang/String;)I
.end method

.method public native SASRInit(Ljava/lang/String;)I
.end method

.method public native SASRLoadModel(Ljava/lang/String;)I
.end method

.method public native SASRReset()I
.end method

.method public native SaveChnUpdate(Ljava/lang/String;)I
.end method

.method public native SetSRLanguage(I)I
.end method
