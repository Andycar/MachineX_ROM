.class public Lcom/android/settings/nfc/SBeamStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SBeamStateReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 27
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 28
    :cond_0
    const-string v4, "[SBeam]"

    const-string v5, "intent is null!"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_1
    :goto_0
    return-void

    .line 32
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 37
    invoke-static {p1}, Lcom/android/settings/nfc/SBeamEnabler;->initPreferenceForSbeam(Landroid/content/Context;)V

    goto :goto_0

    .line 44
    :cond_3
    const-string v4, "android.nfc.action.ABEAM_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 46
    const-string v4, "android.nfc.extra.ABEAM_STATE"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 47
    .local v1, "bAbeamOn":Z
    const-string v4, "[SBeam]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SBeamStateReceiver : abeam > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    if-eqz v1, :cond_5

    .line 50
    invoke-static {p1}, Lcom/android/settings/nfc/SBeamEnabler;->getSBeamAllowCondition(Landroid/content/Context;)I

    move-result v4

    if-nez v4, :cond_5

    .line 51
    invoke-static {p1}, Lcom/android/settings/nfc/SBeamEnabler;->isSBeamLastStatusOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 52
    invoke-static {p1, v7, v8, v7}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZZ)V

    goto :goto_0

    .line 54
    :cond_4
    invoke-static {p1, v7}, Lcom/android/settings/nfc/SBeamEnabler;->updateState(Landroid/content/Context;Z)V

    goto :goto_0

    .line 59
    :cond_5
    invoke-static {p1, v8, v7, v7}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZZ)V

    goto :goto_0

    .line 66
    .end local v1    # "bAbeamOn":Z
    :cond_6
    const-string v4, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 69
    const-string v4, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 72
    .local v2, "newState":I
    if-ne v7, v2, :cond_8

    .line 74
    invoke-static {}, Lcom/android/settings/nfc/SBeamEnabler;->isPowerOff()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 75
    const-string v4, "[SBeam]"

    const-string v5, "SBeamStateReceiver : Ignore NFC off"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 79
    :cond_7
    invoke-static {p1, v8, v8, v7}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZZ)V

    goto :goto_0

    .line 80
    :cond_8
    const/4 v4, 0x3

    if-ne v4, v2, :cond_c

    .line 82
    invoke-static {p1}, Lcom/android/settings/nfc/SBeamEnabler;->isSBeamLastStatusOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 84
    invoke-static {p1}, Lcom/android/settings/nfc/SBeamEnabler;->getSBeamAllowCondition(Landroid/content/Context;)I

    move-result v4

    if-eqz v4, :cond_9

    .line 85
    invoke-static {p1, v8, v7, v7}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZZ)V

    goto/16 :goto_0

    .line 89
    :cond_9
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    .line 91
    .local v3, "nfcAdapter":Landroid/nfc/NfcAdapter;
    if-nez v3, :cond_a

    .line 92
    const-string v4, "[SBeam]"

    const-string v5, "SBeamStateReceiver : can\'t load nfcadpater(nfcAdapter is null)"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 96
    :cond_a
    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 97
    const-string v4, "[SBeam]"

    const-string v5, "SBeamStateReceiver : restore status because of NFC"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {p1, v7, v8, v7}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZZ)V

    goto/16 :goto_0

    .line 103
    .end local v3    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :cond_b
    invoke-static {p1, v7}, Lcom/android/settings/nfc/SBeamEnabler;->updateState(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 105
    :cond_c
    const/4 v4, 0x5

    if-ne v4, v2, :cond_1

    .line 106
    const-string v4, "[SBeam]"

    const-string v5, "SBeamStateReceiver : R/W P2P turn off"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {p1, v8, v8, v7}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZZ)V

    goto/16 :goto_0

    .line 160
    .end local v2    # "newState":I
    :cond_d
    const-string v4, "com.android.nfc.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 162
    invoke-static {p1}, Lcom/android/settings/nfc/SBeamEnabler;->isSBeamOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p1}, Lcom/android/settings/nfc/SBeamEnabler;->isAllowWifiByDevicePolicy(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 164
    const-string v4, "[SBeam]"

    const-string v5, "SBeamStateReceiver : apply eas policy"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {p1, v8, v7, v8}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZZ)V

    .line 166
    invoke-static {p1}, Lcom/android/settings/nfc/SBeamEnabler;->showNotAllowWifi(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
