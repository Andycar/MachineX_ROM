.class final Lcom/android/internal/os/ZygoteInit$1;
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
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 299
    const/4 v1, -0x4

    :try_start_1
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 301
    const-string v1, "Zygote"

    const-string v2, "!@Boot: beginofpreloadResources()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    # invokes: Lcom/android/internal/os/ZygoteInit;->preloadResources()V
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$000()V

    .line 303
    const-string v1, "Zygote"

    const-string v2, "!@Boot: End of preloadResources()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/os/ZygoteInit;->isParallelThreadRunning:Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_19

    .line 306
    :goto_18
    return-void

    .line 305
    :catch_19
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/os/ZygoteInit;->isError:Z

    goto :goto_18
.end method
