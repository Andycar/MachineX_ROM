.class abstract Landroid/webkit/WebSyncManager;
.super Ljava/lang/Object;
.source "WebSyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static final LOGTAG:Ljava/lang/String; = "websync"


# instance fields
.field protected mDataBase:Landroid/webkit/WebViewDatabase;

.field protected mHandler:Landroid/os/Handler;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    const-string v1, "doesn\'t implement Cloneable"

    invoke-direct {v0, v1}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onSyncInit()V
    .registers 1

    .prologue
    .line 71
    return-void
.end method

.method public resetSync()V
    .registers 1

    .prologue
    .line 55
    return-void
.end method

.method public run()V
    .registers 1

    .prologue
    .line 43
    return-void
.end method

.method public startSync()V
    .registers 1

    .prologue
    .line 61
    return-void
.end method

.method public stopSync()V
    .registers 1

    .prologue
    .line 68
    return-void
.end method

.method public sync()V
    .registers 1

    .prologue
    .line 49
    return-void
.end method

.method abstract syncFromRamToFlash()V
.end method
