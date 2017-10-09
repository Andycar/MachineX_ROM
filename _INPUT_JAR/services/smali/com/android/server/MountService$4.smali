.class Lcom/android/server/MountService$4;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
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
    .line 1096
    iput-object p1, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    iput-object p3, p0, Lcom/android/server/MountService$4;->val$path:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    .line 1105
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v6, 0x6

    if-ge v3, v6, :cond_4e

    .line 1106
    const/4 v6, 0x0

    :try_start_5
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1107
    .local v4, "isPending":Ljava/lang/Boolean;
    iget-object v6, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumePendingStates:Ljava/util/LinkedHashMap;
    invoke-static {v6}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;)Ljava/util/LinkedHashMap;

    move-result-object v7

    monitor-enter v7
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_45

    .line 1108
    :try_start_10
    iget-object v6, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumePendingStates:Ljava/util/LinkedHashMap;
    invoke-static {v6}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;)Ljava/util/LinkedHashMap;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/MountService$4;->val$path:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/Boolean;

    move-object v4, v0

    .line 1109
    monitor-exit v7
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_42

    .line 1110
    :try_start_21
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 1111
    const-string v6, "MountService"

    const-string v7, "\'%s\' waiting over pending state "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/MountService$4;->val$path:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3f} :catch_45

    .line 1105
    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1109
    :catchall_42
    move-exception v6

    :try_start_43
    monitor-exit v7
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    :try_start_44
    throw v6
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_45} :catch_45

    .line 1120
    .end local v4    # "isPending":Ljava/lang/Boolean;
    :catch_45
    move-exception v2

    .line 1121
    .local v2, "ex":Ljava/lang/Exception;
    const-string v6, "MountService"

    const-string v7, "Failed to mount media on insertion"

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1123
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_4d
    :goto_4d
    return-void

    .line 1117
    :cond_4e
    :try_start_4e
    iget-object v6, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    iget-object v7, p0, Lcom/android/server/MountService$4;->val$path:Ljava/lang/String;

    # invokes: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v6, v7}, Lcom/android/server/MountService;->access$2000(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v5

    .local v5, "rc":I
    if-eqz v5, :cond_4d

    .line 1118
    const-string v6, "MountService"

    const-string v7, "Insertion mount failed (%d)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_6d} :catch_45

    goto :goto_4d
.end method
