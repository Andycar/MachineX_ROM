.class public Lcom/android/settings/MobileDataEnabler;
.super Ljava/lang/Object;
.source "MobileDataEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MobileDataEnabler$DataEnabledObserver;,
        Lcom/android/settings/MobileDataEnabler$SwitchHandler;
    }
.end annotation


# static fields
.field private static toastAlert:Landroid/widget/Toast;


# instance fields
.field private isAirPlaneMode:I

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mContext:Landroid/content/Context;

.field private mDataEnabledObserver:Lcom/android/settings/MobileDataEnabler$DataEnabledObserver;

.field private mHandler:Lcom/android/settings/MobileDataEnabler$SwitchHandler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachineEvent:Z

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    new-instance v0, Lcom/android/settings/MobileDataEnabler$9;

    invoke-direct {v0, p0}, Lcom/android/settings/MobileDataEnabler$9;-><init>(Lcom/android/settings/MobileDataEnabler;)V

    iput-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 57
    iput-object p1, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Landroid/widget/Switch;

    .line 59
    new-instance v0, Lcom/android/settings/MobileDataEnabler$DataEnabledObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/MobileDataEnabler$DataEnabledObserver;-><init>(Lcom/android/settings/MobileDataEnabler;)V

    iput-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mDataEnabledObserver:Lcom/android/settings/MobileDataEnabler$DataEnabledObserver;

    .line 60
    new-instance v0, Lcom/android/settings/MobileDataEnabler$SwitchHandler;

    invoke-direct {v0, p0}, Lcom/android/settings/MobileDataEnabler$SwitchHandler;-><init>(Lcom/android/settings/MobileDataEnabler;)V

    iput-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mHandler:Lcom/android/settings/MobileDataEnabler$SwitchHandler;

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 62
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "ACTION_CARD_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/settings/MobileDataEnabler;->toastAlert:Landroid/widget/Toast;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MobileDataEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MobileDataEnabler;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/MobileDataEnabler;)Lcom/android/settings/MobileDataEnabler$SwitchHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MobileDataEnabler;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mHandler:Lcom/android/settings/MobileDataEnabler$SwitchHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/MobileDataEnabler;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MobileDataEnabler;

    .prologue
    .line 41
    iget v0, p0, Lcom/android/settings/MobileDataEnabler;->isAirPlaneMode:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/MobileDataEnabler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MobileDataEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/android/settings/MobileDataEnabler;->isAirPlaneMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/MobileDataEnabler;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MobileDataEnabler;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private onRoamingDisplayMobileDataOnAlert()V
    .locals 3

    .prologue
    .line 172
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 173
    .local v0, "dataRoamPopup":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a0d39

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 174
    const v1, 0x7f0a17c8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 175
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 176
    const v1, 0x7f0a17c7

    new-instance v2, Lcom/android/settings/MobileDataEnabler$1;

    invoke-direct {v2, p0}, Lcom/android/settings/MobileDataEnabler$1;-><init>(Lcom/android/settings/MobileDataEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 183
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 184
    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings/MobileDataEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings/MobileDataEnabler$2;-><init>(Lcom/android/settings/MobileDataEnabler;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 195
    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 196
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 13
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v12, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 111
    iget-boolean v10, p0, Lcom/android/settings/MobileDataEnabler;->mStateMachineEvent:Z

    if-eqz v10, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v10, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "airplane_mode_on"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/settings/MobileDataEnabler;->isAirPlaneMode:I

    .line 116
    iget v10, p0, Lcom/android/settings/MobileDataEnabler;->isAirPlaneMode:I

    if-ne v10, v9, :cond_2

    .line 117
    sget-object v8, Lcom/android/settings/MobileDataEnabler;->toastAlert:Landroid/widget/Toast;

    const v9, 0x7f0a199d

    invoke-virtual {v8, v9}, Landroid/widget/Toast;->setText(I)V

    .line 118
    sget-object v8, Lcom/android/settings/MobileDataEnabler;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 119
    iget-object v8, p0, Lcom/android/settings/MobileDataEnabler;->mHandler:Lcom/android/settings/MobileDataEnabler$SwitchHandler;

    invoke-virtual {v8, v12}, Lcom/android/settings/MobileDataEnabler$SwitchHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 123
    :cond_2
    const-string v10, "gsm.sim.currentcardstatus"

    const-string v11, "9"

    invoke-static {v10, v8, v11}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "cardStatus1":Ljava/lang/String;
    const-string v10, "gsm.sim.currentcardstatus"

    const-string v11, "9"

    invoke-static {v10, v9, v11}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "cardStatus2":Ljava/lang/String;
    const-string v10, "3"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "3"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 127
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 128
    .local v2, "insertSimPopup":Landroid/app/AlertDialog$Builder;
    iget-object v8, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0de0

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->replaceSIMString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0de1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->replaceSIMString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x104000a

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 131
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/MobileDataEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 132
    iget-object v8, p0, Lcom/android/settings/MobileDataEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 133
    iget-object v8, p0, Lcom/android/settings/MobileDataEnabler;->mHandler:Lcom/android/settings/MobileDataEnabler$SwitchHandler;

    invoke-virtual {v8, v12}, Lcom/android/settings/MobileDataEnabler$SwitchHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 136
    .end local v2    # "insertSimPopup":Landroid/app/AlertDialog$Builder;
    :cond_3
    iget-object v10, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    const-string v11, "phone"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 139
    .local v7, "tm":Landroid/telephony/TelephonyManager;
    const-string v10, "gsm.operator.isroaming"

    const-string v11, ""

    invoke-static {v10, v8, v11}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, "isRoamingSlot1":Ljava/lang/String;
    const-string v10, "gsm.operator.isroaming"

    const-string v11, ""

    invoke-static {v10, v9, v11}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 141
    .local v5, "isRoamingSlot2":Ljava/lang/String;
    const-string v10, "true"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "true"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_4
    move v3, v9

    .line 143
    .local v3, "isRoaming":Z
    :goto_1
    iget-object v10, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "EverPoppedUp"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 145
    .local v6, "mCheckedRoamingOn":I
    const-string v10, "MobileDataEnabler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onCheckedChanged, isRoaming = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " isChecked = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " mCheckedRoamingOn = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    if-eqz v3, :cond_7

    .line 149
    if-eqz p2, :cond_6

    .line 150
    invoke-virtual {v7, v9}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 151
    if-nez v6, :cond_0

    .line 152
    const-string v8, "MobileDataEnabler"

    const-string v10, "onCheckedChanged, show warning only once when roaming."

    invoke-static {v8, v10}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v8, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "EverPoppedUp"

    invoke-static {v8, v10, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 154
    invoke-direct {p0}, Lcom/android/settings/MobileDataEnabler;->onRoamingDisplayMobileDataOnAlert()V

    goto/16 :goto_0

    .end local v3    # "isRoaming":Z
    .end local v6    # "mCheckedRoamingOn":I
    :cond_5
    move v3, v8

    .line 141
    goto :goto_1

    .line 157
    .restart local v3    # "isRoaming":Z
    .restart local v6    # "mCheckedRoamingOn":I
    :cond_6
    invoke-virtual {v7, v8}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto/16 :goto_0

    .line 160
    :cond_7
    if-eqz p2, :cond_8

    .line 161
    invoke-virtual {v7, v9}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto/16 :goto_0

    .line 164
    :cond_8
    invoke-virtual {v7, v8}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto/16 :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 77
    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/MobileDataEnabler;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MobileDataEnabler;->mDataEnabledObserver:Lcom/android/settings/MobileDataEnabler$DataEnabledObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 85
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "MobileDataEnabler"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 71
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/MobileDataEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/MobileDataEnabler;->mDataEnabledObserver:Lcom/android/settings/MobileDataEnabler$DataEnabledObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 74
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 7
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 88
    iget-object v3, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v3, p1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v3, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 90
    iput-object p1, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Landroid/widget/Switch;

    .line 91
    iget-object v3, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 92
    iget-object v3, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/MobileDataEnabler;->isAirPlaneMode:I

    .line 94
    iget-object v3, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 97
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    const-string v3, "gsm.sim.currentcardstatus"

    const-string v4, "9"

    invoke-static {v3, v5, v4}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "cardStatus1":Ljava/lang/String;
    const-string v3, "gsm.sim.currentcardstatus"

    const-string v4, "9"

    invoke-static {v3, v6, v4}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "cardStatus2":Ljava/lang/String;
    const-string v3, "3"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "3"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget v3, p0, Lcom/android/settings/MobileDataEnabler;->isAirPlaneMode:I

    if-ne v3, v6, :cond_3

    .line 102
    :cond_2
    const-string v3, "MobileDataEnabler"

    const-string v4, " setSwitch setChecked , false"

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0, v5}, Lcom/android/settings/MobileDataEnabler;->setSwitchChecked(Z)V

    goto :goto_0

    .line 105
    :cond_3
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/settings/MobileDataEnabler;->setSwitchChecked(Z)V

    goto :goto_0
.end method

.method public setSwitchChecked(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MobileDataEnabler;->mStateMachineEvent:Z

    .line 278
    const-string v0, "MobileDataEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setSwitchChecked , checked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MobileDataEnabler;->mStateMachineEvent:Z

    .line 282
    :cond_0
    return-void
.end method
