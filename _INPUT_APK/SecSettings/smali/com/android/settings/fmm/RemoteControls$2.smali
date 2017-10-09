.class Lcom/android/settings/fmm/RemoteControls$2;
.super Ljava/lang/Object;
.source "RemoteControls.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fmm/RemoteControls;->showMobileDateChargeEnableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fmm/RemoteControls;

.field final synthetic val$layout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/fmm/RemoteControls;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lcom/android/settings/fmm/RemoteControls$2;->this$0:Lcom/android/settings/fmm/RemoteControls;

    iput-object p2, p0, Lcom/android/settings/fmm/RemoteControls$2;->val$layout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x1

    .line 486
    const-string v4, "RemoteControls"

    const-string v5, "showMobileDateChargeEnableDialog enable"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v4, p0, Lcom/android/settings/fmm/RemoteControls$2;->this$0:Lcom/android/settings/fmm/RemoteControls;

    invoke-virtual {v4}, Lcom/android/settings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 488
    iget-object v4, p0, Lcom/android/settings/fmm/RemoteControls$2;->this$0:Lcom/android/settings/fmm/RemoteControls;

    invoke-virtual {v4, v6}, Lcom/android/settings/fmm/RemoteControls;->SetReactivationFlag(I)I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 489
    iget-object v4, p0, Lcom/android/settings/fmm/RemoteControls$2;->this$0:Lcom/android/settings/fmm/RemoteControls;

    invoke-static {v4}, Lcom/android/settings/fmm/RemoteControls;->access$500(Lcom/android/settings/fmm/RemoteControls;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "remote_control"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 490
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.remotecontrol_on"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 491
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "RemoteControls"

    const-string v5, " onCheckedChanged[remotecontrol_on]"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v4, p0, Lcom/android/settings/fmm/RemoteControls$2;->this$0:Lcom/android/settings/fmm/RemoteControls;

    invoke-virtual {v4}, Lcom/android/settings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 497
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/fmm/RemoteControls$2;->val$layout:Landroid/view/View;

    const v5, 0x7f100167

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 498
    .local v1, "check":Landroid/widget/CheckBox;
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 499
    iget-object v4, p0, Lcom/android/settings/fmm/RemoteControls$2;->this$0:Lcom/android/settings/fmm/RemoteControls;

    invoke-virtual {v4}, Lcom/android/settings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "com.android.settings.fmm.remotecontrols"

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 500
    .local v0, "ReverbSharedPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 501
    .local v2, "ed":Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lcom/android/settings/fmm/RemoteControls$2;->this$0:Lcom/android/settings/fmm/RemoteControls;

    iget-boolean v4, v4, Lcom/android/settings/fmm/RemoteControls;->mIsMobileConnected:Z

    if-eqz v4, :cond_3

    .line 502
    const-string v4, "DoNotShowDialogData"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 507
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 509
    .end local v0    # "ReverbSharedPrefs":Landroid/content/SharedPreferences;
    .end local v2    # "ed":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void

    .line 495
    .end local v1    # "check":Landroid/widget/CheckBox;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/fmm/RemoteControls$2;->this$0:Lcom/android/settings/fmm/RemoteControls;

    invoke-static {v4}, Lcom/android/settings/fmm/RemoteControls;->access$600(Lcom/android/settings/fmm/RemoteControls;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "remote_control"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 505
    .restart local v0    # "ReverbSharedPrefs":Landroid/content/SharedPreferences;
    .restart local v1    # "check":Landroid/widget/CheckBox;
    .restart local v2    # "ed":Landroid/content/SharedPreferences$Editor;
    :cond_3
    const-string v4, "DoNotShowDialogWlan"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method
