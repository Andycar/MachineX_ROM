.class final Lcom/android/server/cover/CoverDisabler;
.super Ljava/lang/Object;
.source "CoverDisabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cover/CoverDisabler$1;,
        Lcom/android/server/cover/CoverDisabler$DisableRecord;,
        Lcom/android/server/cover/CoverDisabler$CoverDisablerHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MSG_DISABLE_COVER_MANAGER:I = 0x0

.field private static final SAFE_DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "CoverManager.CoverDisabler"


# instance fields
.field private mContext:Landroid/content/Context;

.field mCoverManagerDisabled:Z

.field private mDisableCoverManagerWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mDisableRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cover/CoverDisabler$DisableRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/cover/CoverDisabler$CoverDisablerHandler;

.field mLock:Ljava/lang/Object;

.field private final mPowerManager:Landroid/os/PowerManager;


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .registers 7
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/CoverDisabler;->mLock:Ljava/lang/Object;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/CoverDisabler;->mDisableRecords:Ljava/util/ArrayList;

    .line 56
    iput-boolean v3, p0, Lcom/android/server/cover/CoverDisabler;->mCoverManagerDisabled:Z

    .line 59
    iput-object p2, p0, Lcom/android/server/cover/CoverDisabler;->mContext:Landroid/content/Context;

    .line 60
    const-string/jumbo v0, "power"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/cover/CoverDisabler;->mPowerManager:Landroid/os/PowerManager;

    .line 62
    new-instance v0, Lcom/android/server/cover/CoverDisabler$CoverDisablerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/cover/CoverDisabler$CoverDisablerHandler;-><init>(Lcom/android/server/cover/CoverDisabler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverDisabler;->mHandler:Lcom/android/server/cover/CoverDisabler$CoverDisablerHandler;

    .line 64
    iget-object v0, p0, Lcom/android/server/cover/CoverDisabler;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "disable covermanager"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/CoverDisabler;->mDisableCoverManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 66
    iget-object v0, p0, Lcom/android/server/cover/CoverDisabler;->mDisableCoverManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/cover/CoverDisabler;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cover/CoverDisabler;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverDisabler;->handleDisableCoverManagerLocked(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/cover/CoverDisabler;ZLandroid/os/IBinder;Ljava/lang/String;)Z
    .registers 5
    .param p0, "x0"    # Lcom/android/server/cover/CoverDisabler;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/os/IBinder;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cover/CoverDisabler;->disableCoverManagerLocked(ZLandroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private disableCoverManagerLocked(ZLandroid/os/IBinder;Ljava/lang/String;)Z
    .registers 13
    .param p1, "disable"    # Z
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 117
    const-string v6, "CoverManager.CoverDisabler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "disableCoverManagerLocked : disable="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " pkg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 120
    .local v0, "identity":J
    :try_start_28
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cover/CoverDisabler;->manageDisableListLocked(ZLandroid/os/IBinder;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0}, Lcom/android/server/cover/CoverDisabler;->gatherDisableLocked()Z

    move-result v3

    .line 123
    .local v3, "net":Z
    iget-boolean v6, p0, Lcom/android/server/cover/CoverDisabler;->mCoverManagerDisabled:Z

    if-eq v3, v6, :cond_57

    .line 124
    iput-boolean v3, p0, Lcom/android/server/cover/CoverDisabler;->mCoverManagerDisabled:Z

    .line 125
    iget-object v6, p0, Lcom/android/server/cover/CoverDisabler;->mDisableCoverManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v6

    if-nez v6, :cond_42

    .line 126
    iget-object v6, p0, Lcom/android/server/cover/CoverDisabler;->mDisableCoverManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 128
    :cond_42
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 129
    .local v2, "msg":Landroid/os/Message;
    const/4 v6, 0x0

    iput v6, v2, Landroid/os/Message;->what:I

    .line 130
    if-eqz p1, :cond_4c

    move v5, v4

    :cond_4c
    iput v5, v2, Landroid/os/Message;->arg1:I

    .line 131
    iget-object v5, p0, Lcom/android/server/cover/CoverDisabler;->mHandler:Lcom/android/server/cover/CoverDisabler$CoverDisablerHandler;

    invoke-virtual {v5, v2}, Lcom/android/server/cover/CoverDisabler$CoverDisablerHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_53
    .catchall {:try_start_28 .. :try_end_53} :catchall_5c

    .line 135
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 137
    .end local v2    # "msg":Landroid/os/Message;
    :goto_56
    return v4

    .line 135
    :cond_57
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v4, v5

    .line 137
    goto :goto_56

    .line 135
    .end local v3    # "net":Z
    :catchall_5c
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private gatherDisableLocked()Z
    .registers 7

    .prologue
    .line 188
    iget-object v5, p0, Lcom/android/server/cover/CoverDisabler;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 189
    .local v0, "N":I
    const/4 v2, 0x0

    .line 190
    .local v2, "net":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_1b

    .line 191
    iget-object v5, p0, Lcom/android/server/cover/CoverDisabler;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cover/CoverDisabler$DisableRecord;

    .line 192
    .local v4, "rec":Lcom/android/server/cover/CoverDisabler$DisableRecord;
    iget-boolean v2, v4, Lcom/android/server/cover/CoverDisabler$DisableRecord;->disable:Z

    .line 193
    if-eqz v2, :cond_18

    move v3, v2

    .line 195
    .end local v2    # "net":Z
    .end local v4    # "rec":Lcom/android/server/cover/CoverDisabler$DisableRecord;
    .local v3, "net":Z
    :goto_17
    return v3

    .line 190
    .end local v3    # "net":Z
    .restart local v2    # "net":Z
    .restart local v4    # "rec":Lcom/android/server/cover/CoverDisabler$DisableRecord;
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .end local v4    # "rec":Lcom/android/server/cover/CoverDisabler$DisableRecord;
    :cond_1b
    move v3, v2

    .line 195
    .end local v2    # "net":Z
    .restart local v3    # "net":Z
    goto :goto_17
.end method

.method private handleDisableCoverManagerLocked(Z)V
    .registers 5
    .param p1, "disable"    # Z

    .prologue
    .line 142
    const-string v0, "CoverManager.CoverDisabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDisableCoverManagerLocked : disable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/android/server/cover/CoverDisabler;->mDisableCoverManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 146
    iget-object v0, p0, Lcom/android/server/cover/CoverDisabler;->mDisableCoverManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 148
    :cond_25
    return-void
.end method

.method private manageDisableListLocked(ZLandroid/os/IBinder;Ljava/lang/String;)V
    .registers 13
    .param p1, "disable"    # Z
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 152
    const-string v5, "CoverManager.CoverDisabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "manageDisableList : disable="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v5, p0, Lcom/android/server/cover/CoverDisabler;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 156
    .local v0, "N":I
    const/4 v4, 0x0

    .line 158
    .local v4, "tok":Lcom/android/server/cover/CoverDisabler$DisableRecord;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2b
    if-ge v2, v0, :cond_3a

    .line 159
    iget-object v5, p0, Lcom/android/server/cover/CoverDisabler;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cover/CoverDisabler$DisableRecord;

    .line 160
    .local v3, "t":Lcom/android/server/cover/CoverDisabler$DisableRecord;
    iget-object v5, v3, Lcom/android/server/cover/CoverDisabler$DisableRecord;->token:Landroid/os/IBinder;

    if-ne v5, p2, :cond_4f

    .line 161
    move-object v4, v3

    .line 165
    .end local v3    # "t":Lcom/android/server/cover/CoverDisabler$DisableRecord;
    :cond_3a
    if-eqz p1, :cond_42

    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v5

    if-nez v5, :cond_52

    .line 166
    :cond_42
    if-eqz v4, :cond_4e

    .line 167
    iget-object v5, p0, Lcom/android/server/cover/CoverDisabler;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 168
    iget-object v5, v4, Lcom/android/server/cover/CoverDisabler$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {v5, v4, v8}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 185
    :cond_4e
    :goto_4e
    return-void

    .line 158
    .restart local v3    # "t":Lcom/android/server/cover/CoverDisabler$DisableRecord;
    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 171
    .end local v3    # "t":Lcom/android/server/cover/CoverDisabler$DisableRecord;
    :cond_52
    if-nez v4, :cond_63

    .line 172
    new-instance v4, Lcom/android/server/cover/CoverDisabler$DisableRecord;

    .end local v4    # "tok":Lcom/android/server/cover/CoverDisabler$DisableRecord;
    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/server/cover/CoverDisabler$DisableRecord;-><init>(Lcom/android/server/cover/CoverDisabler;Lcom/android/server/cover/CoverDisabler$1;)V

    .line 174
    .restart local v4    # "tok":Lcom/android/server/cover/CoverDisabler$DisableRecord;
    const/4 v5, 0x0

    :try_start_5b
    invoke-interface {p2, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_5e} :catch_6a

    .line 179
    iget-object v5, p0, Lcom/android/server/cover/CoverDisabler;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_63
    iput-boolean p1, v4, Lcom/android/server/cover/CoverDisabler$DisableRecord;->disable:Z

    .line 182
    iput-object p2, v4, Lcom/android/server/cover/CoverDisabler$DisableRecord;->token:Landroid/os/IBinder;

    .line 183
    iput-object p3, v4, Lcom/android/server/cover/CoverDisabler$DisableRecord;->pkg:Ljava/lang/String;

    goto :goto_4e

    .line 176
    :catch_6a
    move-exception v1

    .line 177
    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_4e
.end method


# virtual methods
.method disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)Z
    .registers 8
    .param p1, "disable"    # Z
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    .line 108
    const-string v1, "CoverManager.CoverDisabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableLocked : disable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "change":Z
    iget-object v2, p0, Lcom/android/server/cover/CoverDisabler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 111
    :try_start_26
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cover/CoverDisabler;->disableCoverManagerLocked(ZLandroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0

    .line 112
    monitor-exit v2

    .line 113
    return v0

    .line 112
    :catchall_2c
    move-exception v1

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 199
    const-string v3, " Current CoverDisabler state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    iget-object v4, p0, Lcom/android/server/cover/CoverDisabler;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 202
    :try_start_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCoverManagerDisabled="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/server/cover/CoverDisabler;->mCoverManagerDisabled:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    iget-object v3, p0, Lcom/android/server/cover/CoverDisabler;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 204
    .local v0, "N":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDisableRecords.size="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3d
    if-ge v1, v0, :cond_84

    .line 206
    iget-object v3, p0, Lcom/android/server/cover/CoverDisabler;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cover/CoverDisabler$DisableRecord;

    .line 207
    .local v2, "tok":Lcom/android/server/cover/CoverDisabler$DisableRecord;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] disable="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, v2, Lcom/android/server/cover/CoverDisabler$DisableRecord;->disable:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " pkg="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v2, Lcom/android/server/cover/CoverDisabler$DisableRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " token="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v2, Lcom/android/server/cover/CoverDisabler$DisableRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 211
    .end local v2    # "tok":Lcom/android/server/cover/CoverDisabler$DisableRecord;
    :cond_84
    const-string v3, "  "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    monitor-exit v4

    .line 213
    return-void

    .line 212
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_8b
    move-exception v3

    monitor-exit v4
    :try_end_8d
    .catchall {:try_start_8 .. :try_end_8d} :catchall_8b

    throw v3
.end method

.method isCoverManagerDisabled()Z
    .registers 3

    .prologue
    .line 102
    iget-object v1, p0, Lcom/android/server/cover/CoverDisabler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/cover/CoverDisabler;->mCoverManagerDisabled:Z

    monitor-exit v1

    return v0

    .line 104
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method
