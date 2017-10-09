.class public Lcom/android/server/QuickConnectService;
.super Lcom/samsung/android/quickconnect/IQuickConnectManager$Stub;
.source "QuickConnectService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    }
.end annotation


# static fields
.field private static final START_QUICKCONNECT:Ljava/lang/String; = "com.samsung.android.sconnect.START"

.field private static final TAG:Ljava/lang/String; = "QuickConnectService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/samsung/android/quickconnect/IQuickConnectManager$Stub;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/QuickConnectService;->mContext:Landroid/content/Context;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/QuickConnectService;->mListener:Ljava/util/ArrayList;

    .line 32
    iput-object p1, p0, Lcom/android/server/QuickConnectService;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/QuickConnectService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/QuickConnectService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/server/QuickConnectService;->mListener:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getTopActivityComponentName()Landroid/content/ComponentName;
    .registers 6

    .prologue
    .line 139
    iget-object v3, p0, Lcom/android/server/QuickConnectService;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 140
    .local v1, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 141
    .local v0, "Info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 142
    .local v2, "topActivity":Landroid/content/ComponentName;
    return-object v2
.end method


# virtual methods
.method public registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .registers 11
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 37
    iget-object v7, p0, Lcom/android/server/QuickConnectService;->mListener:Ljava/util/ArrayList;

    monitor-enter v7

    .line 38
    if-nez p1, :cond_f

    .line 39
    :try_start_6
    const-string v2, "QuickConnectService"

    const-string v3, "BezelManagerService - registerCallback >>> binder is null!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    monitor-exit v7

    .line 61
    :goto_e
    return v1

    .line 41
    :cond_f
    if-nez p2, :cond_71

    .line 42
    const-string v2, "QuickConnectService"

    const-string v3, "BezelManagerService - registerCallback >>> componentName is null!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :goto_18
    iget-object v2, p0, Lcom/android/server/QuickConnectService;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1e
    :goto_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_96

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;

    .line 47
    .local v0, "listener":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    if-eqz v0, :cond_8e

    .line 48
    const-string v2, "QuickConnectService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BezelManagerService - registerCallback >>> Compare listener : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v2, v0, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 50
    const-string v2, "QuickConnectService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BezelManagerService - registerCallback >>> binder equal listener token : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    monitor-exit v7

    goto :goto_e

    .line 62
    .end local v0    # "listener":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    .end local v6    # "i$":Ljava/util/Iterator;
    :catchall_6e
    move-exception v1

    monitor-exit v7
    :try_end_70
    .catchall {:try_start_6 .. :try_end_70} :catchall_6e

    throw v1

    .line 44
    :cond_71
    :try_start_71
    const-string v2, "QuickConnectService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BezelManagerService - registerCallback >>> Added listener ClassName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 54
    .restart local v0    # "listener":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_8e
    const-string v2, "QuickConnectService"

    const-string v3, "BezelManagerService - registerCallback >>> Compare listener is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 57
    .end local v0    # "listener":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    :cond_96
    const/4 v0, 0x0

    .line 58
    .restart local v0    # "listener":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    new-instance v0, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;

    .end local v0    # "listener":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;-><init>(Lcom/android/server/QuickConnectService;Landroid/os/IBinder;Landroid/content/ComponentName;II)V

    .line 59
    .restart local v0    # "listener":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 60
    iget-object v1, p0, Lcom/android/server/QuickConnectService;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    const/4 v1, 0x1

    monitor-exit v7
    :try_end_b2
    .catchall {:try_start_71 .. :try_end_b2} :catchall_6e

    goto/16 :goto_e
.end method

.method public selectedItemCallback()V
    .registers 9

    .prologue
    .line 148
    const-string/jumbo v4, "true"

    const-string v5, "dev.knoxapp.running"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 150
    const-string v4, "QuickConnectService"

    const-string v5, "Preventing launch of QuickConnect from KNOX"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_18
    return-void

    .line 153
    :cond_19
    iget-object v5, p0, Lcom/android/server/QuickConnectService;->mListener:Ljava/util/ArrayList;

    monitor-enter v5

    .line 154
    :try_start_1c
    invoke-direct {p0}, Lcom/android/server/QuickConnectService;->getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 155
    .local v3, "topComponentName":Landroid/content/ComponentName;
    const-string v4, "QuickConnectService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BezelManagerService - topComponentName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v4, p0, Lcom/android/server/QuickConnectService;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;

    .line 157
    .local v1, "listener":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    const-string v4, "QuickConnectService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "selectedItemCallback : List "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v1, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 159
    const-string v4, "QuickConnectService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BezelManagerService - selectedItemCallback : Start "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {v1}, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->callback()V

    .line 161
    monitor-exit v5

    goto/16 :goto_18

    .line 169
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    .end local v3    # "topComponentName":Landroid/content/ComponentName;
    :catchall_a1
    move-exception v4

    monitor-exit v5
    :try_end_a3
    .catchall {:try_start_1c .. :try_end_a3} :catchall_a1

    throw v4

    .line 164
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v3    # "topComponentName":Landroid/content/ComponentName;
    :cond_a4
    :try_start_a4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 165
    .local v2, "sConnectIntent":Landroid/content/Intent;
    const-string v4, "com.samsung.android.sconnect"

    const-string v6, "com.samsung.android.sconnect.central.ui.SconnectDisplay"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const/high16 v4, 0x14000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 167
    iget-object v4, p0, Lcom/android/server/QuickConnectService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 168
    const-string v4, "QuickConnectService"

    const-string v6, "BezelManagerService - selectedItemCallback : Start S-Connect!!!"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    monitor-exit v5
    :try_end_c4
    .catchall {:try_start_a4 .. :try_end_c4} :catchall_a1

    goto/16 :goto_18
.end method

.method public unregisterCallback(Landroid/os/IBinder;)Z
    .registers 10
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 68
    iget-object v4, p0, Lcom/android/server/QuickConnectService;->mListener:Ljava/util/ArrayList;

    monitor-enter v4

    .line 69
    if-nez p1, :cond_f

    .line 70
    :try_start_6
    const-string v5, "QuickConnectService"

    const-string v6, "BezelManagerService - unregisterCallback >>> binder is null!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    monitor-exit v4

    .line 97
    :goto_e
    return v3

    .line 73
    :cond_f
    const-string v5, "QuickConnectService"

    const-string v6, "BezelManagerService - unregisterCallback"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v2, 0x0

    .line 75
    .local v2, "listener":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    iget-object v5, p0, Lcom/android/server/QuickConnectService;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1d
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;

    .line 76
    .local v1, "l":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    if-eqz v1, :cond_53

    .line 77
    const-string v5, "QuickConnectService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BezelManagerService - unregisterCallback >>> Compare listener : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v5, v1, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 79
    move-object v2, v1

    goto :goto_1d

    .line 82
    :cond_53
    const-string v5, "QuickConnectService"

    const-string v6, "BezelManagerService - unregisterCallback >>> Compare listener is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 98
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    .end local v2    # "listener":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    :catchall_5b
    move-exception v3

    monitor-exit v4
    :try_end_5d
    .catchall {:try_start_6 .. :try_end_5d} :catchall_5b

    throw v3

    .line 85
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "listener":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    :cond_5e
    if-nez v2, :cond_69

    .line 86
    :try_start_60
    const-string v5, "QuickConnectService"

    const-string v6, "BezelManagerService - unregisterCallback >>> listener is null!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    monitor-exit v4

    goto :goto_e

    .line 89
    :cond_69
    iget-object v3, p0, Lcom/android/server/QuickConnectService;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_94

    .line 90
    const-string v3, "QuickConnectService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BezelManagerService - unregisterCallback >>> Removed listener ClassName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v3, p0, Lcom/android/server/QuickConnectService;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 93
    :cond_94
    if-eqz v2, :cond_9a

    .line 94
    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 96
    :cond_9a
    iget-object v3, p0, Lcom/android/server/QuickConnectService;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 97
    const/4 v3, 0x1

    monitor-exit v4
    :try_end_a1
    .catchall {:try_start_60 .. :try_end_a1} :catchall_5b

    goto/16 :goto_e
.end method
