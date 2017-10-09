.class public final Lcom/android/settings/motion/MotionEnabler;
.super Ljava/lang/Object;
.source "MotionEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private final mContext:Landroid/content/Context;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private final mMotionObserver:Landroid/database/ContentObserver;

.field private mMotionUnlockDialog:Landroid/app/AlertDialog;

.field private mPosition:I

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v1, p0, Lcom/android/settings/motion/MotionEnabler;->mSwitch:Landroid/widget/Switch;

    .line 47
    iput-object v1, p0, Lcom/android/settings/motion/MotionEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/motion/MotionEnabler;->mPosition:I

    .line 49
    iput-object v1, p0, Lcom/android/settings/motion/MotionEnabler;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    .line 50
    iput-object v1, p0, Lcom/android/settings/motion/MotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 52
    new-instance v0, Lcom/android/settings/motion/MotionEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/motion/MotionEnabler$1;-><init>(Lcom/android/settings/motion/MotionEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/motion/MotionEnabler;->mMotionObserver:Landroid/database/ContentObserver;

    .line 61
    iput-object p1, p0, Lcom/android/settings/motion/MotionEnabler;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/android/settings/motion/MotionEnabler;->mSwitch:Landroid/widget/Switch;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion/MotionEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion/MotionEnabler;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/motion/MotionEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/motion/MotionEnabler;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion/MotionEnabler;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/motion/MotionEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/motion/MotionEnabler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/motion/MotionEnabler;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/motion/MotionEnabler;->broadcastMotionChanged(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/motion/MotionEnabler;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion/MotionEnabler;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/motion/MotionEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/motion/MotionEnabler;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion/MotionEnabler;

    .prologue
    .line 43
    iget v0, p0, Lcom/android/settings/motion/MotionEnabler;->mPosition:I

    return v0
.end method

.method private broadcastMotionChanged(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 227
    iget-object v1, p0, Lcom/android/settings/motion/MotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 228
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, "motion_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 230
    iget-object v1, p0, Lcom/android/settings/motion/MotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 231
    return-void
.end method

.method private dismissAllDialog()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/settings/motion/MotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/settings/motion/MotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/motion/MotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 238
    :cond_0
    return-void
.end method

.method private showAllOptionDisabledDialog()V
    .locals 3

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/settings/motion/MotionEnabler;->dismissAllDialog()V

    .line 163
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/motion/MotionEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a11ff

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a135b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/motion/MotionEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/MotionEnabler$2;-><init>(Lcom/android/settings/motion/MotionEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 194
    iget-object v0, p0, Lcom/android/settings/motion/MotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 195
    return-void
.end method

.method private showMotionUnlockDialog(I)V
    .locals 4
    .param p1, "message_res_id"    # I

    .prologue
    const/4 v3, 0x0

    .line 199
    iget-object v0, p0, Lcom/android/settings/motion/MotionEnabler;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/settings/motion/MotionEnabler;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 201
    iput-object v3, p0, Lcom/android/settings/motion/MotionEnabler;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    .line 204
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/motion/MotionEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a1201

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a091f

    new-instance v2, Lcom/android/settings/motion/MotionEnabler$3;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/MotionEnabler$3;-><init>(Lcom/android/settings/motion/MotionEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a01d1

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionEnabler;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    .line 219
    iget-object v0, p0, Lcom/android/settings/motion/MotionEnabler;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/motion/MotionEnabler$4;

    invoke-direct {v1, p0}, Lcom/android/settings/motion/MotionEnabler$4;-><init>(Lcom/android/settings/motion/MotionEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 224
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 10
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 107
    if-nez p2, :cond_8

    .line 108
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/settings/motion/MotionEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 109
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const/4 v3, 0x0

    .line 110
    .local v3, "motion_unlock":Z
    const/4 v0, 0x0

    .line 111
    .local v0, "camera_short_cut":Z
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v5

    if-nez v5, :cond_0

    .line 112
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 113
    iget-object v5, p0, Lcom/android/settings/motion/MotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "lock_motion_tilt_to_unlock"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    .line 114
    const/4 v3, 0x1

    .line 118
    :cond_0
    iget-object v5, p0, Lcom/android/settings/motion/MotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "motion_unlock_camera_short_cut"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    .line 119
    const/4 v0, 0x1

    .line 121
    :cond_1
    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 122
    const v5, 0x7f0a126a

    invoke-direct {p0, v5}, Lcom/android/settings/motion/MotionEnabler;->showMotionUnlockDialog(I)V

    .line 159
    .end local v0    # "camera_short_cut":Z
    .end local v1    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v3    # "motion_unlock":Z
    :cond_2
    :goto_0
    return-void

    .line 123
    .restart local v0    # "camera_short_cut":Z
    .restart local v1    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v3    # "motion_unlock":Z
    :cond_3
    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    .line 124
    const v5, 0x7f0a1269

    invoke-direct {p0, v5}, Lcom/android/settings/motion/MotionEnabler;->showMotionUnlockDialog(I)V

    goto :goto_0

    .line 125
    :cond_4
    if-eqz v3, :cond_5

    if-nez v0, :cond_5

    .line 126
    const v5, 0x7f0a1268

    invoke-direct {p0, v5}, Lcom/android/settings/motion/MotionEnabler;->showMotionUnlockDialog(I)V

    goto :goto_0

    .line 128
    :cond_5
    iget-object v5, p0, Lcom/android/settings/motion/MotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "master_motion"

    if-eqz p2, :cond_6

    move v5, v6

    :goto_1
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    iget-object v5, p0, Lcom/android/settings/motion/MotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "motion_engine"

    if-eqz p2, :cond_7

    :goto_2
    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 130
    invoke-direct {p0, p2}, Lcom/android/settings/motion/MotionEnabler;->broadcastMotionChanged(Z)V

    goto :goto_0

    :cond_6
    move v5, v7

    .line 128
    goto :goto_1

    :cond_7
    move v6, v7

    .line 129
    goto :goto_2

    .line 133
    .end local v0    # "camera_short_cut":Z
    .end local v1    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v3    # "motion_unlock":Z
    :cond_8
    iget-object v5, p0, Lcom/android/settings/motion/MotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/motion/MotionEnabler;->mContext:Landroid/content/Context;

    invoke-static {v5, v8}, Lcom/android/settings/Utils;->isCurrentMotionAllItemDisabled(Landroid/content/ContentResolver;Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2013"

    invoke-static {v5}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 134
    iget-object v4, p0, Lcom/android/settings/motion/MotionEnabler;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/preference/PreferenceActivity;

    .line 136
    .local v4, "preferenceActivity":Landroid/preference/PreferenceActivity;
    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/android/settings/motion/MotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "master_motion"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_a

    .line 138
    :cond_9
    invoke-direct {p0}, Lcom/android/settings/motion/MotionEnabler;->showAllOptionDisabledDialog()V

    goto :goto_0

    .line 142
    :cond_a
    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2013"

    invoke-static {v5}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/settings/motion/MotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "master_motion"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 146
    .local v2, "motionState":I
    :goto_3
    if-eq v2, v6, :cond_2

    .line 149
    invoke-direct {p0}, Lcom/android/settings/motion/MotionEnabler;->showAllOptionDisabledDialog()V

    goto/16 :goto_0

    .line 142
    .end local v2    # "motionState":I
    :cond_b
    iget-object v5, p0, Lcom/android/settings/motion/MotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "motion_engine"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    goto :goto_3

    .line 154
    .end local v4    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    :cond_c
    iget-object v5, p0, Lcom/android/settings/motion/MotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "master_motion"

    if-eqz p2, :cond_d

    move v5, v6

    :goto_4
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 155
    iget-object v5, p0, Lcom/android/settings/motion/MotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "motion_engine"

    if-eqz p2, :cond_e

    :goto_5
    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 156
    invoke-direct {p0, p2}, Lcom/android/settings/motion/MotionEnabler;->broadcastMotionChanged(Z)V

    goto/16 :goto_0

    :cond_d
    move v5, v7

    .line 154
    goto :goto_4

    :cond_e
    move v6, v7

    .line 155
    goto :goto_5
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/motion/MotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion/MotionEnabler;->mMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 80
    invoke-direct {p0}, Lcom/android/settings/motion/MotionEnabler;->dismissAllDialog()V

    .line 81
    iget-object v0, p0, Lcom/android/settings/motion/MotionEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 82
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/motion/MotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_motion"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/motion/MotionEnabler;->mMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/motion/MotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 75
    return-void
.end method

.method public setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 0
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "position"    # I

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings/motion/MotionEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 67
    iput p2, p0, Lcom/android/settings/motion/MotionEnabler;->mPosition:I

    .line 68
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 5
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    iget-object v1, p0, Lcom/android/settings/motion/MotionEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_0

    .line 103
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/android/settings/motion/MotionEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 89
    iput-object p1, p0, Lcom/android/settings/motion/MotionEnabler;->mSwitch:Landroid/widget/Switch;

    .line 91
    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2013"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/motion/MotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "master_motion"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 95
    .local v0, "motionState":I
    :goto_1
    if-ne v0, v4, :cond_2

    .line 96
    iget-object v1, p0, Lcom/android/settings/motion/MotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 101
    :goto_2
    iget-object v1, p0, Lcom/android/settings/motion/MotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 91
    .end local v0    # "motionState":I
    :cond_1
    iget-object v1, p0, Lcom/android/settings/motion/MotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_engine"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    .line 98
    .restart local v0    # "motionState":I
    :cond_2
    iget-object v1, p0, Lcom/android/settings/motion/MotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_2
.end method
