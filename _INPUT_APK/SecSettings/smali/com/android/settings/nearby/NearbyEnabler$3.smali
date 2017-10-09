.class Lcom/android/settings/nearby/NearbyEnabler$3;
.super Ljava/lang/Object;
.source "NearbyEnabler.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nearby/NearbyEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nearby/NearbyEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/nearby/NearbyEnabler;)V
    .locals 0

    .prologue
    .line 568
    iput-object p1, p0, Lcom/android/settings/nearby/NearbyEnabler$3;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 578
    invoke-static {p2}, Lcom/android/settings/nearby/IMediaServer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/settings/nearby/IMediaServer;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/nearby/NearbyEnabler;->access$702(Lcom/android/settings/nearby/IMediaServer;)Lcom/android/settings/nearby/IMediaServer;

    .line 579
    const-string v2, "NearbyEnabler"

    const-string v3, "onServiceConnected"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    invoke-static {}, Lcom/android/settings/nearby/NearbyEnabler;->access$700()Lcom/android/settings/nearby/IMediaServer;

    move-result-object v2

    if-nez v2, :cond_0

    .line 582
    const-string v2, "NearbyEnabler"

    const-string v3, "onServiceConnected"

    const-string v4, "mIMediaServer == null"

    invoke-static {v2, v3, v4}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    :goto_0
    return-void

    .line 586
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/settings/nearby/NearbyEnabler;->access$700()Lcom/android/settings/nearby/IMediaServer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler$3;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-static {v3}, Lcom/android/settings/nearby/NearbyEnabler;->access$800(Lcom/android/settings/nearby/NearbyEnabler;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/settings/nearby/IMediaServer;->resume(Ljava/lang/String;)V

    .line 588
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler$3;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-static {v2}, Lcom/android/settings/nearby/NearbyEnabler;->access$900(Lcom/android/settings/nearby/NearbyEnabler;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 589
    const-string v2, "NearbyEnabler"

    const-string v3, "onServiceConnected"

    const-string v4, "Auto Start!!"

    invoke-static {v2, v3, v4}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    invoke-static {}, Lcom/android/settings/nearby/NearbyEnabler;->access$700()Lcom/android/settings/nearby/IMediaServer;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/settings/nearby/IMediaServer;->startMediaServer()V

    .line 591
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler$3;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/settings/nearby/NearbyEnabler;->access$902(Lcom/android/settings/nearby/NearbyEnabler;Z)Z

    .line 593
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler$3;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-static {v2}, Lcom/android/settings/nearby/NearbyEnabler;->access$1000(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/widget/Switch;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 594
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler$3;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-static {v2}, Lcom/android/settings/nearby/NearbyEnabler;->access$1000(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/widget/Switch;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 595
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler$3;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-static {v2}, Lcom/android/settings/nearby/NearbyEnabler;->access$1000(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/widget/Switch;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 598
    :cond_1
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler$3;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-static {v2}, Lcom/android/settings/nearby/NearbyEnabler;->access$1100(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 599
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler$3;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-static {v2}, Lcom/android/settings/nearby/NearbyEnabler;->access$1100(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 600
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler$3;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-static {v2}, Lcom/android/settings/nearby/NearbyEnabler;->access$1100(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler$3;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-static {v2}, Lcom/android/settings/nearby/NearbyEnabler;->access$1200(Lcom/android/settings/nearby/NearbyEnabler;)V

    .line 611
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler$3;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-static {v2}, Lcom/android/settings/nearby/NearbyEnabler;->access$1300(Lcom/android/settings/nearby/NearbyEnabler;)V

    .line 613
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.connected_mediaServer"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 614
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler$3;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-static {v2}, Lcom/android/settings/nearby/NearbyEnabler;->access$1400(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 603
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 604
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NearbyEnabler"

    const-string v3, "onServiceConnected"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 572
    const-string v0, "NearbyEnabler"

    const-string v1, "onServiceDisconnected"

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/nearby/NearbyEnabler;->access$702(Lcom/android/settings/nearby/IMediaServer;)Lcom/android/settings/nearby/IMediaServer;

    .line 574
    return-void
.end method
