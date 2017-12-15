.class public final Landroid/database/CursorToBulkCursorAdaptor;
.super Landroid/database/BulkCursorNative;
.source "CursorToBulkCursorAdaptor.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Cursor"


# instance fields
.field private mCursor:Landroid/database/CrossProcessCursor;

.field private mFilledWindow:Landroid/database/CursorWindow;

.field private final mLock:Ljava/lang/Object;

.field private mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

.field private final mProviderName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Landroid/database/IContentObserver;Ljava/lang/String;)V
    .registers 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "observer"    # Landroid/database/IContentObserver;
    .param p3, "providerName"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/database/BulkCursorNative;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    .line 90
    instance-of v0, p1, Landroid/database/CrossProcessCursor;

    if-eqz v0, :cond_1c

    .line 91
    check-cast p1, Landroid/database/CrossProcessCursor;

    .end local p1    # "cursor":Landroid/database/Cursor;
    iput-object p1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    .line 95
    :goto_12
    iput-object p3, p0, Landroid/database/CursorToBulkCursorAdaptor;->mProviderName:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    :try_start_17
    invoke-direct {p0, p2}, Landroid/database/CursorToBulkCursorAdaptor;->createAndRegisterObserverProxyLocked(Landroid/database/IContentObserver;)V

    .line 99
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_24

    .line 100
    return-void

    .line 93
    .restart local p1    # "cursor":Landroid/database/Cursor;
    :cond_1c
    new-instance v0, Landroid/database/CrossProcessCursorWrapper;

    invoke-direct {v0, p1}, Landroid/database/CrossProcessCursorWrapper;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    goto :goto_12

    .line 99
    .end local p1    # "cursor":Landroid/database/Cursor;
    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0
.end method

.method private closeFilledWindowLocked()V
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mFilledWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_c

    .line 104
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mFilledWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->close()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mFilledWindow:Landroid/database/CursorWindow;

    .line 107
    :cond_c
    return-void
.end method

.method private createAndRegisterObserverProxyLocked(Landroid/database/IContentObserver;)V
    .registers 4
    .param p1, "observer"    # Landroid/database/IContentObserver;

    .prologue
    .line 249
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    if-eqz v0, :cond_c

    .line 250
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "an observer is already registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_c
    new-instance v0, Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    invoke-direct {v0, p1, p0}, Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;-><init>(Landroid/database/IContentObserver;Landroid/os/IBinder$DeathRecipient;)V

    iput-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    .line 253
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    invoke-interface {v0, v1}, Landroid/database/CrossProcessCursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 254
    return-void
.end method

.method private disposeLocked()V
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    if-eqz v0, :cond_f

    .line 111
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->unregisterObserverProxyLocked()V

    .line 112
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->close()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    .line 116
    :cond_f
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->closeFilledWindowLocked()V

    .line 117
    return-void
.end method

.method private throwIfCursorIsClosed()V
    .registers 3

    .prologue
    .line 120
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    if-nez v0, :cond_c

    .line 121
    new-instance v0, Landroid/database/StaleDataException;

    const-string v1, "Attempted to access a cursor after it has been closed."

    invoke-direct {v0, v1}, Landroid/database/StaleDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_c
    return-void
.end method

.method private unregisterObserverProxyLocked()V
    .registers 3

    .prologue
    .line 258
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    if-eqz v0, :cond_13

    .line 259
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    invoke-interface {v0, v1}, Landroid/database/CrossProcessCursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 260
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    invoke-virtual {v0, p0}, Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)Z

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    .line 263
    :cond_13
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 127
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 128
    :try_start_3
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->disposeLocked()V

    .line 129
    monitor-exit v1

    .line 130
    return-void

    .line 129
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public close()V
    .registers 3

    .prologue
    .line 213
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 214
    :try_start_3
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->disposeLocked()V

    .line 215
    monitor-exit v1

    .line 216
    return-void

    .line 215
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public deactivate()V
    .registers 3

    .prologue
    .line 201
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 202
    :try_start_3
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    if-eqz v0, :cond_f

    .line 203
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->unregisterObserverProxyLocked()V

    .line 204
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->deactivate()V

    .line 207
    :cond_f
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->closeFilledWindowLocked()V

    .line 208
    monitor-exit v1

    .line 209
    return-void

    .line 208
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public getBulkCursorDescriptor()Landroid/database/BulkCursorDescriptor;
    .registers 4

    .prologue
    .line 138
    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 139
    :try_start_3
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->throwIfCursorIsClosed()V

    .line 141
    new-instance v0, Landroid/database/BulkCursorDescriptor;

    invoke-direct {v0}, Landroid/database/BulkCursorDescriptor;-><init>()V

    .line 142
    .local v0, "d":Landroid/database/BulkCursorDescriptor;
    iput-object p0, v0, Landroid/database/BulkCursorDescriptor;->cursor:Landroid/database/IBulkCursor;

    .line 143
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v1}, Landroid/database/CrossProcessCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/database/BulkCursorDescriptor;->columnNames:[Ljava/lang/String;

    .line 144
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v1}, Landroid/database/CrossProcessCursor;->getWantsAllOnMoveCalls()Z

    move-result v1

    iput-boolean v1, v0, Landroid/database/BulkCursorDescriptor;->wantsAllOnMoveCalls:Z

    .line 145
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v1}, Landroid/database/CrossProcessCursor;->getCount()I

    move-result v1

    iput v1, v0, Landroid/database/BulkCursorDescriptor;->count:I

    .line 146
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v1}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v1

    iput-object v1, v0, Landroid/database/BulkCursorDescriptor;->window:Landroid/database/CursorWindow;

    .line 147
    iget-object v1, v0, Landroid/database/BulkCursorDescriptor;->window:Landroid/database/CursorWindow;

    if-eqz v1, :cond_36

    .line 150
    iget-object v1, v0, Landroid/database/BulkCursorDescriptor;->window:Landroid/database/CursorWindow;

    invoke-virtual {v1}, Landroid/database/CursorWindow;->acquireReference()V

    .line 152
    :cond_36
    monitor-exit v2

    return-object v0

    .line 153
    .end local v0    # "d":Landroid/database/BulkCursorDescriptor;
    :catchall_38
    move-exception v1

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 3

    .prologue
    .line 267
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 268
    :try_start_3
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->throwIfCursorIsClosed()V

    .line 270
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 271
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public getWindow(I)Landroid/database/CursorWindow;
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 158
    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 159
    :try_start_3
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->throwIfCursorIsClosed()V

    .line 161
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v1, p1}, Landroid/database/CrossProcessCursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_14

    .line 162
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->closeFilledWindowLocked()V

    .line 163
    const/4 v0, 0x0

    monitor-exit v2

    .line 186
    :goto_13
    return-object v0

    .line 166
    :cond_14
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v1}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    .line 167
    .local v0, "window":Landroid/database/CursorWindow;
    if-eqz v0, :cond_29

    .line 168
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->closeFilledWindowLocked()V

    .line 181
    :goto_1f
    if-eqz v0, :cond_24

    .line 184
    invoke-virtual {v0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 186
    :cond_24
    monitor-exit v2

    goto :goto_13

    .line 187
    .end local v0    # "window":Landroid/database/CursorWindow;
    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1

    .line 170
    .restart local v0    # "window":Landroid/database/CursorWindow;
    :cond_29
    :try_start_29
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mFilledWindow:Landroid/database/CursorWindow;

    .line 171
    if-nez v0, :cond_3e

    .line 172
    new-instance v1, Landroid/database/CursorWindow;

    iget-object v3, p0, Landroid/database/CursorToBulkCursorAdaptor;->mProviderName:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mFilledWindow:Landroid/database/CursorWindow;

    .line 173
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mFilledWindow:Landroid/database/CursorWindow;

    .line 178
    :cond_38
    :goto_38
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v1, p1, v0}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    goto :goto_1f

    .line 174
    :cond_3e
    invoke-virtual {v0}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v1

    if-lt p1, v1, :cond_4f

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v1

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v3

    add-int/2addr v1, v3

    if-lt p1, v1, :cond_38

    .line 176
    :cond_4f
    invoke-virtual {v0}, Landroid/database/CursorWindow;->clear()V
    :try_end_52
    .catchall {:try_start_29 .. :try_end_52} :catchall_26

    goto :goto_38
.end method

.method public onMove(I)V
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 192
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    :try_start_3
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->throwIfCursorIsClosed()V

    .line 195
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v2}, Landroid/database/CrossProcessCursor;->getPosition()I

    move-result v2

    invoke-interface {v0, v2, p1}, Landroid/database/CrossProcessCursor;->onMove(II)Z

    .line 196
    monitor-exit v1

    .line 197
    return-void

    .line 196
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public requery(Landroid/database/IContentObserver;)I
    .registers 7
    .param p1, "observer"    # Landroid/database/IContentObserver;

    .prologue
    .line 220
    iget-object v3, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 221
    :try_start_3
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->throwIfCursorIsClosed()V

    .line 223
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->closeFilledWindowLocked()V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_3a

    .line 226
    :try_start_9
    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v2}, Landroid/database/CrossProcessCursor;->requery()Z
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_e} :catch_14
    .catchall {:try_start_9 .. :try_end_e} :catchall_3a

    move-result v2

    if-nez v2, :cond_3d

    .line 227
    const/4 v2, -0x1

    :try_start_12
    monitor-exit v3

    .line 238
    :goto_13
    return v2

    .line 229
    :catch_14
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/database/CursorToBulkCursorAdaptor;->mProviderName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Requery misuse db, mCursor isClosed:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v4}, Landroid/database/CrossProcessCursor;->isClosed()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    .local v1, "leakProgram":Ljava/lang/IllegalStateException;
    throw v1

    .line 239
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v1    # "leakProgram":Ljava/lang/IllegalStateException;
    :catchall_3a
    move-exception v2

    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_12 .. :try_end_3c} :catchall_3a

    throw v2

    .line 236
    :cond_3d
    :try_start_3d
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->unregisterObserverProxyLocked()V

    .line 237
    invoke-direct {p0, p1}, Landroid/database/CursorToBulkCursorAdaptor;->createAndRegisterObserverProxyLocked(Landroid/database/IContentObserver;)V

    .line 238
    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v2}, Landroid/database/CrossProcessCursor;->getCount()I

    move-result v2

    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_3d .. :try_end_4a} :catchall_3a

    goto :goto_13
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 276
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 277
    :try_start_3
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->throwIfCursorIsClosed()V

    .line 279
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1}, Landroid/database/CrossProcessCursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 280
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method
