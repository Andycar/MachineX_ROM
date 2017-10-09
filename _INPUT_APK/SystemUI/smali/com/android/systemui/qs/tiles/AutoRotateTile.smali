.class public Lcom/android/systemui/qs/tiles/AutoRotateTile;
.super Lcom/android/systemui/qs/QSTile;
.source "AutoRotateTile.java"


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
.field private static final ACCELEROMETER_ROTATION_GALLERY_VIDEO:Ljava/lang/String; = "accelerometer_rotation_gallery_video"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-AutoRotateQuickSettingButton"


# instance fields
.field private mAutoRotation:Z

.field private mKeyboardHidden:I

.field private mListening:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRotationSecondSetting:Lcom/android/systemui/qs/SystemSetting;

.field private final mRotationSetting:Lcom/android/systemui/qs/SystemSetting;

.field private mSupportFolderType:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 7
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 81
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 63
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mSupportFolderType:Z

    .line 66
    new-instance v1, Lcom/android/systemui/qs/tiles/AutoRotateTile$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile$1;-><init>(Lcom/android/systemui/qs/tiles/AutoRotateTile;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    new-instance v1, Lcom/android/systemui/qs/tiles/AutoRotateTile$2;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v5, "accelerometer_rotation"

    invoke-direct {v1, p0, v3, v4, v5}, Lcom/android/systemui/qs/tiles/AutoRotateTile$2;-><init>(Lcom/android/systemui/qs/tiles/AutoRotateTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mRotationSetting:Lcom/android/systemui/qs/SystemSetting;

    .line 91
    new-instance v1, Lcom/android/systemui/qs/tiles/AutoRotateTile$3;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v5, "accelerometer_rotation_second"

    invoke-direct {v1, p0, v3, v4, v5}, Lcom/android/systemui/qs/tiles/AutoRotateTile$3;-><init>(Lcom/android/systemui/qs/tiles/AutoRotateTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mRotationSecondSetting:Lcom/android/systemui/qs/SystemSetting;

    .line 99
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mRotationSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 100
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mRotationSecondSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 103
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0, v6, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 106
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getAutoRotation()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    .line 107
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    if-eqz v3, :cond_0

    :goto_0
    iput v2, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 108
    return-void

    .line 107
    :cond_0
    const/4 v2, 0x2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/AutoRotateTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AutoRotateTile;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mSupportFolderType:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/AutoRotateTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AutoRotateTile;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/tiles/AutoRotateTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AutoRotateTile;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/AutoRotateTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AutoRotateTile;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getAutoRotation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/AutoRotateTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AutoRotateTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/AutoRotateTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AutoRotateTile;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->isFolderOpen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/AutoRotateTile;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AutoRotateTile;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->handleRotationValueChanged(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/AutoRotateTile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AutoRotateTile;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->setAutoRotation(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/AutoRotateTile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AutoRotateTile;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->setGalleryVideoRotation(Z)V

    return-void
.end method

.method private getAutoRotation()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 217
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mSupportFolderType:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->isFolderOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 218
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getAutoRotationSecond()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    .line 219
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    .line 224
    :cond_0
    :goto_0
    return v1

    .line 223
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 224
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "accelerometer_rotation"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getAutoRotationSecond()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 241
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 242
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "accelerometer_rotation_second"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private getGalleryVideoRotation()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 276
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 277
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "accelerometer_rotation_gallery_video"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private handleRotationValueChanged(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getAutoRotation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    .line 230
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->refreshState(Ljava/lang/Object;)V

    .line 232
    return-void

    .line 230
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private isFolderOpen()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 235
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 236
    .local v0, "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mKeyboardHidden:I

    .line 237
    iget v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mKeyboardHidden:I

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setAutoRotation(Z)V
    .locals 1
    .param p1, "autorotate"    # Z

    .prologue
    .line 246
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    .line 248
    new-instance v0, Lcom/android/systemui/qs/tiles/AutoRotateTile$4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/AutoRotateTile$4;-><init>(Lcom/android/systemui/qs/tiles/AutoRotateTile;Z)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 273
    return-void
.end method

.method private setGalleryVideoRotation(Z)V
    .locals 4
    .param p1, "isRotate"    # Z

    .prologue
    .line 281
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 282
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "accelerometer_rotation_gallery_video"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 283
    return-void

    .line 282
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showSecondaryMenu()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 286
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f04005b

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 288
    .local v3, "content":Landroid/view/View;
    const v6, 0x7f0e01d0

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 289
    .local v0, "allRadio":Landroid/widget/RadioButton;
    const v6, 0x7f0e01d1

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    .line 290
    .local v5, "videoRadio":Landroid/widget/RadioButton;
    const v6, 0x7f0e01d3

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 292
    .local v1, "cancelBtn":Landroid/widget/Button;
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getGalleryVideoRotation()Z

    move-result v4

    .line 293
    .local v4, "isVideoRotate":Z
    iget-boolean v6, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    if-eqz v6, :cond_1

    .line 294
    invoke-virtual {v0, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 300
    :cond_0
    :goto_0
    new-instance v2, Lcom/android/systemui/qs/tiles/AutoRotateTile$5;

    invoke-direct {v2, p0, v4}, Lcom/android/systemui/qs/tiles/AutoRotateTile$5;-><init>(Lcom/android/systemui/qs/tiles/AutoRotateTile;Z)V

    .line 326
    .local v2, "clickListener":Landroid/view/View$OnClickListener;
    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    invoke-virtual {v5, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    const/4 v6, 0x2

    invoke-virtual {p0, v3, v6}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->showDetailviewPanel(Landroid/view/View;I)Z

    .line 331
    return-void

    .line 296
    .end local v2    # "clickListener":Landroid/view/View$OnClickListener;
    :cond_1
    if-eqz v4, :cond_0

    .line 297
    invoke-virtual {v5, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected handleClick()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 129
    const-string v5, "STATUSBAR-AutoRotateQuickSettingButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleClick : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v3, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-array v1, v2, [Ljava/lang/String;

    const-string v3, "false"

    aput-object v3, v1, v4

    .line 132
    .local v1, "selectionArgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    const-string v5, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v6, "isSettingsChangesAllowed"

    invoke-static {v3, v5, v6, v1}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 134
    .local v0, "isSettingsChangesAllowed":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 135
    if-nez v0, :cond_1

    .line 136
    const-string v3, "STATUSBAR-AutoRotateQuickSettingButton"

    const-string v4, "onClick(): Rotation state change is not allowed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v3, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v5, 0x3

    if-eq v3, v5, :cond_0

    .line 145
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v3, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .line 146
    .local v2, "state":Z
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getAutoRotation()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    .line 148
    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    if-eq v2, v3, :cond_0

    .line 149
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->setAutoRotation(Z)V

    goto :goto_0

    .end local v2    # "state":Z
    :cond_2
    move v2, v4

    .line 145
    goto :goto_1
.end method

.method protected handleDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 120
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 122
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mRotationSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mRotationSecondSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 125
    return-void
.end method

.method public handleLongClick()V
    .locals 5

    .prologue
    .line 161
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "true"

    aput-object v3, v1, v2

    .line 163
    .local v1, "selectionArgs":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v4, "isSettingsChangesAllowed"

    invoke-static {v2, v3, v4, v1}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 166
    .local v0, "isSettingsChangesAllowed":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 167
    if-nez v0, :cond_0

    .line 168
    const-string v2, "STATUSBAR-AutoRotateQuickSettingButton"

    const-string v3, "onClick(): Rotation state change is not allowed"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :goto_0
    return-void

    .line 188
    :cond_0
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$DisplaySettingsActivity"

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->handleLongClick()V

    .line 156
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v3, 0x7f0d0345

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
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0365

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 199
    packed-switch v0, :pswitch_data_0

    .line 213
    :goto_1
    return-void

    .line 195
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 201
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :pswitch_0
    const v1, 0x7f02059f

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 202
    const v1, 0x7f0d0338

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 207
    :pswitch_1
    const v1, 0x7f02059e

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 208
    const v1, 0x7f0d0339

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 53
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 116
    return-void
.end method
