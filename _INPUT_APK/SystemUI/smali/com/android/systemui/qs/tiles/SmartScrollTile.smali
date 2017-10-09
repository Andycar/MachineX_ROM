.class public Lcom/android/systemui/qs/tiles/SmartScrollTile;
.super Lcom/android/systemui/qs/QSTile;
.source "SmartScrollTile.java"


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
.field private static final DB_FACE_SMART_SCROLL:Ljava/lang/String; = "face_smart_scroll"

.field private static final DB_SMART_SCROLL_ON:Ljava/lang/String; = "smart_scroll"

.field private static final TW_TAG:Ljava/lang/String; = "SmartScrollTile"


# instance fields
.field private mButtonStatus:I

.field private mFaceSmartScrollSettings:Lcom/android/systemui/qs/SystemSetting;

.field private mFaceState:Z

.field private mIsProcessing:Z

.field private mSmartScrollSettings:Lcom/android/systemui/qs/SystemSetting;

.field private mSmartState:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 4
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 46
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mIsProcessing:Z

    .line 52
    iput v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mButtonStatus:I

    .line 66
    new-instance v0, Lcom/android/systemui/qs/tiles/SmartScrollTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "smart_scroll"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/SmartScrollTile$1;-><init>(Lcom/android/systemui/qs/tiles/SmartScrollTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mSmartScrollSettings:Lcom/android/systemui/qs/SystemSetting;

    .line 76
    new-instance v0, Lcom/android/systemui/qs/tiles/SmartScrollTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "face_smart_scroll"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/SmartScrollTile$2;-><init>(Lcom/android/systemui/qs/tiles/SmartScrollTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mFaceSmartScrollSettings:Lcom/android/systemui/qs/SystemSetting;

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->init()V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/SmartScrollTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/SmartScrollTile;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mSmartState:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/tiles/SmartScrollTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/SmartScrollTile;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mSmartState:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/SmartScrollTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/SmartScrollTile;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->updateButtonStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/SmartScrollTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/SmartScrollTile;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mFaceState:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/tiles/SmartScrollTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/SmartScrollTile;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mFaceState:Z

    return p1
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 96
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mSmartScrollSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mFaceSmartScrollSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 98
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mSmartScrollSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mSmartState:Z

    .line 99
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mFaceSmartScrollSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mFaceState:Z

    .line 100
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mSmartState:Z

    if-eqz v0, :cond_3

    .line 101
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mFaceState:Z

    if-eqz v0, :cond_2

    .line 102
    iput v1, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mButtonStatus:I

    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->refreshState(Ljava/lang/Object;)V

    .line 112
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 98
    goto :goto_0

    :cond_1
    move v0, v2

    .line 99
    goto :goto_1

    .line 105
    :cond_2
    iput v3, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mButtonStatus:I

    .line 106
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_2

    .line 109
    :cond_3
    iput v2, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mButtonStatus:I

    .line 110
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private updateButtonStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 115
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mSmartState:Z

    if-eqz v0, :cond_1

    .line 116
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mFaceState:Z

    if-eqz v0, :cond_0

    .line 117
    iput v2, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mButtonStatus:I

    .line 118
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->refreshState(Ljava/lang/Object;)V

    .line 127
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mIsProcessing:Z

    .line 128
    return-void

    .line 120
    :cond_0
    iput v3, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mButtonStatus:I

    .line 121
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    .line 124
    :cond_1
    iput v1, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mButtonStatus:I

    .line 125
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateStatus()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 226
    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mIsProcessing:Z

    .line 227
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->refreshState(Ljava/lang/Object;)V

    .line 228
    const-string v1, "SmartScrollTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateStatus to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mButtonStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget v1, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mButtonStatus:I

    if-ne v1, v4, :cond_1

    .line 231
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mSmartScrollSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    .line 232
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mFaceSmartScrollSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    .line 239
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 240
    .local v0, "smart_scroll_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 241
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 242
    return-void

    .line 233
    .end local v0    # "smart_scroll_changed":Landroid/content/Intent;
    :cond_1
    iget v1, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mButtonStatus:I

    if-nez v1, :cond_2

    .line 234
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mSmartScrollSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v5}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    goto :goto_0

    .line 235
    :cond_2
    iget v1, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mButtonStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 236
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mFaceSmartScrollSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v5}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    goto :goto_0
.end method


# virtual methods
.method public doNext()V
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->removeEnabledScreenReaderValue()V

    .line 171
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mButtonStatus:I

    .line 172
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->updateStatus()V

    .line 173
    return-void
.end method

.method public doPrevious()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method protected handleClick()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x2

    const/4 v3, 0x1

    .line 137
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v2, v7, :cond_0

    move v1, v3

    .line 138
    .local v1, "state":Z
    :goto_0
    const-string v2, "SmartScrollTile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleClick : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mContext:Landroid/content/Context;

    const-string v5, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v6, "isSettingsChangesAllowed"

    invoke-static {v2, v5, v6}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 141
    .local v0, "isSettingsChangesAllowed":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 142
    if-nez v0, :cond_1

    .line 143
    const-string v2, "SmartScrollTile"

    const-string v3, "handleClick(): SmartScroll state change is not allowed"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_1
    return-void

    .end local v0    # "isSettingsChangesAllowed":I
    .end local v1    # "state":Z
    :cond_0
    move v1, v4

    .line 137
    goto :goto_0

    .line 148
    .restart local v0    # "isSettingsChangesAllowed":I
    .restart local v1    # "state":Z
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mIsProcessing:Z

    if-eqz v2, :cond_2

    .line 149
    const-string v2, "SmartScrollTile"

    const-string v3, "handleClick(): Processing..."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 152
    :cond_2
    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mIsProcessing:Z

    .line 154
    iget v2, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mButtonStatus:I

    if-ne v2, v3, :cond_4

    .line 155
    iput v7, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mButtonStatus:I

    .line 166
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->updateStatus()V

    goto :goto_1

    .line 156
    :cond_4
    iget v2, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mButtonStatus:I

    if-nez v2, :cond_6

    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->isEnabledScreenReaderService()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 158
    const v2, 0x7f0d0450

    const v3, 0x7f0d0451

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->showTalkBackDisablePopup(II)V

    goto :goto_1

    .line 162
    :cond_5
    iput v3, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mButtonStatus:I

    goto :goto_2

    .line 163
    :cond_6
    iget v2, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mButtonStatus:I

    if-ne v2, v7, :cond_3

    .line 164
    iput v4, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mButtonStatus:I

    goto :goto_2
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mSmartScrollSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 92
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mFaceSmartScrollSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 93
    return-void
.end method

.method protected handleLongClick()V
    .locals 3

    .prologue
    .line 187
    :try_start_0
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$SmartScrollAdvancedSettingsActivity"

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "SmartScrollTile"

    const-string v2, "ActivityNotFoundException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->handleLongClick()V

    .line 182
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v3, 0x7f0d0351

    .line 195
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 196
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 197
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 198
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0372

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 199
    packed-switch v0, :pswitch_data_0

    .line 222
    :goto_1
    return-void

    .line 195
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 201
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :pswitch_0
    const v1, 0x7f0205b5

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 202
    const v1, 0x7f0d0338

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 207
    :pswitch_1
    const v1, 0x7f0205b4

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 208
    const v1, 0x7f0d0339

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 213
    :pswitch_2
    const v1, 0x7f0205b3

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 214
    const v1, 0x7f0d033a

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 219
    :pswitch_3
    const v1, 0x7f0205b9

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 38
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 62
    return-void
.end method

.method public userSwitch(I)V
    .locals 2
    .param p1, "newUserId"    # I

    .prologue
    const/4 v1, 0x0

    .line 246
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mSmartScrollSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->onChange(Z)V

    .line 247
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile;->mFaceSmartScrollSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->onChange(Z)V

    .line 248
    return-void
.end method
