.class public abstract Lcom/samsung/android/contextaware/dataprovider/DataProvider;
.super Lcom/samsung/android/contextaware/manager/ContextProvider;
.source "DataProvider.java"


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .registers 5
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/manager/ContextProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected final initialize()V
    .registers 2

    .prologue
    .line 54
    invoke-super {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_c

    .line 55
    const-string v0, "mContext is null."

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 60
    :goto_b
    return-void

    .line 59
    :cond_c
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->initializeManager()V

    goto :goto_b
.end method

.method protected abstract initializeManager()V
.end method

.method protected final terminate()V
    .registers 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->terminateManager()V

    .line 70
    return-void
.end method

.method protected abstract terminateManager()V
.end method
