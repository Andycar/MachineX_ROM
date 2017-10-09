.class Lcom/android/server/power/ShutdownThread$9;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J

.field final synthetic val$mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;Landroid/net/wifi/WifiManager;J[Z)V
    .registers 7

    .prologue
    .line 866
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$9;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$9;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    iput-wide p3, p0, Lcom/android/server/power/ShutdownThread$9;->val$endTime:J

    iput-object p5, p0, Lcom/android/server/power/ShutdownThread$9;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 868
    const-string v14, "ShutdownThread"

    const-string v15, "!@Start shutdown radios"

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const-string/jumbo v14, "sys.deviceOffReq"

    const-string v15, "1"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    const-string/jumbo v14, "sys.radio.shutdown"

    const-string/jumbo v15, "true"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    const-string v14, "nfc"

    invoke-static {v14}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v8

    .line 880
    .local v8, "nfc":Landroid/nfc/INfcAdapter;
    const-string/jumbo v14, "phone"

    invoke-static {v14}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v10

    .line 882
    .local v10, "phone":Lcom/android/internal/telephony/ITelephony;
    const-string v14, "bluetooth_manager"

    invoke-static {v14}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v3

    .line 887
    .local v3, "bluetooth":Landroid/bluetooth/IBluetoothManager;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/power/ShutdownThread$9;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v14, :cond_54

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/power/ShutdownThread$9;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_133

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/power/ShutdownThread$9;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v14

    const/16 v15, 0xb

    if-ne v14, v15, :cond_133

    :cond_54
    const/4 v2, 0x1

    .line 890
    .local v2, "WiFiOff":Z
    :goto_55
    if-nez v2, :cond_6e

    .line 891
    const-string v14, "ShutdownThread"

    const-string v15, "Disabling WiFi..."

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 893
    .local v7, "msg":Landroid/os/Message;
    const/16 v14, 0xe6

    iput v14, v7, Landroid/os/Message;->what:I

    .line 895
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/power/ShutdownThread$9;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v14, v7}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 897
    .end local v7    # "msg":Landroid/os/Message;
    :cond_6e
    const-string v14, "ShutdownThread"

    const-string v15, "Waiting for NFC, Bluetooth, Wi-Fi and Radio..."

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    if-eqz v8, :cond_7e

    :try_start_77
    invoke-interface {v8}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_136

    :cond_7e
    const/4 v9, 0x1

    .line 906
    .local v9, "nfcOff":Z
    :goto_7f
    if-nez v9, :cond_8c

    .line 907
    const-string v14, "ShutdownThread"

    const-string v15, "Turning off NFC..."

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const/4 v14, 0x0

    invoke-interface {v8, v14}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_8c} :catch_139

    .line 917
    :cond_8c
    :goto_8c
    if-eqz v3, :cond_91

    .line 918
    :try_start_8e
    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->dumpInFile()V
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_8e .. :try_end_91} :catch_144

    .line 938
    :cond_91
    :goto_91
    const/4 v4, 0x1

    .line 942
    .local v4, "bluetoothOff":Z
    if-eqz v10, :cond_9a

    :try_start_94
    invoke-interface {v10}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v14

    if-nez v14, :cond_14e

    :cond_9a
    const/4 v11, 0x1

    .line 943
    .local v11, "radioOff":Z
    :goto_9b
    if-nez v11, :cond_a7

    .line 944
    const-string v14, "ShutdownThread"

    const-string v15, "Turning off cellular radios..."

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    invoke-interface {v10}, Lcom/android/internal/telephony/ITelephony;->shutdownMobileRadios()V
    :try_end_a7
    .catch Landroid/os/RemoteException; {:try_start_94 .. :try_end_a7} :catch_151

    .line 952
    :cond_a7
    :goto_a7
    const-string v14, "ShutdownThread"

    const-string v15, "Waiting for NFC, Bluetooth and Radio..."

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :goto_ae
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/ShutdownThread$9;->val$endTime:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-gez v14, :cond_132

    .line 956
    const-string v14, "ShutdownThread"

    const-string v15, "!@Skip bluetooth turned off for reconnection concept."

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    if-nez v11, :cond_d5

    .line 973
    :try_start_c5
    invoke-interface {v10}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z
    :try_end_c8
    .catch Landroid/os/RemoteException; {:try_start_c5 .. :try_end_c8} :catch_15f

    move-result v14

    if-nez v14, :cond_15c

    const/4 v11, 0x1

    .line 978
    :goto_cc
    if-eqz v11, :cond_d5

    .line 979
    const-string v14, "ShutdownThread"

    const-string v15, "!@Radio turned off."

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_d5
    const-string v14, "DCGS"

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_109

    .line 983
    const-string/jumbo v14, "ril.deviceOffRes"

    const-string v15, "0"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 984
    .local v12, "repPhoneOff":Ljava/lang/String;
    const-string/jumbo v14, "ril.deviceOffRes2"

    const-string v15, "0"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 985
    .local v13, "repPhoneOff2":Ljava/lang/String;
    const-string v14, "1"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_109

    const-string v14, "1"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_109

    .line 987
    const-string v14, "ShutdownThread"

    const-string v15, "!@PhoneOff req resp"

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    const/4 v11, 0x1

    .line 991
    .end local v12    # "repPhoneOff":Ljava/lang/String;
    .end local v13    # "repPhoneOff2":Ljava/lang/String;
    :cond_109
    if-nez v9, :cond_11c

    .line 993
    :try_start_10b
    invoke-interface {v8}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_10e
    .catch Landroid/os/RemoteException; {:try_start_10b .. :try_end_10e} :catch_16c

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_16a

    const/4 v9, 0x1

    .line 998
    :goto_113
    if-eqz v9, :cond_11c

    .line 999
    const-string v14, "ShutdownThread"

    const-string v15, "!@NFC turned off."

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    :cond_11c
    if-eqz v11, :cond_176

    if-eqz v4, :cond_176

    if-eqz v9, :cond_176

    .line 1004
    const-string v14, "ShutdownThread"

    const-string v15, "NFC, Radio and Bluetooth shutdown complete."

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/power/ShutdownThread$9;->val$done:[Z

    const/4 v15, 0x0

    const/16 v16, 0x1

    aput-boolean v16, v14, v15

    .line 1020
    :cond_132
    return-void

    .line 887
    .end local v2    # "WiFiOff":Z
    .end local v4    # "bluetoothOff":Z
    .end local v9    # "nfcOff":Z
    .end local v11    # "radioOff":Z
    :cond_133
    const/4 v2, 0x0

    goto/16 :goto_55

    .line 904
    .restart local v2    # "WiFiOff":Z
    :cond_136
    const/4 v9, 0x0

    goto/16 :goto_7f

    .line 910
    :catch_139
    move-exception v6

    .line 911
    .local v6, "ex":Landroid/os/RemoteException;
    const-string v14, "ShutdownThread"

    const-string v15, "RemoteException during NFC shutdown"

    invoke-static {v14, v15, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 912
    const/4 v9, 0x1

    .restart local v9    # "nfcOff":Z
    goto/16 :goto_8c

    .line 920
    .end local v6    # "ex":Landroid/os/RemoteException;
    :catch_144
    move-exception v6

    .line 921
    .restart local v6    # "ex":Landroid/os/RemoteException;
    const-string v14, "ShutdownThread"

    const-string v15, "RemoteException during bluetooth permanent log dump"

    invoke-static {v14, v15, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto/16 :goto_91

    .line 942
    .end local v6    # "ex":Landroid/os/RemoteException;
    .restart local v4    # "bluetoothOff":Z
    :cond_14e
    const/4 v11, 0x0

    goto/16 :goto_9b

    .line 947
    :catch_151
    move-exception v6

    .line 948
    .restart local v6    # "ex":Landroid/os/RemoteException;
    const-string v14, "ShutdownThread"

    const-string v15, "RemoteException during radio shutdown"

    invoke-static {v14, v15, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 949
    const/4 v11, 0x1

    .restart local v11    # "radioOff":Z
    goto/16 :goto_a7

    .line 973
    .end local v6    # "ex":Landroid/os/RemoteException;
    :cond_15c
    const/4 v11, 0x0

    goto/16 :goto_cc

    .line 974
    :catch_15f
    move-exception v6

    .line 975
    .restart local v6    # "ex":Landroid/os/RemoteException;
    const-string v14, "ShutdownThread"

    const-string v15, "RemoteException during radio shutdown"

    invoke-static {v14, v15, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 976
    const/4 v11, 0x1

    goto/16 :goto_cc

    .line 993
    .end local v6    # "ex":Landroid/os/RemoteException;
    :cond_16a
    const/4 v9, 0x0

    goto :goto_113

    .line 994
    :catch_16c
    move-exception v6

    .line 995
    .restart local v6    # "ex":Landroid/os/RemoteException;
    const-string v14, "ShutdownThread"

    const-string v15, "RemoteException during NFC shutdown"

    invoke-static {v14, v15, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 996
    const/4 v9, 0x1

    goto :goto_113

    .line 1008
    .end local v6    # "ex":Landroid/os/RemoteException;
    :cond_176
    const-string v14, "ShutdownThread"

    const-string v15, "!@before sleep"

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    const-wide/16 v14, 0x1f4

    :try_start_17f
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_182
    .catch Ljava/lang/InterruptedException; {:try_start_17f .. :try_end_182} :catch_1df

    .line 1014
    :goto_182
    const-string v14, "ShutdownThread"

    const-string v15, "!@after sleep"

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    const-string v14, "ShutdownThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "!@[Phone off retry:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/ShutdownThread$9;->val$endTime:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " radio="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " bluetooth="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " nfcOff="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " WiFiOff="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ae

    .line 1011
    :catch_1df
    move-exception v5

    .line 1012
    .local v5, "e":Ljava/lang/InterruptedException;
    const-string v14, "ShutdownThread"

    const-string v15, "InterruptedException"

    invoke-static {v14, v15, v5}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_182
.end method
