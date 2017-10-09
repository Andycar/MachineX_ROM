.class Lcom/android/settings/EasyModeSettings$3;
.super Ljava/lang/Object;
.source "EasyModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/EasyModeSettings;->positiveButtonClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/EasyModeSettings;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/EasyModeSettings;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/android/settings/EasyModeSettings$3;->this$0:Lcom/android/settings/EasyModeSettings;

    iput-object p2, p0, Lcom/android/settings/EasyModeSettings$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v5, 0x0

    .line 408
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings$3;->this$0:Lcom/android/settings/EasyModeSettings;

    iget-object v2, v2, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v3, "easy_mode_switch"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 410
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_ConfigOpeartorHomeMode"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "teasymode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 411
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings$3;->this$0:Lcom/android/settings/EasyModeSettings;

    iget-object v2, v2, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v3, "op_mode_switch"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 413
    :cond_0
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings$3;->this$0:Lcom/android/settings/EasyModeSettings;

    iget-object v3, p0, Lcom/android/settings/EasyModeSettings$3;->val$context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/settings/EasyModeSettings;->access$400(Lcom/android/settings/EasyModeSettings;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 414
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings$3;->val$context:Landroid/content/Context;

    const-string v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    .line 415
    .local v1, "mPersona":Landroid/os/PersonaManager;
    invoke-virtual {v1, v5}, Landroid/os/PersonaManager;->launchPersonaHome(I)Z

    .line 416
    const-string v2, "EasyModeSettings"

    const-string v3, "Current mode is knox. Go out to personal to change launcher"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    .end local v1    # "mPersona":Landroid/os/PersonaManager;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 419
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "easymode"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 420
    const-string v2, "easymode_from"

    const-string v3, "settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings$3;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-virtual {v2}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 422
    const-string v2, "EasyModeSettings"

    const-string v3, "onClick 0_0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const-string v2, "com.android.settings.Settings$EasyModeLauncherActivity"

    iget-object v3, p0, Lcom/android/settings/EasyModeSettings$3;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-static {v3}, Lcom/android/settings/EasyModeSettings;->access$500(Lcom/android/settings/EasyModeSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 425
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings$3;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-virtual {v2, v5}, Lcom/android/settings/EasyModeSettings;->setDefaultLauncher(Z)V

    .line 430
    :goto_0
    return-void

    .line 429
    :cond_2
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings$3;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-virtual {v2}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
