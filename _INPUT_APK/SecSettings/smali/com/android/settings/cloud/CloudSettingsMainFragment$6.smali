.class Lcom/android/settings/cloud/CloudSettingsMainFragment$6;
.super Ljava/lang/Object;
.source "CloudSettingsMainFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cloud/CloudSettingsMainFragment;->showCloudChargeEnableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

.field final synthetic val$layout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/cloud/CloudSettingsMainFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1258
    iput-object p1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$6;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    iput-object p2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$6;->val$layout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v5, 0x1

    .line 1260
    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$6;->val$layout:Landroid/view/View;

    const v4, 0x7f100167

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 1261
    .local v1, "check":Landroid/widget/CheckBox;
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1262
    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$6;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-virtual {v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.android.settings.cloud.cloudsettingsmainfragment"

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1263
    .local v0, "ReverbSharedPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1264
    .local v2, "ed":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$6;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    iget-boolean v3, v3, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mIsMobileConnected:Z

    if-eqz v3, :cond_1

    .line 1265
    const-string v3, "DoNotShowDialogData"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1270
    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1272
    .end local v0    # "ReverbSharedPrefs":Landroid/content/SharedPreferences;
    .end local v2    # "ed":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void

    .line 1268
    .restart local v0    # "ReverbSharedPrefs":Landroid/content/SharedPreferences;
    .restart local v2    # "ed":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const-string v3, "DoNotShowDialogWlan"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
