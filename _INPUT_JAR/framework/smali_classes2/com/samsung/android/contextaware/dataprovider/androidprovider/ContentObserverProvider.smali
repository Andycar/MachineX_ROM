.class public abstract Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;
.super Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;
.source "ContentObserverProvider.java"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .registers 5
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 50
    return-void
.end method


# virtual methods
.method public disable()V
    .registers 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->unregisterContentObserver()V

    .line 127
    return-void
.end method

.method public enable()V
    .registers 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->registerContentObserver()V

    .line 117
    return-void
.end method

.method protected abstract getContentObserver()Landroid/database/ContentObserver;
.end method

.method protected final getContentResolver()Landroid/content/ContentResolver;
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public getContextValueNames()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 106
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Action"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected abstract getUri()Landroid/net/Uri;
.end method

.method protected initializeManager()V
    .registers 2

    .prologue
    .line 61
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_c

    .line 62
    const-string v0, "mContext is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 67
    :goto_b
    return-void

    .line 66
    :cond_c
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->mContentResolver:Landroid/content/ContentResolver;

    goto :goto_b
.end method

.method protected isNotifyForDescendents()Z
    .registers 2

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method protected final registerContentObserver()V
    .registers 5

    .prologue
    .line 140
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->getContentObserver()Landroid/database/ContentObserver;

    move-result-object v0

    if-nez v0, :cond_13

    .line 146
    :cond_12
    :goto_12
    return-void

    .line 144
    :cond_13
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->isNotifyForDescendents()Z

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->getContentObserver()Landroid/database/ContentObserver;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_12
.end method

.method protected terminateManager()V
    .registers 2

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->mContentResolver:Landroid/content/ContentResolver;

    .line 79
    return-void
.end method

.method protected final unregisterContentObserver()V
    .registers 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->getContentObserver()Landroid/database/ContentObserver;

    move-result-object v0

    if-nez v0, :cond_b

    .line 156
    :cond_a
    :goto_a
    return-void

    .line 155
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->getContentObserver()Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_a
.end method

.method protected updateContext(I)V
    .registers 5
    .param p1, "action"    # I

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 166
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->notifyObserver()V

    .line 167
    return-void
.end method
