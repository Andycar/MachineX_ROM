.class final Lcom/android/internal/os/ZygoteInit$2;
.super Ljava/lang/Object;
.source "ZygoteInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/ZygoteInit;->preload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 316
    const/4 v2, 0x0

    .line 317
    .local v2, "waitCnt":I
    const/16 v4, 0x2710

    .line 318
    .local v4, "waitTimeMs":I
    const/16 v1, 0x28

    .line 319
    .local v1, "sleepSlot":I
    const/16 v0, 0xfa

    .line 320
    .local v0, "MaxWaitSlot":I
    :goto_7
    sget-boolean v5, Lcom/android/internal/os/ZygoteInit;->isPreloadComplete:Z

    if-nez v5, :cond_2a

    .line 322
    const-wide/16 v6, 0x28

    :try_start_d
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_10} :catch_32

    .line 324
    :goto_10
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "waitCnt":I
    .local v3, "waitCnt":I
    const/16 v5, 0xfa

    if-le v2, v5, :cond_34

    .line 326
    const-string v5, "Zygote"

    const-string v6, "!@TOPrldRstrtZgt"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    .line 329
    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    move v2, v3

    .line 333
    .end local v3    # "waitCnt":I
    .restart local v2    # "waitCnt":I
    :cond_2a
    const-string v5, "Zygote"

    const-string v6, "Monitor End"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-void

    .line 323
    :catch_32
    move-exception v5

    goto :goto_10

    .end local v2    # "waitCnt":I
    .restart local v3    # "waitCnt":I
    :cond_34
    move v2, v3

    .end local v3    # "waitCnt":I
    .restart local v2    # "waitCnt":I
    goto :goto_7
.end method
