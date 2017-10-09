.class Lcom/android/settings/wifi/hs20/Hs20UtilityService$UtilityHandler;
.super Landroid/os/Handler;
.source "Hs20UtilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/hs20/Hs20UtilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UtilityHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/hs20/Hs20UtilityService;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/hs20/Hs20UtilityService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/settings/wifi/hs20/Hs20UtilityService$UtilityHandler;->this$0:Lcom/android/settings/wifi/hs20/Hs20UtilityService;

    .line 123
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 124
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 128
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/Bundle;

    .line 129
    .local v10, "arguments":Landroid/os/Bundle;
    const-string v3, "com.android.settings.wifi.hs20.utility_action_type"

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 130
    .local v9, "actionType":I
    const-string v3, "Hs20UtilService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Message received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    packed-switch v9, :pswitch_data_0

    .line 199
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 133
    :pswitch_1
    const-string v3, "networkInfo"

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/net/NetworkInfo;

    .line 134
    .local v17, "netInfo":Landroid/net/NetworkInfo;
    if-nez v17, :cond_1

    .line 135
    const-string v3, "Hs20UtilService"

    const-string v4, "NetworkInfo is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 139
    const-string v3, "wifiInfo"

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Landroid/net/wifi/WifiInfo;

    .line 140
    .local v20, "wifiInfo":Landroid/net/wifi/WifiInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/hs20/Hs20UtilityService$UtilityHandler;->this$0:Lcom/android/settings/wifi/hs20/Hs20UtilityService;

    iget-object v3, v3, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/wifi/WifiManager;

    .line 141
    .local v16, "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v18

    .line 142
    .local v18, "newConfiguration":Landroid/net/wifi/WifiConfiguration;
    if-eqz v18, :cond_0

    move-object/from16 v0, v18

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 143
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/hs20/Hs20UtilityService$UtilityHandler;->this$0:Lcom/android/settings/wifi/hs20/Hs20UtilityService;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->showHS20WifiNotification(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 145
    .end local v16    # "mWifiManager":Landroid/net/wifi/WifiManager;
    .end local v18    # "newConfiguration":Landroid/net/wifi/WifiConfiguration;
    .end local v20    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/hs20/Hs20UtilityService$UtilityHandler;->this$0:Lcom/android/settings/wifi/hs20/Hs20UtilityService;

    invoke-static {v3}, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->access$000(Lcom/android/settings/wifi/hs20/Hs20UtilityService;)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_0

    .line 147
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/hs20/Hs20UtilityService$UtilityHandler;->this$0:Lcom/android/settings/wifi/hs20/Hs20UtilityService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->showHS20WifiNotification(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 151
    .end local v17    # "netInfo":Landroid/net/NetworkInfo;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/hs20/Hs20UtilityService$UtilityHandler;->this$0:Lcom/android/settings/wifi/hs20/Hs20UtilityService;

    invoke-static {v3}, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->access$000(Lcom/android/settings/wifi/hs20/Hs20UtilityService;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/hs20/Hs20UtilityService$UtilityHandler;->this$0:Lcom/android/settings/wifi/hs20/Hs20UtilityService;

    iget-object v3, v3, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/wifi/WifiManager;

    .line 154
    .restart local v16    # "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v20

    .line 155
    .restart local v20    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 156
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v13

    .line 158
    .local v13, "configuration":Landroid/net/wifi/WifiConfiguration;
    if-eqz v13, :cond_0

    iget v3, v13, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 159
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/hs20/Hs20UtilityService$UtilityHandler;->this$0:Lcom/android/settings/wifi/hs20/Hs20UtilityService;

    invoke-virtual {v3, v13}, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->showHS20WifiNotification(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    .line 165
    .end local v13    # "configuration":Landroid/net/wifi/WifiConfiguration;
    .end local v16    # "mWifiManager":Landroid/net/wifi/WifiManager;
    .end local v20    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :pswitch_3
    const-string v3, "url"

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 166
    .local v19, "url":Ljava/lang/String;
    const-string v3, "http://"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "https://"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 169
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/hs20/Hs20UtilityService$UtilityHandler;->this$0:Lcom/android/settings/wifi/hs20/Hs20UtilityService;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->downloadPage(Ljava/lang/String;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/hs20/Hs20UtilityService$UtilityHandler;->this$0:Lcom/android/settings/wifi/hs20/Hs20UtilityService;

    invoke-static {v3}, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->access$100(Lcom/android/settings/wifi/hs20/Hs20UtilityService;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 172
    .local v14, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v3, "wnm_url"

    move-object/from16 v0, v19

    invoke-interface {v14, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 173
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 176
    .end local v14    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v19    # "url":Ljava/lang/String;
    :pswitch_4
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 177
    .local v12, "clearBlackListmsg":Landroid/os/Message;
    const/16 v3, 0x2b

    iput v3, v12, Landroid/os/Message;->what:I

    .line 178
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/hs20/Hs20UtilityService$UtilityHandler;->this$0:Lcom/android/settings/wifi/hs20/Hs20UtilityService;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/wifi/WifiManager;

    .line 179
    .restart local v16    # "mWifiManager":Landroid/net/wifi/WifiManager;
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    const-string v3, "Hs20UtilService"

    const-string v4, "SEC_COMMAND_ID_HS20_CLEAR_BLACKLIST FAILED"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 185
    .end local v12    # "clearBlackListmsg":Landroid/os/Message;
    .end local v16    # "mWifiManager":Landroid/net/wifi/WifiManager;
    :pswitch_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 186
    .local v11, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 187
    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 189
    new-instance v15, Landroid/content/Intent;

    const-string v3, "com.android.settings.wifi.hs20.blacklist_alarm"

    invoke-direct {v15, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .local v15, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/hs20/Hs20UtilityService$UtilityHandler;->this$0:Lcom/android/settings/wifi/hs20/Hs20UtilityService;

    iget-object v3, v3, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v15, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 192
    .local v8, "alarmIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/hs20/Hs20UtilityService$UtilityHandler;->this$0:Lcom/android/settings/wifi/hs20/Hs20UtilityService;

    iget-object v3, v3, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 193
    .local v2, "alarmMgr":Landroid/app/AlarmManager;
    const/4 v3, 0x3

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x1389
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
