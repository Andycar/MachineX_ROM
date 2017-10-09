.class Lcom/android/settings/cloud/CloudSettingsMainFragment$4;
.super Ljava/lang/Object;
.source "CloudSettingsMainFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V
    .locals 0

    .prologue
    .line 1239
    iput-object p1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$4;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x1

    .line 1241
    const-string v2, "CloudSettings"

    const-string v3, "showCloudChargeEnableDialog enable"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$4;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-virtual {v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.android.settings.cloud.cloudsettingsmainfragment"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1243
    .local v0, "ReverbSharedPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1244
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v2, "enable"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1245
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1246
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$4;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-static {v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$1000(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V

    .line 1247
    return-void
.end method
