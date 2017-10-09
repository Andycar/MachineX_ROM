.class public Lcom/android/systemui/qs/tiles/AirGestureTile;
.super Lcom/android/systemui/qs/QSTile;
.source "AirGestureTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$MultiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final DB_AIR_GESTURE:Ljava/lang/String; = "air_motion_engine"

.field private static final TAG:Ljava/lang/String; = "AirGestureTile"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mGestureState:Z

.field private mIsProcessing:Z

.field private final mSettingAG:Lcom/android/systemui/qs/SystemSetting;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 5
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v1, 0x1

    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 62
    const-string v0, "AirGestureTile"

    const-string v2, "Creating AirGesture Constructor: "

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mContentResolver:Landroid/content/ContentResolver;

    .line 66
    new-instance v0, Lcom/android/systemui/qs/tiles/AirGestureTile$1;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v4, "air_motion_engine"

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/android/systemui/qs/tiles/AirGestureTile$1;-><init>(Lcom/android/systemui/qs/tiles/AirGestureTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mSettingAG:Lcom/android/systemui/qs/SystemSetting;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mSettingAG:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 77
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mSettingAG:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/AirGestureTile;->refreshState(Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mSettingAG:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mGestureState:Z

    .line 79
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 78
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/AirGestureTile;)Lcom/android/systemui/qs/SystemSetting;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirGestureTile;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mSettingAG:Lcom/android/systemui/qs/SystemSetting;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/AirGestureTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirGestureTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AirGestureTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/tiles/AirGestureTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirGestureTile;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mGestureState:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/systemui/qs/tiles/AirGestureTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirGestureTile;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mIsProcessing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/AirGestureTile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirGestureTile;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/AirGestureTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x1

    .line 155
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mIsProcessing:Z

    .line 156
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mSettingAG:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    .line 158
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, "motion_changed":Landroid/content/Intent;
    const-string v2, "isEnable"

    if-ne p1, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 160
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 161
    return-void

    .line 159
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showConfirmPopup()V
    .locals 5

    .prologue
    .line 186
    const/4 v1, 0x0

    .line 191
    .local v1, "theme":I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x1040014

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0392

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/systemui/qs/tiles/AirGestureTile$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/AirGestureTile$3;-><init>(Lcom/android/systemui/qs/tiles/AirGestureTile;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/systemui/qs/tiles/AirGestureTile$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/AirGestureTile$2;-><init>(Lcom/android/systemui/qs/tiles/AirGestureTile;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 206
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v2}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 209
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 210
    .local v0, "kgm":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 215
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 216
    return-void

    .line 213
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method


# virtual methods
.method public doNext()V
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirGestureTile;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirGestureTile;->showConfirmPopup()V

    .line 227
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirGestureTile;->removeEnabledScreenReaderValue()V

    .line 225
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/AirGestureTile;->refreshState(Ljava/lang/Object;)V

    .line 226
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/AirGestureTile;->setMode(I)V

    goto :goto_0
.end method

.method public doPrevious()V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method protected handleClick()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 119
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    move v1, v3

    .line 120
    .local v1, "state":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mIsProcessing:Z

    if-eqz v2, :cond_2

    .line 121
    const-string v2, "AirGestureTile"

    const-string v3, "onClick(): Processing..."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    :goto_1
    return-void

    .end local v1    # "state":Z
    :cond_1
    move v1, v4

    .line 119
    goto :goto_0

    .line 125
    .restart local v1    # "state":Z
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mContext:Landroid/content/Context;

    const-string v5, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v6, "isSettingsChangesAllowed"

    invoke-static {v2, v5, v6}, Lcom/android/systemui/qs/tiles/AirGestureTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 126
    .local v0, "isSettingsChangesAllowed":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 127
    if-nez v0, :cond_3

    .line 128
    const-string v2, "AirGestureTile"

    const-string v3, "onClick(): AirGesture state change is not allowed by EDM"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 133
    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mGestureState:Z

    if-eq v2, v1, :cond_0

    .line 135
    if-eqz v1, :cond_5

    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirGestureTile;->isEnabledScreenReaderService()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirGestureTile;->isAllOptionDisabled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 137
    const v2, 0x7f0d0448

    const v3, 0x7f0d0449

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/qs/tiles/AirGestureTile;->showTalkBackDisablePopup(II)V

    goto :goto_1

    .line 142
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirGestureTile;->isAllOptionDisabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 143
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirGestureTile;->showConfirmPopup()V

    goto :goto_1

    .line 148
    :cond_5
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/AirGestureTile;->refreshState(Ljava/lang/Object;)V

    .line 149
    if-eqz v1, :cond_6

    :goto_2
    invoke-direct {p0, v3}, Lcom/android/systemui/qs/tiles/AirGestureTile;->setMode(I)V

    goto :goto_1

    :cond_6
    move v3, v4

    goto :goto_2
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mSettingAG:Lcom/android/systemui/qs/SystemSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 85
    return-void
.end method

.method public handleLongClick()V
    .locals 2

    .prologue
    .line 177
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$AirMotionSettingActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tiles/AirGestureTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirGestureTile;->handleLongClick()V

    .line 183
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v3, 0x7f0d0357

    .line 89
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 90
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 91
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 92
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0378

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 93
    packed-switch v0, :pswitch_data_0

    .line 114
    :goto_1
    return-void

    .line 89
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 95
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :pswitch_0
    const v1, 0x7f020556

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 96
    const v1, 0x7f0d0338

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/AirGestureTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 101
    :pswitch_1
    const v1, 0x7f020555

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 102
    const v1, 0x7f0d0339

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/AirGestureTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 107
    :pswitch_2
    const v1, 0x7f020554

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 108
    const v1, 0x7f0d033a

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/AirGestureTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 44
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/AirGestureTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAllOptionDisabled()Z
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v10, -0x2

    const/4 v7, 0x0

    .line 165
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_glance_view"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 166
    .local v5, "QuickGlance":I
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_scroll"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 167
    .local v3, "AirScroll":I
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_turn"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 168
    .local v4, "AirTurn":I
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_item_move"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 169
    .local v1, "AirMove":I
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_clip"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 170
    .local v2, "AirPin":I
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_call_accept"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 172
    .local v0, "AirCallAccept":I
    or-int v8, v5, v3

    or-int/2addr v8, v4

    or-int/2addr v8, v1

    or-int/2addr v8, v2

    or-int/2addr v8, v0

    if-ge v8, v6, :cond_0

    :goto_0
    return v6

    :cond_0
    move v6, v7

    goto :goto_0
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 250
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirGestureTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 246
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userSwitched()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirGestureTile;->mSettingAG:Lcom/android/systemui/qs/SystemSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->onChange(Z)V

    .line 235
    return-void
.end method
