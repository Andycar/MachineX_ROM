.class Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;
.super Lcom/mirrorlink/android/service/IMirrorlinkListener$Stub;
.source "MirrorLinkAppDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MirrorlinkListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;


# direct methods
.method private constructor <init>(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-direct {p0}, Lcom/mirrorlink/android/service/IMirrorlinkListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;
    .param p2, "x1"    # Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$1;

    .prologue
    .line 348
    invoke-direct {p0, p1}, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;-><init>(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;)V

    return-void
.end method


# virtual methods
.method public notifyRevocationCheckResult(Ljava/lang/String;I)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "result"    # I

    .prologue
    const/4 v5, 0x1

    .line 352
    const-string v2, "MirrorLinkAppDetail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MirrorlinkListener : notifyRevocationCheckResult() & enabling menu item: result  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    if-ne p2, v5, :cond_0

    .line 357
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v2}, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->access$000(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/mirrorlink/android/service/IMirrorlinkManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 358
    const/4 v0, 0x0

    .line 359
    .local v0, "appListInfo":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v2}, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->access$000(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/mirrorlink/android/service/IMirrorlinkManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mirrorlink/android/service/IMirrorlinkManager;->getApplicationElements(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 360
    const-string v2, "MirrorLinkAppDetail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyRevocationCheckResult() : Bundle Received for the package Name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v2, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v2}, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->access$300(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    move-result-object v2

    const-string v3, "pkgName"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mAppName:Ljava/lang/String;

    .line 363
    iget-object v2, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v2}, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->access$300(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    move-result-object v2

    const-string v3, "EntitiesName"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mEntityName:Ljava/lang/String;

    .line 364
    iget-object v2, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v2}, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->access$300(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    move-result-object v2

    const-string v3, "AppStatus"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mStatus:Ljava/lang/String;

    .line 365
    iget-object v2, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v2}, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->access$300(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    move-result-object v2

    const-string v3, "NONRESTRICTED"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mNonRestricted:Ljava/lang/String;

    .line 366
    iget-object v2, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v2}, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->access$300(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    move-result-object v2

    const-string v3, "RESTRICTED"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mRestricted:Ljava/lang/String;

    .line 367
    iget-object v2, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v2}, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->access$300(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    move-result-object v2

    const-string v3, "VALID_DATE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mValidDate:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .end local v0    # "appListInfo":Landroid/os/Bundle;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v2}, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->access$500(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 375
    :try_start_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "MirrorLinkAppDetailfrom ACMS thread"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 376
    iget-object v2, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->access$602(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;Z)Z

    .line 377
    iget-object v2, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v2}, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->access$500(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 378
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 380
    return-void

    .line 370
    :catch_0
    move-exception v1

    .line 371
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 378
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
