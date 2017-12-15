.class public final Landroid/media/RemoteDisplay;
.super Ljava/lang/Object;
.source "RemoteDisplay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RemoteDisplay$Listener;
    }
.end annotation


# static fields
.field public static final DISPLAY_ERROR_CONNECTION_DROPPED:I = 0x2

.field public static final DISPLAY_ERROR_UNKOWN:I = 0x1

.field public static final DISPLAY_FLAG_SECURE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RemoteDisplay_Java"

.field private static mCurrentRemoteDisplayId:I


# instance fields
.field private final mGuard:Ldalvik/system/CloseGuard;

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/media/RemoteDisplay$Listener;

.field private mPtr:J

.field private mRemoteDisplayCallback:Landroid/media/RemoteDisplayCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const/4 v0, -0x1

    sput v0, Landroid/media/RemoteDisplay;->mCurrentRemoteDisplayId:I

    return-void
.end method

.method private constructor <init>(Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/RemoteDisplay$Listener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RemoteDisplay;->mGuard:Ldalvik/system/CloseGuard;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/RemoteDisplay;->mRemoteDisplayCallback:Landroid/media/RemoteDisplayCallback;

    .line 65
    iput-object p1, p0, Landroid/media/RemoteDisplay;->mListener:Landroid/media/RemoteDisplay$Listener;

    .line 66
    iput-object p2, p0, Landroid/media/RemoteDisplay;->mHandler:Landroid/os/Handler;

    .line 67
    new-instance v0, Landroid/media/RemoteDisplay$1;

    invoke-direct {v0, p0}, Landroid/media/RemoteDisplay$1;-><init>(Landroid/media/RemoteDisplay;)V

    invoke-static {v0}, Landroid/media/RemoteDisplayCallback;->setListener(Landroid/media/RemoteDisplayCallback$RemoteDisplayListener;)Landroid/media/RemoteDisplayCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RemoteDisplay;->mRemoteDisplayCallback:Landroid/media/RemoteDisplayCallback;

    .line 80
    return-void
.end method

.method static synthetic access$000(Landroid/media/RemoteDisplay;)Landroid/media/RemoteDisplay$Listener;
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteDisplay;

    .prologue
    .line 32
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mListener:Landroid/media/RemoteDisplay$Listener;

    return-object v0
.end method

.method private cbFromNativeWFD(ILjava/lang/String;)V
    .registers 5
    .param p1, "msg"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 243
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/RemoteDisplay$5;

    invoke-direct {v1, p0}, Landroid/media/RemoteDisplay$5;-><init>(Landroid/media/RemoteDisplay;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 249
    return-void
.end method

.method private dispose(Z)V
    .registers 6
    .param p1, "finalized"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 173
    iget-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1d

    .line 174
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_13

    .line 175
    if-eqz p1, :cond_1e

    .line 176
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 183
    :cond_13
    :goto_13
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mRemoteDisplayCallback:Landroid/media/RemoteDisplayCallback;

    invoke-virtual {v0, p1}, Landroid/media/RemoteDisplayCallback;->dispose(Z)V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/RemoteDisplay;->mRemoteDisplayCallback:Landroid/media/RemoteDisplayCallback;

    .line 185
    iput-wide v2, p0, Landroid/media/RemoteDisplay;->mPtr:J

    .line 187
    :cond_1d
    return-void

    .line 178
    :cond_1e
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    goto :goto_13
.end method

.method public static listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;)Landroid/media/RemoteDisplay;
    .registers 6
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "listener"    # Landroid/media/RemoteDisplay$Listener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 106
    if-nez p0, :cond_a

    .line 107
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "iface must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_a
    if-nez p1, :cond_14

    .line 110
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "listener must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_14
    if-nez p2, :cond_1e

    .line 113
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "handler must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 116
    :cond_1e
    new-instance v0, Landroid/media/RemoteDisplay;

    invoke-direct {v0, p1, p2}, Landroid/media/RemoteDisplay;-><init>(Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;)V

    .line 117
    .local v0, "display":Landroid/media/RemoteDisplay;
    invoke-direct {v0, p0}, Landroid/media/RemoteDisplay;->startListening(Ljava/lang/String;)V

    .line 118
    return-object v0
.end method

.method public static listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Ljava/lang/String;)Landroid/media/RemoteDisplay;
    .registers 8
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "listener"    # Landroid/media/RemoteDisplay$Listener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "setparamInfo"    # Ljava/lang/String;

    .prologue
    .line 130
    if-nez p0, :cond_a

    .line 131
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "iface must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_a
    if-nez p1, :cond_14

    .line 134
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "listener must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    :cond_14
    if-nez p2, :cond_1e

    .line 137
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "handler must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_1e
    new-instance v0, Landroid/media/RemoteDisplay;

    invoke-direct {v0, p1, p2}, Landroid/media/RemoteDisplay;-><init>(Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;)V

    .line 141
    .local v0, "display":Landroid/media/RemoteDisplay;
    invoke-direct {v0, p0, p3}, Landroid/media/RemoteDisplay;->startListening(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v1, "RemoteDisplay_Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start to listen remotedisplay @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sput v1, Landroid/media/RemoteDisplay;->mCurrentRemoteDisplayId:I

    .line 144
    return-object v0
.end method

.method private native nativeDispose(J)V
.end method

.method private native nativeListen(Ljava/lang/String;)J
.end method

.method private native nativeListen(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private native nativePause(J)V
.end method

.method private native nativeResume(J)V
.end method

.method private static native nativeSetParam(Ljava/lang/String;)I
.end method

.method public static native nativeStartUIBC(Ljava/lang/Object;)V
.end method

.method public static native nativeStopUIBC()V
.end method

.method public static setParam(ILjava/lang/String;)I
    .registers 3
    .param p0, "type"    # I
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method private startListening(Ljava/lang/String;)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 190
    invoke-direct {p0, p1}, Landroid/media/RemoteDisplay;->nativeListen(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    .line 191
    iget-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2d

    .line 192
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not start listening for remote display connection on \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_2d
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mGuard:Ldalvik/system/CloseGuard;

    const-string v1, "dispose"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method private startListening(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "initParam"    # Ljava/lang/String;

    .prologue
    .line 200
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mRemoteDisplayCallback:Landroid/media/RemoteDisplayCallback;

    invoke-virtual {v0, p1, p2}, Landroid/media/RemoteDisplayCallback;->listen(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    .line 202
    iget-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_30

    .line 203
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not start listening for remote display connection on \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_30
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mGuard:Ldalvik/system/CloseGuard;

    const-string v1, "dispose"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 207
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/RemoteDisplay;->dispose(Z)V

    .line 153
    return-void
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 85
    :try_start_0
    const-string v0, "RemoteDisplay_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start to finalize remotedisplay @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v0, "RemoteDisplay_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current display id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/media/RemoteDisplay;->mCurrentRemoteDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    sget v0, Landroid/media/RemoteDisplay;->mCurrentRemoteDisplayId:I

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_4a

    .line 88
    const-string v0, "RemoteDisplay_Java"

    const-string v1, "Another remotedisplay is launched! skip to dispose"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_0 .. :try_end_46} :catchall_57

    .line 94
    :goto_46
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 96
    return-void

    .line 90
    :cond_4a
    :try_start_4a
    const-string v0, "RemoteDisplay_Java"

    const-string/jumbo v1, "remotedisplay will be disposed or not by finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/RemoteDisplay;->dispose(Z)V
    :try_end_56
    .catchall {:try_start_4a .. :try_end_56} :catchall_57

    goto :goto_46

    .line 94
    :catchall_57
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public isDongleRenameAvailable()Z
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mRemoteDisplayCallback:Landroid/media/RemoteDisplayCallback;

    invoke-virtual {v0}, Landroid/media/RemoteDisplayCallback;->isDongleRenameAvailable()Z

    move-result v0

    return v0
.end method

.method notifyDisplayConnected(Landroid/view/Surface;IIII)V
    .registers 14
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "flags"    # I
    .param p5, "session"    # I

    .prologue
    .line 213
    iget-object v7, p0, Landroid/media/RemoteDisplay;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/media/RemoteDisplay$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/media/RemoteDisplay$2;-><init>(Landroid/media/RemoteDisplay;Landroid/view/Surface;IIII)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 219
    return-void
.end method

.method notifyDisplayDisconnected()V
    .registers 3

    .prologue
    .line 223
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/RemoteDisplay$3;

    invoke-direct {v1, p0}, Landroid/media/RemoteDisplay$3;-><init>(Landroid/media/RemoteDisplay;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 229
    return-void
.end method

.method notifyDisplayError(I)V
    .registers 4
    .param p1, "error"    # I

    .prologue
    .line 233
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/RemoteDisplay$4;

    invoke-direct {v1, p0, p1}, Landroid/media/RemoteDisplay$4;-><init>(Landroid/media/RemoteDisplay;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 239
    return-void
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mRemoteDisplayCallback:Landroid/media/RemoteDisplayCallback;

    if-eqz v0, :cond_9

    .line 156
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mRemoteDisplayCallback:Landroid/media/RemoteDisplayCallback;

    invoke-virtual {v0}, Landroid/media/RemoteDisplayCallback;->pause()V

    .line 158
    :cond_9
    return-void
.end method

.method public resume()V
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mRemoteDisplayCallback:Landroid/media/RemoteDisplayCallback;

    if-eqz v0, :cond_9

    .line 162
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mRemoteDisplayCallback:Landroid/media/RemoteDisplayCallback;

    invoke-virtual {v0}, Landroid/media/RemoteDisplayCallback;->resume()V

    .line 164
    :cond_9
    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 264
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mRemoteDisplayCallback:Landroid/media/RemoteDisplayCallback;

    invoke-virtual {v0, p1}, Landroid/media/RemoteDisplayCallback;->setDeviceName(Ljava/lang/String;)Z

    .line 265
    return-void
.end method

.method public startUIBC()V
    .registers 1

    .prologue
    .line 167
    return-void
.end method

.method public stopUIBC()V
    .registers 1

    .prologue
    .line 170
    return-void
.end method
