.class public interface abstract Lcom/android/server/epm/IPluginHelper;
.super Ljava/lang/Object;
.source "IPluginHelper.java"


# virtual methods
.method public abstract changeThemeState(Ljava/lang/String;IIZ)V
.end method

.method public abstract getActiveComponents()[Ljava/lang/String;
.end method

.method public abstract getCategory()I
.end method

.method public abstract getComponentPackageMap()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getDependencies(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public abstract getPluginList()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTargetAppList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract installThemePackage(Landroid/net/Uri;Z)V
.end method

.method public abstract onBootCompleted()V
.end method

.method public abstract onPluginDisabled(Ljava/lang/String;)V
.end method

.method public abstract onPluginEnabled(Ljava/lang/String;)V
.end method

.method public abstract onPluginInstalled(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)V
.end method

.method public abstract onPluginUninstalled(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)V
.end method

.method public abstract parsePlugins()V
.end method

.method public abstract removeThemePackage(Ljava/lang/String;)V
.end method

.method public abstract setCallback(Landroid/app/epm/IPluginManagerCallback;)V
.end method
