.class public Lcom/samsung/appdisabler/AppDisablerService;
.super Lcom/samsung/appdisabler/IAppDisablerService$Stub;
.source "AppDisablerService.java"

# interfaces
.implements Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;


# instance fields
.field private final mContex:Landroid/content/Context;

.field mCurrentImsiThread:Lcom/samsung/appdisabler/ImsiItemChecker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/samsung/appdisabler/IAppDisablerService$Stub;-><init>()V

    .line 33
    const-string v1, "AppDisablerService start"

    invoke-static {v1}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/samsung/appdisabler/AppDisablerService;->mContex:Landroid/content/Context;

    .line 37
    :try_start_a
    invoke-virtual {p0}, Lcom/samsung/appdisabler/AppDisablerService;->checkPackages()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_e

    .line 41
    :goto_d
    return-void

    .line 38
    :catch_e
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "onReceive"

    invoke-static {v1, v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public static configurationFileExists()Z
    .registers 2

    .prologue
    .line 76
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/csc/appDisablerList.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, "configFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method


# virtual methods
.method public checkPackages()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 46
    const-string v0, "checkPackages"

    invoke-static {v0}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 49
    new-instance v0, Lcom/samsung/appdisabler/ImsiItemChecker;

    iget-object v1, p0, Lcom/samsung/appdisabler/AppDisablerService;->mContex:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/samsung/appdisabler/ImsiItemChecker;-><init>(Landroid/content/Context;Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;)V

    iput-object v0, p0, Lcom/samsung/appdisabler/AppDisablerService;->mCurrentImsiThread:Lcom/samsung/appdisabler/ImsiItemChecker;

    .line 54
    iget-object v0, p0, Lcom/samsung/appdisabler/AppDisablerService;->mCurrentImsiThread:Lcom/samsung/appdisabler/ImsiItemChecker;

    invoke-virtual {v0}, Lcom/samsung/appdisabler/ImsiItemChecker;->isApkVersionInstalled()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 56
    const-string v0, "Apk version installed exit"

    invoke-static {v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    .line 61
    :goto_1b
    return-void

    .line 60
    :cond_1c
    iget-object v0, p0, Lcom/samsung/appdisabler/AppDisablerService;->mCurrentImsiThread:Lcom/samsung/appdisabler/ImsiItemChecker;

    invoke-virtual {v0}, Lcom/samsung/appdisabler/ImsiItemChecker;->start()V

    goto :goto_1b
.end method

.method public checkingEnded()V
    .registers 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/samsung/appdisabler/AppDisablerService;->clearInfo()V

    .line 84
    return-void
.end method

.method protected clearInfo()V
    .registers 2

    .prologue
    .line 65
    const-string v0, "clearInfo"

    invoke-static {v0}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/appdisabler/AppDisablerService;->mCurrentImsiThread:Lcom/samsung/appdisabler/ImsiItemChecker;

    .line 67
    return-void
.end method
