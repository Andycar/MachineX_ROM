.class public Lcom/android/systemui/qs/tiles/SilentModeTile;
.super Lcom/android/systemui/qs/QSTile;
.source "SilentModeTile.java"


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
.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-SilentModeTile"

.field private static mDeviceSoundProfile:I

.field private static mDeviceSoundProfilePrevious:I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTextID:I

.field private mZenMode:I

.field private final mZenObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 4
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v3, 0x0

    .line 70
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mAudioManager:Landroid/media/AudioManager;

    .line 52
    iput v3, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mZenMode:I

    .line 54
    new-instance v0, Lcom/android/systemui/qs/tiles/SilentModeTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/SilentModeTile$1;-><init>(Lcom/android/systemui/qs/tiles/SilentModeTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 379
    new-instance v0, Lcom/android/systemui/qs/tiles/SilentModeTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/SilentModeTile$2;-><init>(Lcom/android/systemui/qs/tiles/SilentModeTile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mZenObserver:Landroid/database/ContentObserver;

    .line 71
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mAudioManager:Landroid/media/AudioManager;

    .line 72
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    sput v0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    .line 74
    sget v0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    sput v0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfilePrevious:I

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SilentModeTile;->updateStatus()V

    .line 79
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SilentModeTile;->setListeningLocal(Z)V

    .line 81
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mInterruptionsSoundMode:Z

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mZenMode:I

    .line 84
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mZenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 87
    :cond_0
    return-void

    .line 77
    :cond_1
    const-string v0, "STATUSBAR-SilentModeTile"

    const-string v1, "mAudioManager is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 44
    sput p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfilePrevious:I

    return p0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 44
    sput p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/SilentModeTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/SilentModeTile;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/SilentModeTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/SilentModeTile;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mZenMode:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/qs/tiles/SilentModeTile;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/SilentModeTile;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mZenMode:I

    return p1
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 5
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;

    .prologue
    const v3, 0x7f0205aa

    const/4 v1, 0x1

    const v2, 0x7f0205ac

    .line 264
    const/4 v0, 0x0

    .line 266
    .local v0, "isPriorityInZenMode":Z
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mInterruptionsSoundMode:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mZenMode:I

    if-ne v4, v1, :cond_0

    move v0, v1

    .line 269
    :goto_0
    iget v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v1, :pswitch_data_0

    .line 329
    :goto_1
    :pswitch_0
    return-void

    .line 266
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 271
    :pswitch_1
    if-eqz v0, :cond_1

    const v1, 0x7f020583

    :goto_2
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_2

    .line 275
    :pswitch_2
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mSoundProfile:Z

    if-eqz v1, :cond_2

    .line 276
    const v1, 0x7f020588

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    .line 278
    :cond_2
    const v1, 0x7f0205ae

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    .line 282
    :pswitch_3
    if-eqz v0, :cond_3

    const v1, 0x7f020584

    :goto_3
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_3

    .line 286
    :pswitch_4
    sget v1, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfilePrevious:I

    packed-switch v1, :pswitch_data_1

    .line 294
    iput v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    .line 288
    :pswitch_5
    iput v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    .line 291
    :pswitch_6
    iput v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 286
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private showSecondaryMenu()V
    .locals 0

    .prologue
    .line 399
    return-void
.end method

.method private updateNextProfile()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 402
    sget v3, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    if-ne v3, v2, :cond_0

    .line 403
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SilentModeTile;->setQsTileViewSoundEffectsEnabled(Z)V

    .line 412
    :goto_0
    return v0

    .line 405
    :cond_0
    sget v0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    if-nez v0, :cond_1

    move v0, v1

    .line 406
    goto :goto_0

    .line 407
    :cond_1
    sget v0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    if-ne v0, v1, :cond_2

    .line 408
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/SilentModeTile;->setQsTileViewSoundEffectsEnabled(Z)V

    move v0, v2

    .line 409
    goto :goto_0

    .line 411
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/SilentModeTile;->setQsTileViewSoundEffectsEnabled(Z)V

    move v0, v1

    .line 412
    goto :goto_0
.end method


# virtual methods
.method protected handleClick()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 117
    const-string v4, "STATUSBAR-SilentModeTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleClick : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v3, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-array v1, v7, [Ljava/lang/String;

    const-string v3, "false"

    aput-object v3, v1, v6

    .line 120
    .local v1, "selectionArgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v5, "isSettingsChangesAllowed"

    invoke-static {v3, v4, v5, v1}, Lcom/android/systemui/qs/tiles/SilentModeTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 122
    .local v0, "isSettingsChangesAllowed":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 123
    if-nez v0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v3, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 132
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v3, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 133
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0495

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 138
    :cond_2
    const/4 v2, 0x0

    .line 141
    .local v2, "soundProfile":I
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SilentModeTile;->updateNextProfile()I

    move-result v2

    .line 173
    const-string v3, "STATUSBAR-SilentModeTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SilentMode handleClick(), setRingerMode("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v2, v6}, Landroid/media/AudioManager;->setRingerMode(IZ)V

    goto :goto_0
.end method

.method protected handleDestroy()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SilentModeTile;->setListeningLocal(Z)V

    .line 113
    return-void
.end method

.method public handleLongClick()V
    .locals 5

    .prologue
    .line 195
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "true"

    aput-object v3, v1, v2

    .line 196
    .local v1, "selectionArgs":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v4, "isSettingsChangesAllowed"

    invoke-static {v2, v3, v4, v1}, Lcom/android/systemui/qs/tiles/SilentModeTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 198
    .local v0, "isSettingsChangesAllowed":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 199
    if-nez v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 205
    :cond_0
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$SoundSettingsActivity"

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/qs/tiles/SilentModeTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SilentModeTile;->handleLongClick()V

    .line 190
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 8
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v7, 0x7f0d0343

    const/high16 v6, 0x3f800000    # 1.0f

    const v5, 0x3ecccccd    # 0.4f

    const v4, 0x7f0d0342

    const v3, 0x7f0d0338

    .line 210
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 211
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 212
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 213
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mTextID:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 214
    iput v6, p1, Lcom/android/systemui/qs/QSTile$MultiState;->imageAlpha:F

    .line 215
    iput v6, p1, Lcom/android/systemui/qs/QSTile$MultiState;->textAlpha:F

    .line 216
    const/4 v1, -0x1

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->tintColor:I

    .line 217
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/SilentModeTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    .line 218
    packed-switch v0, :pswitch_data_0

    .line 260
    :cond_0
    :goto_1
    :pswitch_0
    return-void

    .line 210
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 220
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :pswitch_1
    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/qs/tiles/SilentModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 225
    :pswitch_2
    const v1, 0x7f0d0344

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/qs/tiles/SilentModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 230
    :pswitch_3
    invoke-virtual {p0, v7, v3}, Lcom/android/systemui/qs/tiles/SilentModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    .line 233
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->tintColor:I

    goto :goto_1

    .line 239
    :pswitch_4
    iput v5, p1, Lcom/android/systemui/qs/QSTile$MultiState;->imageAlpha:F

    .line 240
    iput v5, p1, Lcom/android/systemui/qs/QSTile$MultiState;->textAlpha:F

    .line 241
    sget v1, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfilePrevious:I

    packed-switch v1, :pswitch_data_1

    .line 253
    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/qs/tiles/SilentModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 243
    :pswitch_5
    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/qs/tiles/SilentModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 248
    :pswitch_6
    invoke-virtual {p0, v7, v3}, Lcom/android/systemui/qs/tiles/SilentModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 241
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
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
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/SilentModeTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SilentModeTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 97
    return-void
.end method

.method public setListeningLocal(Z)V
    .locals 4
    .param p1, "listening"    # Z

    .prologue
    const/4 v3, 0x0

    .line 100
    if-eqz p1, :cond_0

    .line 101
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 102
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 107
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public updateStatus()V
    .locals 5

    .prologue
    const v4, 0x7f0d0362

    const/4 v3, 0x1

    .line 332
    const/4 v0, -0x1

    .line 333
    .local v0, "status":I
    iput v4, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mTextID:I

    .line 336
    sget v1, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    if-ne v1, v3, :cond_1

    .line 337
    const/4 v0, 0x4

    .line 338
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mInterruptionsSoundMode:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mZenMode:I

    if-ne v1, v3, :cond_0

    .line 339
    const v1, 0x7f0d0497

    iput v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mTextID:I

    .line 376
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/SilentModeTile;->refreshState(Ljava/lang/Object;)V

    .line 377
    return-void

    .line 341
    :cond_0
    const v1, 0x7f0d0363

    iput v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mTextID:I

    goto :goto_0

    .line 343
    :cond_1
    sget v1, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    if-nez v1, :cond_2

    .line 345
    const/4 v0, 0x2

    .line 346
    const v1, 0x7f0d0364

    iput v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mTextID:I

    goto :goto_0

    .line 363
    :cond_2
    sget v1, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 364
    const/4 v0, 0x1

    .line 365
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mInterruptionsSoundMode:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mZenMode:I

    if-ne v1, v3, :cond_3

    .line 366
    const v1, 0x7f0d0498

    iput v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mTextID:I

    goto :goto_0

    .line 368
    :cond_3
    iput v4, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mTextID:I

    goto :goto_0

    .line 371
    :cond_4
    const/4 v0, 0x1

    .line 372
    iput v4, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mTextID:I

    goto :goto_0
.end method
