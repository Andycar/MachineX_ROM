.class Lcom/android/server/MountService$5;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->notifyShareAvailabilityChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1544
    iput-object p1, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    iput-object p3, p0, Lcom/android/server/MountService$5;->val$path:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 1549
    :try_start_0
    const-string v2, "MountService"

    const-string v3, "Disabling UMS after cable disconnect"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    iget-object v2, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    iget-object v3, p0, Lcom/android/server/MountService$5;->val$path:Ljava/lang/String;

    const-string/jumbo v4, "ums"

    const/4 v5, 0x0

    # invokes: Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/MountService;->access$200(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1551
    iget-object v2, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    iget-object v3, p0, Lcom/android/server/MountService$5;->val$path:Ljava/lang/String;

    # invokes: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/MountService;->access$2000(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v1

    .local v1, "rc":I
    if-eqz v1, :cond_36

    .line 1552
    const-string v2, "MountService"

    const-string v3, "Failed to remount {%s} on UMS enabled-disconnect (%d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/MountService$5;->val$path:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_37

    .line 1559
    .end local v1    # "rc":I
    :cond_36
    :goto_36
    return-void

    .line 1556
    :catch_37
    move-exception v0

    .line 1557
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "MountService"

    const-string v3, "Failed to mount media on UMS enabled-disconnect"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36
.end method
