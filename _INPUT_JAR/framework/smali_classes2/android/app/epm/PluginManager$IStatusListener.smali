.class public interface abstract Landroid/app/epm/PluginManager$IStatusListener;
.super Ljava/lang/Object;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/epm/PluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IStatusListener"
.end annotation


# virtual methods
.method public abstract onInstallCompleted(Ljava/lang/String;I)V
.end method

.method public abstract onStateChangeCompleted(Ljava/lang/String;)V
.end method

.method public abstract onUninstallCompleted(Ljava/lang/String;)V
.end method
