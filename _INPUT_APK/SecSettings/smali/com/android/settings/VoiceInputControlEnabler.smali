.class public final Lcom/android/settings/VoiceInputControlEnabler;
.super Ljava/lang/Object;
.source "VoiceInputControlEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;
    }
.end annotation


# static fields
.field private static mVoiceInputSettingObserver:Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;


# instance fields
.field private final KEY_TEMP_VOICE_INPUT_CONTROL:Ljava/lang/String;

.field private final KEY_VOICE_INPUT_CONTROL:Ljava/lang/String;

.field protected MESSAGE_DELAY:I

.field private final VOICEINPUTCONTROL_ALARM:Ljava/lang/String;

.field private final VOICEINPUTCONTROL_CAMERA:Ljava/lang/String;

.field private final VOICEINPUTCONTROL_CHATONV:Ljava/lang/String;

.field private final VOICEINPUTCONTROL_INCOMMING_CALL:Ljava/lang/String;

.field private final VOICEINPUTCONTROL_MUSIC:Ljava/lang/String;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private final mContext:Landroid/content/Context;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private mPosition:I

.field private mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

.field private mSwitch:Landroid/widget/Switch;

.field protected mVoiceControlUncheckerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "voice_input_control"

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->KEY_VOICE_INPUT_CONTROL:Ljava/lang/String;

    .line 56
    const-string v0, "temp_voice_input_control"

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->KEY_TEMP_VOICE_INPUT_CONTROL:Ljava/lang/String;

    .line 57
    const-string v0, "voice_input_control_incomming_calls"

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->VOICEINPUTCONTROL_INCOMMING_CALL:Ljava/lang/String;

    .line 58
    const-string v0, "voice_input_control_chatonv"

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->VOICEINPUTCONTROL_CHATONV:Ljava/lang/String;

    .line 59
    const-string v0, "voice_input_control_alarm"

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->VOICEINPUTCONTROL_ALARM:Ljava/lang/String;

    .line 60
    const-string v0, "voice_input_control_camera"

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->VOICEINPUTCONTROL_CAMERA:Ljava/lang/String;

    .line 61
    const-string v0, "voice_input_control_music"

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->VOICEINPUTCONTROL_MUSIC:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 64
    iput v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mPosition:I

    .line 66
    iput v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->MESSAGE_DELAY:I

    .line 69
    iput-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    .line 74
    iput-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 281
    new-instance v0, Lcom/android/settings/VoiceInputControlEnabler$6;

    invoke-direct {v0, p0}, Lcom/android/settings/VoiceInputControlEnabler$6;-><init>(Lcom/android/settings/VoiceInputControlEnabler;)V

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mVoiceControlUncheckerHandler:Landroid/os/Handler;

    .line 77
    iput-object p1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    .line 80
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/VoiceInputControlEnabler;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/VoiceInputControlEnabler;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/VoiceInputControlEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/VoiceInputControlEnabler;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/VoiceInputControlEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/VoiceInputControlEnabler;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/VoiceInputControlEnabler;->showAllOptionDisabledDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/VoiceInputControlEnabler;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/VoiceInputControlEnabler;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/VoiceInputControlEnabler;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/VoiceInputControlEnabler;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mPosition:I

    return v0
.end method

.method private showAllOptionDisabledDialog()V
    .locals 3

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 361
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a1a1c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a1620

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/VoiceInputControlEnabler$7;

    invoke-direct {v2, p0}, Lcom/android/settings/VoiceInputControlEnabler$7;-><init>(Lcom/android/settings/VoiceInputControlEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 381
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 382
    return-void
.end method


# virtual methods
.method public disableAlarmAndMusicVoiceControl()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 180
    invoke-static {}, Lcom/android/settings/Utils;->hasNewVoiceControlConcept()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_input_control_alarm"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 182
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_input_control_music"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 186
    :cond_0
    return-void
.end method

.method public hasDialing()Z
    .locals 3

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    .line 386
    .local v0, "context":Landroid/content/Context;
    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 388
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    if-nez v2, :cond_0

    .line 390
    const/4 v2, 0x0

    .line 392
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isAllOptionDisabled()Z
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 310
    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 311
    .local v4, "cr":Landroid/content/ContentResolver;
    const-string v8, "voice_input_control_incomming_calls"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 312
    .local v1, "call":I
    const-string v8, "voice_input_control_alarm"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 313
    .local v0, "alarm":I
    const-string v8, "voice_input_control_camera"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 314
    .local v2, "camera":I
    const-string v8, "voice_input_control_music"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 315
    .local v5, "music":I
    const-string v8, "voice_input_control_chatonv"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 317
    .local v3, "chatonv":I
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    if-nez v5, :cond_0

    if-nez v3, :cond_0

    .line 318
    const-string v8, "voice_input_control"

    invoke-static {v4, v8, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 321
    :goto_0
    return v6

    :cond_0
    move v6, v7

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 12
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 189
    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voiceinputcontrol_showNeverAgain"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 190
    .local v4, "showNeverAgain":I
    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voice_input_control"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 191
    .local v7, "voiceState":I
    invoke-static {}, Lcom/android/settings/VoiceInputControlSettings;->getInstance()Lcom/android/settings/VoiceInputControlSettings;

    move-result-object v6

    .line 194
    .local v6, "voiceInputControl":Lcom/android/settings/VoiceInputControlSettings;
    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/sec/enterprise/RestrictionPolicy;->isSVoiceAllowed(Z)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/sec/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v8

    if-nez v8, :cond_2

    .line 196
    :cond_0
    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Switch;->setChecked(Z)V

    .line 197
    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 198
    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voice_input_control"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 279
    :cond_1
    :goto_0
    return-void

    .line 201
    :cond_2
    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 205
    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    const-string v9, "vibrator"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    .line 207
    .local v5, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v5}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlEnabler;->hasDialing()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->hasNewVoiceControlConcept()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 208
    :cond_3
    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voiceinputcontrol_showNeverAgain"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 210
    :cond_4
    if-eqz p2, :cond_9

    if-nez v7, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlEnabler;->isAllOptionDisabled()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 211
    const-string v8, "VoiceInputControlEnabler"

    const-string v9, "VoiceControl changed ignored cause all sub options are disabled "

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v8

    if-nez v8, :cond_5

    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 213
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/VoiceInputControlEnabler;->showAllOptionDisabledDialog()V

    .line 268
    :cond_6
    :goto_1
    if-eqz p2, :cond_b

    if-nez v7, :cond_b

    .line 269
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/android/settings/VoiceInputControlSettings;->isFromHelpApp()Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    if-ne v4, v8, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlEnabler;->isAllOptionDisabled()Z

    move-result v8

    if-nez v8, :cond_7

    .line 270
    invoke-virtual {v6}, Lcom/android/settings/VoiceInputControlSettings;->getHelpHandler()Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 272
    :cond_7
    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Switch;->setChecked(Z)V

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlEnabler;->disableAlarmAndMusicVoiceControl()V

    .line 274
    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voice_input_control"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 215
    :cond_8
    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mVoiceControlUncheckerHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/settings/VoiceInputControlEnabler;->MESSAGE_DELAY:I

    int-to-long v10, v10

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 217
    :cond_9
    if-eqz p2, :cond_6

    if-nez v7, :cond_6

    if-nez v4, :cond_6

    invoke-virtual {v5}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 219
    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 220
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f040066

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 221
    .local v2, "layout":Landroid/view/View;
    const v8, 0x7f100111

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 222
    .local v0, "check":Landroid/widget/CheckBox;
    const v8, 0x7f100110

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v9, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_a

    const v9, 0x7f0a1621

    :goto_2
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 223
    new-instance v8, Lcom/android/settings/VoiceInputControlEnabler$1;

    invoke-direct {v8, p0}, Lcom/android/settings/VoiceInputControlEnabler$1;-><init>(Lcom/android/settings/VoiceInputControlEnabler;)V

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0a1620

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0a1623

    new-instance v10, Lcom/android/settings/VoiceInputControlEnabler$3;

    invoke-direct {v10, p0, v0, v6}, Lcom/android/settings/VoiceInputControlEnabler$3;-><init>(Lcom/android/settings/VoiceInputControlEnabler;Landroid/widget/CheckBox;Lcom/android/settings/VoiceInputControlSettings;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0a1624

    new-instance v10, Lcom/android/settings/VoiceInputControlEnabler$2;

    invoke-direct {v10, p0}, Lcom/android/settings/VoiceInputControlEnabler$2;-><init>(Lcom/android/settings/VoiceInputControlEnabler;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 249
    .local v3, "mAutoHapticDialog":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 250
    new-instance v8, Lcom/android/settings/VoiceInputControlEnabler$4;

    invoke-direct {v8, p0}, Lcom/android/settings/VoiceInputControlEnabler$4;-><init>(Lcom/android/settings/VoiceInputControlEnabler;)V

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 254
    new-instance v8, Lcom/android/settings/VoiceInputControlEnabler$5;

    invoke-direct {v8, p0}, Lcom/android/settings/VoiceInputControlEnabler$5;-><init>(Lcom/android/settings/VoiceInputControlEnabler;)V

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_1

    .line 222
    .end local v3    # "mAutoHapticDialog":Landroid/app/AlertDialog;
    :cond_a
    const v9, 0x7f0a1622

    goto :goto_2

    .line 275
    .end local v0    # "check":Landroid/widget/CheckBox;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "layout":Landroid/view/View;
    :cond_b
    if-nez p2, :cond_1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 276
    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Switch;->setChecked(Z)V

    .line 277
    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voice_input_control"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public pause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 128
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v2}, Landroid/sec/enterprise/RestrictionPolicy;->isSVoiceAllowed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v2}, Landroid/sec/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 149
    :cond_1
    :goto_0
    return-void

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_input_control"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 139
    :cond_3
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 143
    :goto_1
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 145
    sget-object v0, Lcom/android/settings/VoiceInputControlEnabler;->mVoiceInputSettingObserver:Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;

    if-eqz v0, :cond_1

    .line 146
    sget-object v0, Lcom/android/settings/VoiceInputControlEnabler;->mVoiceInputSettingObserver:Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;

    invoke-virtual {v0}, Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;->stopObserving()V

    .line 147
    sput-object v4, Lcom/android/settings/VoiceInputControlEnabler;->mVoiceInputSettingObserver:Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;

    goto :goto_0

    .line 141
    :cond_4
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method

.method public resume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 91
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v2, v4}, Landroid/sec/enterprise/RestrictionPolicy;->isSVoiceAllowed(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v2, v4}, Landroid/sec/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v2

    if-nez v2, :cond_5

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 94
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 99
    :goto_0
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 101
    .local v1, "voiceTalkState":I
    if-ne v1, v5, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlEnabler;->isAllOptionDisabled()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 102
    :cond_2
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 107
    :goto_1
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7

    .line 108
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 113
    :goto_2
    invoke-static {}, Lcom/android/settings/VoiceInputControlSettings;->getInstance()Lcom/android/settings/VoiceInputControlSettings;

    move-result-object v0

    .line 114
    .local v0, "voiceInputControl":Lcom/android/settings/VoiceInputControlSettings;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/settings/VoiceInputControlSettings;->isFromHelpApp()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 115
    invoke-virtual {v0}, Lcom/android/settings/VoiceInputControlSettings;->getHelpHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 118
    :cond_3
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 120
    sget-object v2, Lcom/android/settings/VoiceInputControlEnabler;->mVoiceInputSettingObserver:Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;

    if-nez v2, :cond_4

    .line 121
    new-instance v2, Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iget-object v4, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;-><init>(Lcom/android/settings/VoiceInputControlEnabler;Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v2, Lcom/android/settings/VoiceInputControlEnabler;->mVoiceInputSettingObserver:Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;

    .line 122
    sget-object v2, Lcom/android/settings/VoiceInputControlEnabler;->mVoiceInputSettingObserver:Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;

    invoke-virtual {v2}, Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;->startObserving()V

    .line 124
    :cond_4
    return-void

    .line 96
    .end local v0    # "voiceInputControl":Lcom/android/settings/VoiceInputControlSettings;
    .end local v1    # "voiceTalkState":I
    :cond_5
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 104
    .restart local v1    # "voiceTalkState":I
    :cond_6
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1

    .line 110
    :cond_7
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_2
.end method

.method public setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 0
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "position"    # I

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 86
    iput p2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mPosition:I

    .line 87
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 5
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 153
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 157
    iput-object p1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    .line 159
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_input_control"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 161
    .local v0, "voiceTalkState":I
    if-eq v0, v4, :cond_2

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 162
    :cond_2
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 167
    :goto_1
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 170
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v1, v3}, Landroid/sec/enterprise/RestrictionPolicy;->isSVoiceAllowed(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v1, v3}, Landroid/sec/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    :cond_3
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 173
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 164
    :cond_4
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method

.method public updateSwitch()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 294
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 296
    .local v1, "voiceInputControState":I
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 298
    .local v0, "isChecked":Z
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    if-ne v1, v5, :cond_1

    .line 300
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 301
    const-string v2, "VoiceInputControlEnabler"

    const-string v3, "updateSwitch - mSwitch.setChecked(true)"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 304
    const-string v2, "VoiceInputControlEnabler"

    const-string v3, "updateSwitch - mSwitch.setChecked(false)"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
