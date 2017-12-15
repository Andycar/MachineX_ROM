.class public final Lcom/samsung/android/quickconnect/QuickConnectManager;
.super Ljava/lang/Object;
.source "QuickConnectManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;,
        Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    }
.end annotation


# static fields
.field public static final DO_QUICK_CONNECT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "QuickConnectManager"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private final mListenerDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field mQuickConnectService:Lcom/samsung/android/quickconnect/IQuickConnectManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/quickconnect/IQuickConnectManager;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quickconnectservice"    # Lcom/samsung/android/quickconnect/IQuickConnectManager;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mListenerDelegates:Ljava/util/ArrayList;

    .line 55
    sput-object p1, Lcom/samsung/android/quickconnect/QuickConnectManager;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mQuickConnectService:Lcom/samsung/android/quickconnect/IQuickConnectManager;

    .line 57
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public registerListener(Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;)V
    .registers 12
    .param p1, "listener"    # Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    .prologue
    .line 79
    if-nez p1, :cond_b

    .line 80
    const-string v5, "QuickConnectManager"

    const-string/jumbo v6, "registerListener : listener is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_a
    return-void

    .line 83
    :cond_b
    const-string v5, "QuickConnectManager"

    const-string/jumbo v6, "registerListener"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v6, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v6

    .line 85
    const/4 v3, 0x0

    .line 87
    .local v3, "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    :try_start_17
    iget-object v5, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;>;"
    :cond_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_73

    .line 88
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;

    .line 89
    .local v0, "delegate":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    invoke-virtual {v0}, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->getListener()Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_17 .. :try_end_30} :catchall_62

    move-result v5

    if-eqz v5, :cond_1d

    .line 90
    move-object v3, v0

    move-object v4, v3

    .line 95
    .end local v0    # "delegate":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    .end local v3    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    .local v4, "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    :goto_35
    if-nez v4, :cond_71

    .line 96
    :try_start_37
    new-instance v3, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;

    const/4 v5, 0x0

    invoke-direct {v3, p1, v5}, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;-><init>(Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;Landroid/os/Handler;)V
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_6e

    .line 97
    .end local v4    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    .restart local v3    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    :try_start_3d
    iget-object v5, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_62

    .line 100
    :goto_42
    :try_start_42
    iget-object v5, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mQuickConnectService:Lcom/samsung/android/quickconnect/IQuickConnectManager;

    if-eqz v5, :cond_60

    .line 101
    iget-object v5, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mQuickConnectService:Lcom/samsung/android/quickconnect/IQuickConnectManager;

    new-instance v7, Landroid/content/ComponentName;

    sget-object v8, Lcom/samsung/android/quickconnect/QuickConnectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/quickconnect/QuickConnectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v3, v7}, Lcom/samsung/android/quickconnect/IQuickConnectManager;->registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_60} :catch_65
    .catchall {:try_start_42 .. :try_end_60} :catchall_62

    .line 108
    :cond_60
    :goto_60
    :try_start_60
    monitor-exit v6

    goto :goto_a

    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;>;"
    :catchall_62
    move-exception v5

    :goto_63
    monitor-exit v6
    :try_end_64
    .catchall {:try_start_60 .. :try_end_64} :catchall_62

    throw v5

    .line 105
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;>;"
    :catch_65
    move-exception v1

    .line 106
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_66
    const-string v5, "QuickConnectManager"

    const-string v7, "RemoteException in registerListener: "

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6d
    .catchall {:try_start_66 .. :try_end_6d} :catchall_62

    goto :goto_60

    .line 108
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    .restart local v4    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    :catchall_6e
    move-exception v5

    move-object v3, v4

    .end local v4    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    .restart local v3    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    goto :goto_63

    .end local v3    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    .restart local v4    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    :cond_71
    move-object v3, v4

    .end local v4    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    .restart local v3    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    goto :goto_42

    :cond_73
    move-object v4, v3

    .end local v3    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    .restart local v4    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    goto :goto_35
.end method

.method public terminate()V
    .registers 1

    .prologue
    .line 65
    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;)V
    .registers 9
    .param p1, "listener"    # Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    .prologue
    .line 117
    const-string v4, "QuickConnectManager"

    const-string/jumbo v5, "unregisterListener!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    if-nez p1, :cond_13

    .line 120
    const-string v4, "QuickConnectManager"

    const-string/jumbo v5, "unregisterListener : listener is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :goto_12
    return-void

    .line 124
    :cond_13
    iget-object v5, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v5

    .line 125
    const/4 v3, 0x0

    .line 127
    .local v3, "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    :try_start_17
    iget-object v4, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;>;"
    :cond_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 128
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;

    .line 129
    .local v0, "delegate":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    invoke-virtual {v0}, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->getListener()Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 130
    move-object v3, v0

    .line 135
    .end local v0    # "delegate":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    :cond_34
    if-nez v3, :cond_43

    .line 136
    const-string v4, "QuickConnectManager"

    const-string/jumbo v6, "quickconnectListener is null"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    monitor-exit v5

    goto :goto_12

    .line 153
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;>;"
    :catchall_40
    move-exception v4

    monitor-exit v5
    :try_end_42
    .catchall {:try_start_17 .. :try_end_42} :catchall_40

    throw v4

    .line 141
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;>;"
    :cond_43
    :try_start_43
    iget-object v4, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mQuickConnectService:Lcom/samsung/android/quickconnect/IQuickConnectManager;

    if-eqz v4, :cond_62

    .line 142
    const-string v4, "QuickConnectManager"

    const-string v6, "mQuickConnectService != null"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v4, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mQuickConnectService:Lcom/samsung/android/quickconnect/IQuickConnectManager;

    invoke-interface {v4, v3}, Lcom/samsung/android/quickconnect/IQuickConnectManager;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 144
    iget-object v4, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 145
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 146
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->mListener:Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_61} :catch_64
    .catchall {:try_start_43 .. :try_end_61} :catchall_40

    .line 147
    const/4 v3, 0x0

    .line 153
    :cond_62
    :goto_62
    :try_start_62
    monitor-exit v5

    goto :goto_12

    .line 150
    :catch_64
    move-exception v1

    .line 151
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "QuickConnectManager"

    const-string v6, "RemoteException in unregisterListener: "

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6c
    .catchall {:try_start_62 .. :try_end_6c} :catchall_40

    goto :goto_62
.end method
