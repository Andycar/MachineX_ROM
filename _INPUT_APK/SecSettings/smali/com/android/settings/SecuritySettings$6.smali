.class Lcom/android/settings/SecuritySettings$6;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SecuritySettings;->warnAppInstallationFromPackageInstaller()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SecuritySettings;

.field final synthetic val$mCheck:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/SecuritySettings;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 1266
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$6;->this$0:Lcom/android/settings/SecuritySettings;

    iput-object p2, p0, Lcom/android/settings/SecuritySettings$6;->val$mCheck:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/16 v5, 0x3e8

    const/4 v4, 0x1

    .line 1268
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$6;->val$mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1269
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$6;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v2}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "one_time_operate"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1270
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$6;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v2}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1271
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "sec.android.intent.extra.INSTALL_INTENT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1272
    .local v1, "installIntent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.NOT_UNKNOWN_SOURCE"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1273
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$6;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v2, v1, v5}, Lcom/android/settings/SecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1274
    const-string v2, "SecuritySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCheck"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/SecuritySettings$6;->val$mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$6;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v2}, Lcom/android/settings/SecuritySettings;->finish()V

    .line 1287
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "installIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1277
    :cond_1
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$6;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-static {v2, v4}, Lcom/android/settings/SecuritySettings;->access$200(Lcom/android/settings/SecuritySettings;Z)V

    .line 1278
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$6;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-static {v2}, Lcom/android/settings/SecuritySettings;->access$300(Lcom/android/settings/SecuritySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1279
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$6;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-static {v2}, Lcom/android/settings/SecuritySettings;->access$300(Lcom/android/settings/SecuritySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1280
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$6;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v2}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "one_time_operate"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1281
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$6;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v2}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1282
    .restart local v0    # "extras":Landroid/os/Bundle;
    const-string v2, "sec.android.intent.extra.INSTALL_INTENT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1283
    .restart local v1    # "installIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$6;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v2, v1, v5}, Lcom/android/settings/SecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1284
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$6;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v2}, Lcom/android/settings/SecuritySettings;->finish()V

    goto :goto_0
.end method
