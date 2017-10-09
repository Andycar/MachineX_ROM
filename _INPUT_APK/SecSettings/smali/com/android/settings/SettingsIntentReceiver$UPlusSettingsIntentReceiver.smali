.class public Lcom/android/settings/SettingsIntentReceiver$UPlusSettingsIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UPlusSettingsIntentReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2410
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2413
    const-string v2, "kr.co.uplus.RESTRICT_BACKGROUND"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2414
    const-string v2, "ENABLED"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2415
    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    .line 2416
    .local v1, "mPolicyManager":Landroid/net/NetworkPolicyManager;
    const-string v2, "ENABLED"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 2417
    .local v0, "enabled":Z
    const-string v2, "SettingsIntentReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RESTRICT_BACKGROUND, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2418
    const-string v3, "persist.sys.restrict_background"

    if-eqz v0, :cond_1

    const-string v2, "true"

    :goto_0
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2419
    invoke-virtual {v1}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 2420
    invoke-virtual {v1, v0}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 2426
    .end local v0    # "enabled":Z
    .end local v1    # "mPolicyManager":Landroid/net/NetworkPolicyManager;
    :cond_0
    :goto_1
    return-void

    .line 2418
    .restart local v0    # "enabled":Z
    .restart local v1    # "mPolicyManager":Landroid/net/NetworkPolicyManager;
    :cond_1
    const-string v2, "false"

    goto :goto_0

    .line 2423
    .end local v0    # "enabled":Z
    .end local v1    # "mPolicyManager":Landroid/net/NetworkPolicyManager;
    :cond_2
    const-string v2, "SettingsIntentReceiver"

    const-string v3, "RESTRICT_BACKGROUND - Invalid value"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
