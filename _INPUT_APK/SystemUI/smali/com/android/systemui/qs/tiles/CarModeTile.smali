.class public Lcom/android/systemui/qs/tiles/CarModeTile;
.super Lcom/android/systemui/qs/QSTile;
.source "CarModeTile.java"


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
.field private static final DB_CAR_MODE_ON:Ljava/lang/String; = "car_mode_on"

.field private static final INTENT_CAR_MODE:Ljava/lang/String; = "android.settings.CAR_MODE_CHANGED"

.field private static final TAG:Ljava/lang/String; = "CarModeTile"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mSetting:Lcom/android/systemui/qs/SystemSetting;

.field private mZenMode:I

.field private final mZenObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 4
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 137
    new-instance v0, Lcom/android/systemui/qs/tiles/CarModeTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CarModeTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/CarModeTile$2;-><init>(Lcom/android/systemui/qs/tiles/CarModeTile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CarModeTile;->mZenObserver:Landroid/database/ContentObserver;

    .line 60
    new-instance v0, Lcom/android/systemui/qs/tiles/CarModeTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CarModeTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CarModeTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "car_mode_on"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/CarModeTile$1;-><init>(Lcom/android/systemui/qs/tiles/CarModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CarModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    .line 86
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CarModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CarModeTile;->mZenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 90
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/CarModeTile;->init()V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/CarModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/CarModeTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/CarModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/CarModeTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/CarModeTile;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CarModeTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/CarModeTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/CarModeTile;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CarModeTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/CarModeTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/CarModeTile;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/systemui/qs/tiles/CarModeTile;->mZenMode:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/qs/tiles/CarModeTile;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/CarModeTile;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/systemui/qs/tiles/CarModeTile;->mZenMode:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/CarModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/CarModeTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/CarModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/CarModeTile;)Lcom/android/systemui/qs/SystemSetting;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/CarModeTile;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CarModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/CarModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/CarModeTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/CarModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 229
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CarModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "zen_mode"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tiles/CarModeTile;->mZenMode:I

    .line 231
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CarModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 232
    iget v0, p0, Lcom/android/systemui/qs/tiles/CarModeTile;->mZenMode:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/tiles/CarModeTile;->mZenMode:I

    if-ne v0, v1, :cond_1

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CarModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    const/4 v1, 0x4

    iput v1, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CarModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CarModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    iput v1, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 175
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 177
    .local v0, "mode":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CarModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    .line 178
    return-void

    .line 175
    .end local v0    # "mode":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public doNext()V
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CarModeTile;->removeEnabledScreenReaderValue()V

    .line 156
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/CarModeTile;->refreshState(Ljava/lang/Object;)V

    .line 157
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/CarModeTile;->setEnabled(Z)V

    .line 158
    return-void
.end method

.method public doPrevious()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public handleClick()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 107
    const-string v5, "CarModeTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleClick : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CarModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CarModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-eq v2, v7, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CarModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v5, 0x4

    if-ne v2, v5, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "false"

    aput-object v2, v1, v4

    .line 114
    .local v1, "selectionArgs":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CarModeTile;->mContext:Landroid/content/Context;

    const-string v5, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v6, "isSettingsChangesAllowed"

    invoke-static {v2, v5, v6, v1}, Lcom/android/systemui/qs/tiles/CarModeTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 116
    .local v0, "isSettingsChangesAllowed":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 117
    if-nez v0, :cond_2

    .line 118
    const-string v2, "CarModeTile"

    const-string v3, "onClick(): Car mode state change is not allowed"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CarModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    .line 125
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CarModeTile;->isEnabledScreenReaderService()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 126
    const v2, 0x7f0d044c

    const v3, 0x7f0d044d

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/qs/tiles/CarModeTile;->showTalkBackDisablePopup(II)V

    goto :goto_0

    .line 132
    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/CarModeTile;->refreshState(Ljava/lang/Object;)V

    .line 133
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CarModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/CarModeTile;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_1
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    .line 182
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 184
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CarModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 185
    return-void
.end method

.method public handleLongClick()V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CarModeTile;->handleLongClick()V

    .line 167
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 6
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v5, 0x7f0d0339

    const v4, 0x7f020576

    const v3, 0x7f0d034c

    .line 189
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 190
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 192
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 193
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CarModeTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d036c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 194
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->alpha:F

    .line 196
    packed-switch v0, :pswitch_data_0

    .line 222
    :goto_1
    return-void

    .line 189
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CarModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 198
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :pswitch_0
    const v1, 0x7f020577

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 199
    const v1, 0x7f0d0338

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/CarModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 204
    :pswitch_1
    iput v4, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 205
    invoke-virtual {p0, v3, v5}, Lcom/android/systemui/qs/tiles/CarModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 210
    :pswitch_2
    const v1, 0x7f020575

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 211
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 214
    :pswitch_3
    iput v4, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 215
    invoke-virtual {p0, v3, v5}, Lcom/android/systemui/qs/tiles/CarModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    .line 218
    const v1, 0x3ecccccd    # 0.4f

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->alpha:F

    goto :goto_1

    .line 196
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
    .line 44
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/CarModeTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CarModeTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 226
    return-void
.end method

.method public userSwitched()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CarModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->onChange(Z)V

    .line 244
    return-void
.end method
