.class public Lcom/android/systemui/qs/tiles/TorchLightTile;
.super Lcom/android/systemui/qs/QSTile;
.source "TorchLightTile.java"


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
.field private static final FLASH_LIGHT_DEFAULT_BRIGHTNESS_LEVEL:Ljava/lang/String; = "SEC_FLOATING_FEATURE_COMMON_FLASH_LIGHT_DEFAULT_BRIGHTNESS_LEVEL"

.field private static final FLASH_LIGHT_SELECT_BRIGHTNESS_LEVEL:Ljava/lang/String; = "Quickpanel_torch_brightness_level"

.field private static final RECENTLY_ON_DURATION_1_MILLIS:J = 0x493e0L

.field private static final RECENTLY_ON_DURATION_2_MILLIS:J = 0x927c0L

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-TorchLightQuickSettingButton"


# instance fields
.field private cfmsService:Landroid/os/CustomFrequencyManager;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mRecentlyOnTimeout:Ljava/lang/Runnable;

.field private mTorchEnabled:Z

.field private mTorchLevel:I

.field private final mTorchObserver:Landroid/database/ContentObserver;

.field private mWasLastOn:J


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 5
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v0, 0x1

    const/4 v4, -0x2

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 207
    new-instance v2, Lcom/android/systemui/qs/tiles/TorchLightTile$1;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/qs/tiles/TorchLightTile$1;-><init>(Lcom/android/systemui/qs/tiles/TorchLightTile;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchObserver:Landroid/database/ContentObserver;

    .line 305
    new-instance v2, Lcom/android/systemui/qs/tiles/TorchLightTile$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/TorchLightTile$4;-><init>(Lcom/android/systemui/qs/tiles/TorchLightTile;)V

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mRecentlyOnTimeout:Ljava/lang/Runnable;

    .line 72
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mContentResolver:Landroid/content/ContentResolver;

    .line 74
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "torch_light"

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchEnabled:Z

    .line 77
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "Quickpanel_torch_brightness_level"

    invoke-static {v0, v2, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchLevel:I

    .line 79
    iget v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchLevel:I

    if-nez v0, :cond_0

    .line 80
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_FLASH_LIGHT_DEFAULT_BRIGHTNESS_LEVEL"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/FloatingFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchLevel:I

    .line 81
    iget v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchLevel:I

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchLevel:I

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "torch level : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "torch_light"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mContext:Landroid/content/Context;

    const-string v1, "CustomFrequencyManagerService"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CustomFrequencyManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->cfmsService:Landroid/os/CustomFrequencyManager;

    .line 92
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mWasLastOn:J

    .line 94
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/TorchLightTile;->updateState()V

    .line 95
    return-void

    :cond_1
    move v0, v1

    .line 74
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/TorchLightTile;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/TorchLightTile;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/TorchLightTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/TorchLightTile;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchEnabled:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/TorchLightTile;)Lcom/android/systemui/qs/QSTile$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/TorchLightTile;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/tiles/TorchLightTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/TorchLightTile;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchEnabled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/TorchLightTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/TorchLightTile;

    .prologue
    .line 51
    iget v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchLevel:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/qs/tiles/TorchLightTile;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/TorchLightTile;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchLevel:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/TorchLightTile;)Landroid/os/CustomFrequencyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/TorchLightTile;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->cfmsService:Landroid/os/CustomFrequencyManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/TorchLightTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/TorchLightTile;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/TorchLightTile;->updateState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/TorchLightTile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/TorchLightTile;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/TorchLightTile;->updateTorchState(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/TorchLightTile;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/TorchLightTile;

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mWasLastOn:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/systemui/qs/tiles/TorchLightTile;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/TorchLightTile;
    .param p1, "x1"    # J

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mWasLastOn:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/TorchLightTile;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/TorchLightTile;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mRecentlyOnTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/TorchLightTile;)Lcom/android/systemui/qs/QSTile$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/TorchLightTile;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/TorchLightTile;)Lcom/android/systemui/qs/QSTile$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/TorchLightTile;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/TorchLightTile;)Lcom/android/systemui/qs/QSTile$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/TorchLightTile;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/TorchLightTile;)Lcom/android/systemui/qs/QSTile$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/TorchLightTile;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    return-object v0
.end method

.method private getBrightness()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchLevel:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private showSecondaryMenu()V
    .locals 12

    .prologue
    .line 234
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f04005d

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 236
    .local v3, "content":Landroid/view/View;
    const v9, 0x7f0e01db

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    .line 237
    .local v6, "noneRadio":Landroid/widget/RadioButton;
    const v9, 0x7f0e01dc

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    .line 238
    .local v5, "fiveMinRadio":Landroid/widget/RadioButton;
    const v9, 0x7f0e01dd

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    .line 239
    .local v8, "tenMinRadio":Landroid/widget/RadioButton;
    const v9, 0x7f0e01de

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 240
    .local v4, "doneBtn":Landroid/widget/Button;
    const v9, 0x7f0e01d3

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 242
    .local v1, "cancelBtn":Landroid/widget/Button;
    const v9, 0x7f0e01d9

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 244
    .local v0, "brightnessProgress":Landroid/widget/SeekBar;
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/TorchLightTile;->getBrightness()I

    move-result v7

    .line 246
    .local v7, "progress":I
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 248
    new-instance v2, Lcom/android/systemui/qs/tiles/TorchLightTile$2;

    invoke-direct {v2, p0, v5, v8}, Lcom/android/systemui/qs/tiles/TorchLightTile$2;-><init>(Lcom/android/systemui/qs/tiles/TorchLightTile;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    .line 273
    .local v2, "clickListener":Landroid/view/View$OnClickListener;
    invoke-virtual {v6, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    invoke-virtual {v5, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    invoke-virtual {v8, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    invoke-virtual {v0, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 280
    new-instance v9, Lcom/android/systemui/qs/tiles/TorchLightTile$3;

    invoke-direct {v9, p0}, Lcom/android/systemui/qs/tiles/TorchLightTile$3;-><init>(Lcom/android/systemui/qs/tiles/TorchLightTile;)V

    invoke-virtual {v0, v9}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 302
    const/4 v9, 0x3

    invoke-virtual {p0, v3, v9}, Lcom/android/systemui/qs/tiles/TorchLightTile;->showDetailviewPanel(Landroid/view/View;I)Z

    .line 303
    return-void
.end method

.method private updateState()V
    .locals 2

    .prologue
    .line 220
    const/4 v0, 0x2

    .line 221
    .local v0, "status":I
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchEnabled:Z

    if-eqz v1, :cond_0

    .line 222
    const/4 v0, 0x1

    .line 226
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/TorchLightTile;->refreshState(Ljava/lang/Object;)V

    .line 227
    return-void

    .line 224
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private updateTorchState(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 166
    if-eqz p1, :cond_0

    .line 167
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mWasLastOn:J

    .line 170
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "torch_light"

    if-eqz p1, :cond_1

    :goto_0
    const/4 v2, -0x2

    invoke-static {v3, v4, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 174
    if-eqz p1, :cond_3

    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "torch level : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchLevel:I

    if-lez v1, :cond_2

    .line 177
    iget v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchLevel:I

    invoke-static {v1}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 178
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->cfmsService:Landroid/os/CustomFrequencyManager;

    const-string v2, "CLOCK_SET_TORCH_LIGHT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/CustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 197
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_4

    .line 198
    const-string v1, "android.intent.action.ACTION_ASSISTIVE_ON_WIDGETUPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->TAG:Ljava/lang/String;

    const-string v2, "intent : ASSISTIVELIGHT_ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 205
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    move v1, v2

    .line 170
    goto :goto_0

    .line 180
    :cond_2
    const/4 v1, 0x1

    :try_start_1
    invoke-static {v1}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 181
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->cfmsService:Landroid/os/CustomFrequencyManager;

    const-string v2, "CLOCK_SET_TORCH_LIGHT"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/os/CustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 187
    :catch_0
    move-exception v1

    goto :goto_1

    .line 184
    :cond_3
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 185
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->cfmsService:Landroid/os/CustomFrequencyManager;

    const-string v2, "CLOCK_SET_TORCH_LIGHT"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Landroid/os/CustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 201
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_4
    const-string v1, "android.intent.action.ACTION_ASSISTIVE_OFF_WIDGETUPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->TAG:Ljava/lang/String;

    const-string v2, "intent : ASSISTIVELIGHT_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method protected handleClick()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 117
    const-string v5, "STATUSBAR-TorchLightQuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleClick : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "false"

    aput-object v2, v1, v4

    .line 120
    .local v1, "selectionArgs":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mContext:Landroid/content/Context;

    const-string v5, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v6, "isSettingsChangesAllowed"

    invoke-static {v2, v5, v6, v1}, Lcom/android/systemui/qs/tiles/TorchLightTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 122
    .local v0, "isSettingsChangesAllowed":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 123
    if-nez v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v5, 0x3

    if-eq v2, v5, :cond_0

    .line 132
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchEnabled:Z

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/TorchLightTile;->updateTorchState(Z)V

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1
.end method

.method protected handleDestroy()V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 113
    return-void
.end method

.method public handleLongClick()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v2, 0x7f0d02e3

    .line 145
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 146
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 147
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 148
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 149
    packed-switch v0, :pswitch_data_0

    .line 163
    :goto_1
    return-void

    .line 145
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 151
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :pswitch_0
    const v1, 0x7f020565

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 152
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/qs/tiles/TorchLightTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 157
    :pswitch_1
    const v1, 0x7f020564

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 158
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/qs/tiles/TorchLightTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 149
    nop

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
    .line 51
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/TorchLightTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/TorchLightTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 105
    return-void
.end method

.method public setListeningLocal(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 108
    return-void
.end method
