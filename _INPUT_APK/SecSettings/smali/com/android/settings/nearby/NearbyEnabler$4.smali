.class Lcom/android/settings/nearby/NearbyEnabler$4;
.super Landroid/content/BroadcastReceiver;
.source "NearbyEnabler.java"


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
    .line 858
    iput-object p1, p0, Lcom/android/settings/nearby/NearbyEnabler$4;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    .line 862
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 863
    .local v0, "action":Ljava/lang/String;
    const-string v3, "NearbyEnabler"

    const-string v4, "BroadcastReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " onReceive(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    const-string v3, "com.android.settings.allshare.SERVER_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 866
    const-string v3, "START"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 868
    .local v2, "isServerStarted":Z
    const-string v3, "NearbyEnabler"

    const-string v4, "mBroadcastReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 870
    invoke-static {v2}, Lcom/android/settings/nearby/NearbyEnabler;->access$1502(Z)Z

    .line 873
    :cond_0
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler$4;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-static {v3}, Lcom/android/settings/nearby/NearbyEnabler;->access$1000(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/widget/Switch;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 874
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler$4;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-static {v3}, Lcom/android/settings/nearby/NearbyEnabler;->access$1000(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eq v3, v2, :cond_1

    .line 875
    const-string v3, "NearbyEnabler"

    const-string v4, "mBroadcastReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INVALID ONOFF VALUE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler$4;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-static {v3}, Lcom/android/settings/nearby/NearbyEnabler;->access$1000(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 879
    :cond_1
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler$4;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-static {v3}, Lcom/android/settings/nearby/NearbyEnabler;->access$1000(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 882
    :cond_2
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler$4;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-static {v3}, Lcom/android/settings/nearby/NearbyEnabler;->access$1100(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 883
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler$4;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-static {v3}, Lcom/android/settings/nearby/NearbyEnabler;->access$1100(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v3

    if-eq v3, v2, :cond_3

    .line 884
    const-string v3, "NearbyEnabler"

    const-string v4, "mBroadcastReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INVALID ONOFF VALUE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler$4;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-static {v3}, Lcom/android/settings/nearby/NearbyEnabler;->access$1100(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 888
    :cond_3
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler$4;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-static {v3}, Lcom/android/settings/nearby/NearbyEnabler;->access$1100(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 901
    .end local v2    # "isServerStarted":Z
    :cond_4
    :goto_0
    return-void

    .line 892
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.settings.DEVICE_NAME_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 893
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler$4;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    iget-object v4, p0, Lcom/android/settings/nearby/NearbyEnabler$4;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-static {v4}, Lcom/android/settings/nearby/NearbyEnabler;->access$1400(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "device_name"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/nearby/NearbyEnabler;->access$1600(Lcom/android/settings/nearby/NearbyEnabler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 896
    .local v1, "deviceName":Ljava/lang/String;
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler$4;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-static {v3}, Lcom/android/settings/nearby/NearbyEnabler;->access$1700(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 897
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler$4;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-static {v3}, Lcom/android/settings/nearby/NearbyEnabler;->access$1700(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
