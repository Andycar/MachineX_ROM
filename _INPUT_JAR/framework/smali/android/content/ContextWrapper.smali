.class public Landroid/content/ContextWrapper;
.super Landroid/content/Context;
.source "ContextWrapper.java"


# instance fields
.field mBase:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/content/Context;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    .line 59
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 4
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 69
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    if-eqz v0, :cond_c

    .line 70
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Base context already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_c
    iput-object p1, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    .line 73
    return-void
.end method

.method public bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .registers 5
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I

    .prologue
    .line 559
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method public bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .registers 6
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 566
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public checkCallingOrSelfPermission(Ljava/lang/String;)I
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 597
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I

    .prologue
    .line 639
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v0

    return v0
.end method

.method public checkCallingPermission(Ljava/lang/String;)I
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 592
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkCallingUriPermission(Landroid/net/Uri;I)I
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I

    .prologue
    .line 634
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->checkCallingUriPermission(Landroid/net/Uri;I)I

    move-result v0

    return v0
.end method

.method public checkPermission(Ljava/lang/String;II)I
    .registers 5
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    .line 587
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public checkUriPermission(Landroid/net/Uri;III)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I

    .prologue
    .line 629
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v0

    return v0
.end method

.method public checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I
    .registers 14
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "readPermission"    # Ljava/lang/String;
    .param p3, "writePermission"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "modeFlags"    # I

    .prologue
    .line 645
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

.method public clearWallpaper()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->clearWallpaper()V

    .line 333
    return-void
.end method

.method public createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;
    .registers 4
    .param p1, "application"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 699
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
    .registers 3
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;

    .prologue
    .line 710
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public createDisplayContext(Landroid/view/Display;)Landroid/content/Context;
    .registers 3
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    .line 715
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 679
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public createPackageContext(Ljava/lang/String;Ljava/lang/ClassLoader;I)Landroid/content/Context;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "baseLoader"    # Ljava/lang/ClassLoader;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 686
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;Ljava/lang/ClassLoader;I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 693
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public databaseList()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deleteDatabase(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 287
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 201
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 614
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    return-void
.end method

.method public enforceCallingOrSelfUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 664
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->enforceCallingOrSelfUriPermission(Landroid/net/Uri;ILjava/lang/String;)V

    .line 665
    return-void
.end method

.method public enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 608
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    return-void
.end method

.method public enforceCallingUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 658
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->enforceCallingUriPermission(Landroid/net/Uri;ILjava/lang/String;)V

    .line 659
    return-void
.end method

.method public enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    .line 603
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 604
    return-void
.end method

.method public enforceUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I
    .param p5, "message"    # Ljava/lang/String;

    .prologue
    .line 652
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->enforceUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V

    .line 653
    return-void
.end method

.method public enforceUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .registers 16
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "readPermission"    # Ljava/lang/String;
    .param p3, "writePermission"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "modeFlags"    # I
    .param p7, "message"    # Ljava/lang/String;

    .prologue
    .line 671
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->enforceUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 674
    return-void
.end method

.method public fileList()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 2

    .prologue
    .line 733
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    if-eqz v0, :cond_b

    .line 734
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 736
    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sConstDefaultMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    goto :goto_a
.end method

.method public getApplicationContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getBaseActivityToken()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 753
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    if-eqz v0, :cond_b

    .line 754
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getBaseActivityToken()Landroid/os/IBinder;

    move-result-object v0

    .line 756
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getBaseContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    return-object v0
.end method

.method public getBasePackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheDir()Ljava/io/File;
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getCodeCacheDir()Ljava/io/File;
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getDatabasePath(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 292
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getDir(Ljava/lang/String;I)Ljava/io/File;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 271
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;
    .registers 3
    .param p1, "displayId"    # I

    .prologue
    .line 726
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;

    move-result-object v0

    return-object v0
.end method

.method public getExternalCacheDir()Ljava/io/File;
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getExternalCacheDirs()[Ljava/io/File;
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDirs()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 226
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 231
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getExternalMediaDirs()[Ljava/io/File;
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 206
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getFilesDir()Ljava/io/File;
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getMainLooper()Landroid/os/Looper;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getNoBackupFilesDir()Ljava/io/File;
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getObbDir()Ljava/io/File;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getObbDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getObbDirs()[Ljava/io/File;
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getObbDirs()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getOpPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOverlayDirs()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 765
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageCodePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    if-eqz v0, :cond_b

    .line 139
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public getPackageResourcePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 184
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 582
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public getThemeResId()I
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v0

    return v0
.end method

.method public getUserId()I
    .registers 2

    .prologue
    .line 705
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    return v0
.end method

.method public getWallpaper()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperDesiredMinimumHeight()I
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getWallpaperDesiredMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getWallpaperDesiredMinimumWidth()I
    .registers 2

    .prologue
    .line 312
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getWallpaperDesiredMinimumWidth()I

    move-result v0

    return v0
.end method

.method public grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    .registers 5
    .param p1, "toPackage"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "modeFlags"    # I

    .prologue
    .line 619
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 620
    return-void
.end method

.method public isRestricted()Z
    .registers 2

    .prologue
    .line 720
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    return v0
.end method

.method public isTouchBlocked()Z
    .registers 2

    .prologue
    .line 743
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    if-eqz v0, :cond_b

    .line 744
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isTouchBlocked()Z

    move-result v0

    .line 746
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method

.method public openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .prologue
    .line 276
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .prologue
    .line 282
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public peekWallpaper()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->peekWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .registers 4
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 503
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 6
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "broadcastPermission"    # Ljava/lang/String;
    .param p4, "scheduler"    # Landroid/os/Handler;

    .prologue
    .line 510
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 12
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "filter"    # Landroid/content/IntentFilter;
    .param p4, "broadcastPermission"    # Ljava/lang/String;
    .param p5, "scheduler"    # Landroid/os/Handler;

    .prologue
    .line 522
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public removeStickyBroadcast(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 478
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 479
    return-void
.end method

.method public removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 497
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 498
    return-void
.end method

.method public revokeUriPermission(Landroid/net/Uri;I)V
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I

    .prologue
    .line 624
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 625
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 391
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 392
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;

    .prologue
    .line 396
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "appOp"    # I

    .prologue
    .line 402
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 403
    return-void
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 434
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 435
    return-void
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;

    .prologue
    .line 440
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;

    .prologue
    .line 408
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 18
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "initialCode"    # I
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;

    .prologue
    .line 427
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 430
    return-void
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p4, "scheduler"    # Landroid/os/Handler;
    .param p5, "initialCode"    # I
    .param p6, "initialData"    # Ljava/lang/String;
    .param p7, "initialExtras"    # Landroid/os/Bundle;

    .prologue
    .line 416
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 419
    return-void
.end method

.method public sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 20
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;
    .param p4, "appOp"    # I
    .param p5, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p6, "scheduler"    # Landroid/os/Handler;
    .param p7, "initialCode"    # I
    .param p8, "initialData"    # Ljava/lang/String;
    .param p9, "initialExtras"    # Landroid/os/Bundle;

    .prologue
    .line 457
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 459
    return-void
.end method

.method public sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 18
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "initialCode"    # I
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;

    .prologue
    .line 447
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 449
    return-void
.end method

.method public sendStickyBroadcast(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 463
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 464
    return-void
.end method

.method public sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 483
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 484
    return-void
.end method

.method public sendStickyOrderedBroadcast(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 14
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "scheduler"    # Landroid/os/Handler;
    .param p4, "initialCode"    # I
    .param p5, "initialData"    # Ljava/lang/String;
    .param p6, "initialExtras"    # Landroid/os/Bundle;

    .prologue
    .line 471
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->sendStickyOrderedBroadcast(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 474
    return-void
.end method

.method public sendStickyOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p4, "scheduler"    # Landroid/os/Handler;
    .param p5, "initialCode"    # I
    .param p6, "initialData"    # Ljava/lang/String;
    .param p7, "initialExtras"    # Landroid/os/Bundle;

    .prologue
    .line 491
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendStickyOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 493
    return-void
.end method

.method public setTheme(I)V
    .registers 3
    .param p1, "resid"    # I

    .prologue
    .line 115
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->setTheme(I)V

    .line 116
    return-void
.end method

.method public setWallpaper(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->setWallpaper(Landroid/graphics/Bitmap;)V

    .line 323
    return-void
.end method

.method public setWallpaper(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "data"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->setWallpaper(Ljava/io/InputStream;)V

    .line 328
    return-void
.end method

.method public startActivities([Landroid/content/Intent;)V
    .registers 3
    .param p1, "intents"    # [Landroid/content/Intent;

    .prologue
    .line 359
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivities([Landroid/content/Intent;)V

    .line 360
    return-void
.end method

.method public startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 364
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 365
    return-void
.end method

.method public startActivitiesAsUser([Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 5
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 370
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->startActivitiesAsUser([Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 371
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 337
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 338
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 348
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 349
    return-void
.end method

.method public startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 354
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 355
    return-void
.end method

.method public startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 343
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 344
    return-void
.end method

.method public startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "profileFile"    # Ljava/lang/String;
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 577
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    .registers 12
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "fillInIntent"    # Landroid/content/Intent;
    .param p3, "flagsMask"    # I
    .param p4, "flagsValues"    # I
    .param p5, "extraFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V

    .line 379
    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 14
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "fillInIntent"    # Landroid/content/Intent;
    .param p3, "flagsMask"    # I
    .param p4, "flagsValues"    # I
    .param p5, "extraFlags"    # I
    .param p6, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 385
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 387
    return-void
.end method

.method public startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .registers 3
    .param p1, "service"    # Landroid/content/Intent;

    .prologue
    .line 533
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .registers 4
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 547
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public stopService(Landroid/content/Intent;)Z
    .registers 3
    .param p1, "name"    # Landroid/content/Intent;

    .prologue
    .line 538
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z
    .registers 4
    .param p1, "name"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 553
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public unbindService(Landroid/content/ServiceConnection;)V
    .registers 3
    .param p1, "conn"    # Landroid/content/ServiceConnection;

    .prologue
    .line 571
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 572
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 3
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 528
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 529
    return-void
.end method
