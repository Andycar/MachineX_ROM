.class public Landroid/app/trust/TrustManager;
.super Ljava/lang/Object;
.source "TrustManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/trust/TrustManager$TrustListener;
    }
.end annotation


# static fields
.field private static final DATA_INITIATED_BY_USER:Ljava/lang/String; = "initiatedByUser"

.field private static final MSG_TRUST_CHANGED:I = 0x1

.field private static final MSG_TRUST_MANAGED_CHANGED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TrustManager"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mService:Landroid/app/trust/ITrustManager;

.field private final mTrustListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/app/trust/TrustManager$TrustListener;",
            "Landroid/app/trust/ITrustListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "b"    # Landroid/os/IBinder;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Landroid/app/trust/TrustManager$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/trust/TrustManager$2;-><init>(Landroid/app/trust/TrustManager;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/trust/TrustManager;->mHandler:Landroid/os/Handler;

    .line 43
    invoke-static {p1}, Landroid/app/trust/ITrustManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    .line 44
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/trust/TrustManager;->mTrustListeners:Landroid/util/ArrayMap;

    .line 45
    return-void
.end method

.method static synthetic access$000(Landroid/app/trust/TrustManager;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Landroid/app/trust/TrustManager;

    .prologue
    .line 31
    iget-object v0, p0, Landroid/app/trust/TrustManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private onError(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 138
    const-string v0, "TrustManager"

    const-string v1, "Error while calling TrustManagerService"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    return-void
.end method


# virtual methods
.method public registerTrustListener(Landroid/app/trust/TrustManager$TrustListener;)V
    .registers 5
    .param p1, "trustListener"    # Landroid/app/trust/TrustManager$TrustListener;

    .prologue
    .line 97
    :try_start_0
    new-instance v1, Landroid/app/trust/TrustManager$1;

    invoke-direct {v1, p0, p1}, Landroid/app/trust/TrustManager$1;-><init>(Landroid/app/trust/TrustManager;Landroid/app/trust/TrustManager$TrustListener;)V

    .line 114
    .local v1, "iTrustListener":Landroid/app/trust/ITrustListener$Stub;
    iget-object v2, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v2, v1}, Landroid/app/trust/ITrustManager;->registerTrustListener(Landroid/app/trust/ITrustListener;)V

    .line 115
    iget-object v2, p0, Landroid/app/trust/TrustManager;->mTrustListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 119
    .end local v1    # "iTrustListener":Landroid/app/trust/ITrustListener$Stub;
    :goto_f
    return-void

    .line 116
    :catch_10
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/app/trust/TrustManager;->onError(Ljava/lang/Exception;)V

    goto :goto_f
.end method

.method public reportEnabledTrustAgentsChanged(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 69
    :try_start_0
    iget-object v1, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v1, p1}, Landroid/app/trust/ITrustManager;->reportEnabledTrustAgentsChanged(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 73
    :goto_5
    return-void

    .line 70
    :catch_6
    move-exception v0

    .line 71
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/app/trust/TrustManager;->onError(Ljava/lang/Exception;)V

    goto :goto_5
.end method

.method public reportRequireCredentialEntry(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 84
    :try_start_0
    iget-object v1, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v1, p1}, Landroid/app/trust/ITrustManager;->reportRequireCredentialEntry(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 88
    :goto_5
    return-void

    .line 85
    :catch_6
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/app/trust/TrustManager;->onError(Ljava/lang/Exception;)V

    goto :goto_5
.end method

.method public reportUnlockAttempt(ZI)V
    .registers 5
    .param p1, "successful"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 56
    :try_start_0
    iget-object v1, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v1, p1, p2}, Landroid/app/trust/ITrustManager;->reportUnlockAttempt(ZI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 60
    :goto_5
    return-void

    .line 57
    :catch_6
    move-exception v0

    .line 58
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/app/trust/TrustManager;->onError(Ljava/lang/Exception;)V

    goto :goto_5
.end method

.method public unregisterTrustListener(Landroid/app/trust/TrustManager$TrustListener;)V
    .registers 5
    .param p1, "trustListener"    # Landroid/app/trust/TrustManager$TrustListener;

    .prologue
    .line 127
    iget-object v2, p0, Landroid/app/trust/TrustManager;->mTrustListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/ITrustListener;

    .line 128
    .local v1, "iTrustListener":Landroid/app/trust/ITrustListener;
    if-eqz v1, :cond_f

    .line 130
    :try_start_a
    iget-object v2, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v2, v1}, Landroid/app/trust/ITrustManager;->unregisterTrustListener(Landroid/app/trust/ITrustListener;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 135
    :cond_f
    :goto_f
    return-void

    .line 131
    :catch_10
    move-exception v0

    .line 132
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/app/trust/TrustManager;->onError(Ljava/lang/Exception;)V

    goto :goto_f
.end method
