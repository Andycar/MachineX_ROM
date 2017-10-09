.class public final Lcom/android/settings/PenAirViewEnabler;
.super Ljava/lang/Object;
.source "PenAirViewEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAirViewDisableDialog:Landroid/app/AlertDialog;

.field private final mContext:Landroid/content/Context;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

.field private mPenAirViewObserver:Landroid/database/ContentObserver;

.field private mPosition:I

.field private mSwitch:Landroid/widget/Switch;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v1, p0, Lcom/android/settings/PenAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    .line 55
    iput-object v1, p0, Lcom/android/settings/PenAirViewEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/PenAirViewEnabler;->mPosition:I

    .line 59
    iput-object v1, p0, Lcom/android/settings/PenAirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 61
    iput-object v1, p0, Lcom/android/settings/PenAirViewEnabler;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    .line 67
    new-instance v0, Lcom/android/settings/PenAirViewEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/PenAirViewEnabler$1;-><init>(Lcom/android/settings/PenAirViewEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/PenAirViewEnabler;->mPenAirViewObserver:Landroid/database/ContentObserver;

    .line 77
    iput-object p1, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/android/settings/PenAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    .line 80
    invoke-static {p1}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PenAirViewEnabler;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/PenAirViewEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PenAirViewEnabler;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/PenAirViewEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/PenAirViewEnabler;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/PenAirViewEnabler;->updateAirViewMode()V

    return-void
.end method

.method private dismissAllDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 233
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 235
    iput-object v1, p0, Lcom/android/settings/PenAirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 239
    iput-object v1, p0, Lcom/android/settings/PenAirViewEnabler;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    .line 241
    :cond_1
    return-void
.end method

.method private showAirViewDisableDialog()V
    .locals 3

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/settings/PenAirViewEnabler;->dismissAllDialog()V

    .line 207
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0a1391

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0a135b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/PenAirViewEnabler$6;

    invoke-direct {v2, p0}, Lcom/android/settings/PenAirViewEnabler$6;-><init>(Lcom/android/settings/PenAirViewEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/PenAirViewEnabler$5;

    invoke-direct {v2, p0}, Lcom/android/settings/PenAirViewEnabler$5;-><init>(Lcom/android/settings/PenAirViewEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PenAirViewEnabler;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    .line 222
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 223
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/PenAirViewEnabler$7;

    invoke-direct {v1, p0}, Lcom/android/settings/PenAirViewEnabler$7;-><init>(Lcom/android/settings/PenAirViewEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 230
    return-void
.end method

.method private showTalkBackDisableDialog()V
    .locals 6

    .prologue
    const v5, 0x7f0a13c5

    const v4, 0x7f0a0a3c

    .line 158
    invoke-direct {p0}, Lcom/android/settings/PenAirViewEnabler;->dismissAllDialog()V

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0a13c6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.feature.overlaymagnifier"

    invoke-static {v1, v2}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0a40

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0a1186

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/PenAirViewEnabler$3;

    invoke-direct {v3, p0}, Lcom/android/settings/PenAirViewEnabler$3;-><init>(Lcom/android/settings/PenAirViewEnabler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/PenAirViewEnabler$2;

    invoke-direct {v3, p0}, Lcom/android/settings/PenAirViewEnabler$2;-><init>(Lcom/android/settings/PenAirViewEnabler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PenAirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 195
    iget-object v1, p0, Lcom/android/settings/PenAirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 196
    iget-object v1, p0, Lcom/android/settings/PenAirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings/PenAirViewEnabler$4;

    invoke-direct {v2, p0}, Lcom/android/settings/PenAirViewEnabler$4;-><init>(Lcom/android/settings/PenAirViewEnabler;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 203
    return-void
.end method

.method private updateAirViewMode()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 244
    iget-object v4, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_hovering"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    .line 245
    .local v1, "penAirView":Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v0, v2

    .line 246
    .local v0, "fingerAirView":Z
    :goto_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 248
    iget-object v2, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_view_mode"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 259
    :goto_2
    return-void

    .end local v0    # "fingerAirView":Z
    .end local v1    # "penAirView":Z
    :cond_0
    move v1, v3

    .line 244
    goto :goto_0

    .restart local v1    # "penAirView":Z
    :cond_1
    move v0, v3

    .line 245
    goto :goto_1

    .line 249
    .restart local v0    # "fingerAirView":Z
    :cond_2
    if-eqz v0, :cond_3

    .line 251
    iget-object v3, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_view_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 252
    :cond_3
    if-eqz v1, :cond_4

    .line 254
    iget-object v2, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "air_view_mode"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 257
    :cond_4
    iget-object v2, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "air_view_master_onoff"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 118
    if-eqz p2, :cond_6

    .line 119
    const/4 v1, 0x0

    .line 120
    .local v1, "hoverZoom":Z
    iget-object v4, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    const-string v5, "com.sec.feature.overlaymagnifier"

    invoke-static {v4, v5}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 121
    iget-object v4, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_magnifier"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_3

    move v1, v2

    .line 122
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_display_magnification_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v2, :cond_1

    if-eqz v1, :cond_4

    .line 125
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/PenAirViewEnabler;->showTalkBackDisableDialog()V

    .line 143
    .end local v1    # "hoverZoom":Z
    :cond_2
    :goto_1
    return-void

    .restart local v1    # "hoverZoom":Z
    :cond_3
    move v1, v3

    .line 121
    goto :goto_0

    .line 127
    :cond_4
    iget-object v3, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 128
    invoke-static {}, Lcom/android/settings/Utils;->isSupportKKUpgradeAirview()Z

    move-result v2

    if-nez v2, :cond_5

    .line 129
    invoke-direct {p0}, Lcom/android/settings/PenAirViewEnabler;->updateAirViewMode()V

    .line 130
    :cond_5
    const-string v2, "PenAirViewEnabler"

    const-string v3, "Air view switch is on"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 133
    .end local v1    # "hoverZoom":Z
    :cond_6
    iget-object v4, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "air_button_onoff"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_7

    move v0, v2

    .line 135
    .local v0, "airCommandState":Z
    :goto_2
    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isSupportKKUpgradeAirview()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 136
    invoke-direct {p0}, Lcom/android/settings/PenAirViewEnabler;->showAirViewDisableDialog()V

    goto :goto_1

    .end local v0    # "airCommandState":Z
    :cond_7
    move v0, v3

    .line 133
    goto :goto_2

    .line 138
    .restart local v0    # "airCommandState":Z
    :cond_8
    iget-object v2, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "pen_hovering"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 139
    invoke-static {}, Lcom/android/settings/Utils;->isSupportKKUpgradeAirview()Z

    move-result v2

    if-nez v2, :cond_2

    .line 140
    invoke-direct {p0}, Lcom/android/settings/PenAirViewEnabler;->updateAirViewMode()V

    goto :goto_1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewEnabler;->mPenAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 98
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 99
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewEnabler;->updateSwitch()V

    .line 91
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/PenAirViewEnabler;->mPenAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 94
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 2
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 114
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 111
    iput-object p1, p0, Lcom/android/settings/PenAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewEnabler;->updateSwitch()V

    .line 113
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 104
    :cond_0
    return-void
.end method

.method public updateSwitch()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 146
    iget-object v3, p0, Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 147
    .local v0, "state":I
    iget-object v3, p0, Lcom/android/settings/PenAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v3, :cond_0

    .line 148
    iget-object v3, p0, Lcom/android/settings/PenAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 149
    iget-object v3, p0, Lcom/android/settings/PenAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, v1, :cond_1

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 151
    iget-object v1, p0, Lcom/android/settings/PenAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/PenAirViewEnabler;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-virtual {v2}, Landroid/app/enterprise/kioskmode/KioskMode;->isAirViewModeAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 153
    iget-object v1, p0, Lcom/android/settings/PenAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 155
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 149
    goto :goto_0
.end method
