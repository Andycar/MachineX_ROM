.class Lcom/android/settings/cloud/CloudSettingsMainFragment$3;
.super Ljava/lang/Object;
.source "CloudSettingsMainFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cloud/CloudSettingsMainFragment;
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
    .line 1178
    iput-object p1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1182
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-static {v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$400(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1183
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    iget-object v4, v4, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    if-nez v4, :cond_0

    .line 1184
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    iget-object v5, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-virtual {v5}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    const v7, 0x7f0a18e4

    invoke-virtual {v6, v7}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    .line 1186
    :cond_0
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    iget-object v4, v4, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    iget-object v4, v4, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1187
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    iget-object v4, v4, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1213
    :cond_1
    :goto_0
    return v8

    .line 1190
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1191
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-virtual {v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "com.android.settings.cloud.cloudsettingsmainfragment"

    invoke-virtual {v4, v5, v9}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1192
    .local v0, "ReverbSharedPrefs":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 1193
    .local v1, "doNotShowData":Z
    const/4 v2, 0x0

    .line 1195
    .local v2, "doNotShowWlan":Z
    if-eqz v0, :cond_1

    .line 1196
    const-string v4, "DoNotShowDialogData"

    invoke-interface {v0, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1197
    const-string v4, "DoNotShowDialogWlan"

    invoke-interface {v0, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1198
    const-string v4, "enable"

    invoke-interface {v0, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1199
    .local v3, "mCloudChargeEnable":Z
    const-string v4, "CloudSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doNotShowData="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doNotShowWlan="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mCloudChargeEnable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    if-nez v1, :cond_3

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-virtual {v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isMobileDataConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1202
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-static {v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$900(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V

    goto :goto_0

    .line 1203
    :cond_3
    if-nez v2, :cond_4

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-virtual {v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isMobileDataConnected(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1204
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-static {v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$900(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V

    goto :goto_0

    .line 1206
    :cond_4
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-static {v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$1000(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V

    goto/16 :goto_0

    .line 1210
    .end local v0    # "ReverbSharedPrefs":Landroid/content/SharedPreferences;
    .end local v1    # "doNotShowData":Z
    .end local v2    # "doNotShowWlan":Z
    .end local v3    # "mCloudChargeEnable":Z
    :cond_5
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-static {v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$1000(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V

    goto/16 :goto_0
.end method
