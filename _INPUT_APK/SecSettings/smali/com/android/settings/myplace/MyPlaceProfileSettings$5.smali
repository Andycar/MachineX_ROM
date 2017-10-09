.class Lcom/android/settings/myplace/MyPlaceProfileSettings$5;
.super Ljava/lang/Object;
.source "MyPlaceProfileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/myplace/MyPlaceProfileSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V
    .locals 0

    .prologue
    .line 936
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 939
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    iput-object p1, v6, Lcom/android/settings/myplace/MyPlaceProfileSettings;->alert:Landroid/app/AlertDialog;

    .line 940
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    iget-object v6, v6, Lcom/android/settings/myplace/MyPlaceProfileSettings;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v5

    .line 942
    .local v5, "selected":I
    const-string v6, "MyPlaceSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "click ok on Select method dialog : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    if-nez v5, :cond_5

    .line 946
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->checkNetwork()Z

    move-result v6

    if-nez v6, :cond_1

    .line 947
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0a19e7

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 1000
    :cond_0
    :goto_0
    return-void

    .line 952
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 953
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "com.android.settings.myplace.MyPlaceProfileSettings"

    invoke-virtual {v6, v7, v10}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 954
    .local v0, "ReverbSharedPrefs":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 955
    .local v1, "doNotShowData":Z
    const/4 v2, 0x0

    .line 956
    .local v2, "doNotShowWlan":Z
    if-eqz v0, :cond_0

    .line 957
    const-string v6, "DoNotShowDialogData"

    invoke-interface {v0, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 958
    const-string v6, "DoNotShowDialogWlan"

    invoke-interface {v0, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 959
    const-string v6, "enable"

    invoke-interface {v0, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 960
    .local v4, "mCloudChargeEnable":Z
    const-string v6, "MyPlaceSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doNotShowData="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " doNotShowWlan="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mCloudChargeEnable="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    if-nez v1, :cond_2

    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isMobileDataConnected()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 962
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2500(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    goto :goto_0

    .line 963
    :cond_2
    if-nez v2, :cond_3

    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isMobileDataConnected()Z

    move-result v6

    if-nez v6, :cond_3

    .line 964
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2500(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    goto :goto_0

    .line 967
    :cond_3
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2600(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    goto :goto_0

    .line 971
    .end local v0    # "ReverbSharedPrefs":Landroid/content/SharedPreferences;
    .end local v1    # "doNotShowData":Z
    .end local v2    # "doNotShowWlan":Z
    .end local v4    # "mCloudChargeEnable":Z
    :cond_4
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2600(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    goto :goto_0

    .line 974
    :cond_5
    if-ne v5, v10, :cond_6

    .line 975
    const-string v6, "MyPlaceSettings"

    const-string v7, "wifi is clicked. start wifi network picker"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.net.wifi.PICK_WIFI_NETWORK_RESULT"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 979
    .local v3, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v6, v3, v10}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 981
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_6
    if-ne v5, v11, :cond_8

    .line 982
    const-string v6, "MyPlaceSettings"

    const-string v7, "bt is clicked. start bt device picker"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.android.settings.bluetooth.CheckBluetoothLEStateActivity"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 986
    .restart local v3    # "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2700(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 988
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v6, v3, v11}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 993
    :cond_7
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    const v8, 0x7f0a140f

    invoke-virtual {v7, v8}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 996
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_8
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->resetPlaceInfo()V

    .line 997
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2800(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Landroid/preference/PreferenceScreen;

    .line 998
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2900(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    goto/16 :goto_0
.end method
