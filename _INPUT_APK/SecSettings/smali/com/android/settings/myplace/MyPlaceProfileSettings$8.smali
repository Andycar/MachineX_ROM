.class Lcom/android/settings/myplace/MyPlaceProfileSettings$8;
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
    .line 1063
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$8;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const v10, 0x7f0a140f

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1066
    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    .line 1067
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v4

    .line 1069
    .local v4, "selected":I
    const-string v5, "MyPlaceSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "click ok on Select method dialog : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    if-nez v4, :cond_0

    .line 1073
    const-string v5, "MyPlaceSettings"

    const-string v6, "wifi is clicked. start wifi network picker"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.net.wifi.PICK_WIFI_NETWORK_RESULT"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1077
    .local v2, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$8;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v5, v2, v8}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1118
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1079
    :cond_0
    if-ne v4, v8, :cond_5

    .line 1080
    const-string v5, "MyPlaceSettings"

    const-string v6, "bt is clicked. start bt device picker"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.settings.bluetooth.CheckBluetoothLEStateActivity"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1084
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$8;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$3000(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1085
    const-string v5, "fromHelp"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1086
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 1087
    .local v3, "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v3, :cond_2

    .line 1088
    :goto_1
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_1

    .line 1089
    const-string v5, "MyPlaceSettings"

    const-string v6, "Bluetooth is in TURNING_OFF state. Wait for 300ms to TURN_OFF"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    const-wide/16 v6, 0x12c

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1092
    :catch_0
    move-exception v1

    .line 1093
    .local v1, "ignored":Ljava/lang/InterruptedException;
    const-string v5, "MyPlaceSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InterruptedException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1096
    .end local v1    # "ignored":Ljava/lang/InterruptedException;
    :cond_1
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_2

    .line 1097
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$8;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2700(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1098
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 1104
    .end local v3    # "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$8;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2700(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1106
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$8;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    const/4 v6, 0x2

    invoke-virtual {v5, v2, v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1100
    .restart local v3    # "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_3
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$8;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$8;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v6, v10}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 1111
    .end local v3    # "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_4
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$8;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$8;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v6, v10}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1114
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$8;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->resetPlaceInfo()V

    .line 1115
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$8;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2800(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Landroid/preference/PreferenceScreen;

    .line 1116
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$8;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2900(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    goto/16 :goto_0
.end method
