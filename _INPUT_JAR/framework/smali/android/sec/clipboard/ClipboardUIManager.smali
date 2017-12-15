.class public Landroid/sec/clipboard/ClipboardUIManager;
.super Ljava/lang/Object;
.source "ClipboardUIManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardUIManager"

.field private static mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

.field private static mClipboardMode:I

.field private static sInstance:Landroid/sec/clipboard/ClipboardUIManager;


# instance fields
.field mAdapter:Landroid/widget/BaseAdapter;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mParentView:Landroid/view/View;

.field private mViewID:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Landroid/sec/clipboard/ClipboardUIManager;->sInstance:Landroid/sec/clipboard/ClipboardUIManager;

    .line 52
    const/4 v0, 0x0

    sput v0, Landroid/sec/clipboard/ClipboardUIManager;->mClipboardMode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mViewID:I

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mAdapter:Landroid/widget/BaseAdapter;

    .line 65
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardUIManager;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mViewID:I

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mAdapter:Landroid/widget/BaseAdapter;

    .line 61
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardUIManager;->initVariable()V

    .line 62
    return-void
.end method

.method private closeClopboardUI(Z)Z
    .registers 6
    .param p1, "immediate"    # Z

    .prologue
    const/4 v3, 0x0

    .line 156
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardUIManager;->setupInRuntime()Z

    move-result v1

    if-nez v1, :cond_8

    .line 168
    :cond_7
    :goto_7
    return v3

    .line 160
    :cond_8
    :try_start_8
    sget-object v1, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    if-eqz v1, :cond_7

    .line 161
    sget-object v1, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    iget v2, p0, Landroid/sec/clipboard/ClipboardUIManager;->mViewID:I

    invoke-interface {v1, v2, p1}, Landroid/sec/clipboard/IClipboardUIManager;->dismiss(IZ)V

    .line 162
    const/4 v1, 0x0

    sput-object v1, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_17

    goto :goto_7

    .line 164
    :catch_17
    move-exception v0

    .line 165
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ClipboardUIManager"

    const-string v2, "Can not close Clipboard, RemoteException happened"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;
    .registers 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 222
    sget-object v0, Landroid/sec/clipboard/ClipboardUIManager;->sInstance:Landroid/sec/clipboard/ClipboardUIManager;

    if-nez v0, :cond_b

    .line 223
    new-instance v0, Landroid/sec/clipboard/ClipboardUIManager;

    invoke-direct {v0, p0}, Landroid/sec/clipboard/ClipboardUIManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/sec/clipboard/ClipboardUIManager;->sInstance:Landroid/sec/clipboard/ClipboardUIManager;

    .line 225
    :cond_b
    sget-object v0, Landroid/sec/clipboard/ClipboardUIManager;->sInstance:Landroid/sec/clipboard/ClipboardUIManager;

    return-object v0
.end method

.method private initVariable()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mParentView:Landroid/view/View;

    .line 70
    sput-object v0, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    .line 71
    return-void
.end method

.method private setupInRuntime()Z
    .registers 5

    .prologue
    .line 74
    const/4 v1, 0x1

    .line 76
    .local v1, "result":Z
    const-string v2, "clipboarduiservice"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 77
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/sec/clipboard/IClipboardUIManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardUIManager;

    move-result-object v2

    sput-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    .line 79
    sget-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    if-nez v2, :cond_19

    .line 80
    const-string v2, "ClipboardUIManager"

    const-string v3, "Failed to get ClipboardService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v1, 0x0

    .line 84
    :cond_19
    return v1
.end method

.method private setupInRuntimeForKeep()Z
    .registers 5

    .prologue
    .line 89
    const/4 v1, 0x1

    .line 91
    .local v1, "result":Z
    const-string/jumbo v2, "penableservice"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 92
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/sec/clipboard/IClipboardUIManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardUIManager;

    move-result-object v2

    sput-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    .line 94
    sget-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    if-nez v2, :cond_1a

    .line 95
    const-string v2, "ClipboardUIManager"

    const-string v3, "Failed to get ClipboardService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v1, 0x0

    .line 99
    :cond_1a
    return v1
.end method

.method private showClipBoard(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Z
    .registers 9
    .param p1, "type"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .prologue
    .line 131
    const-string v3, "ClipboardUIManager"

    const-string v4, "ClipboardUIManager showClipBoard()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v2, 0x0

    .line 135
    .local v2, "result":Z
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardUIManager;->setupInRuntime()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 136
    iget-object v3, p0, Landroid/sec/clipboard/ClipboardUIManager;->mContext:Landroid/content/Context;

    const-string v4, "clipboardEx"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    .line 137
    .local v0, "clipEx":Landroid/sec/clipboard/ClipboardExManager;
    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->showUIDataDialog()V

    .line 138
    const/4 v3, 0x0

    .line 152
    .end local v0    # "clipEx":Landroid/sec/clipboard/ClipboardExManager;
    :goto_1c
    return v3

    .line 141
    :cond_1d
    invoke-virtual {p0, p1, p2}, Landroid/sec/clipboard/ClipboardUIManager;->setPasteTargetViewInfo(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 144
    :try_start_20
    sget-object v3, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    iget v4, p0, Landroid/sec/clipboard/ClipboardUIManager;->mViewID:I

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/sec/clipboard/IClipboardUIManager;->show(ILandroid/os/IBinder;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_28} :catch_2b

    .line 145
    const/4 v2, 0x1

    :goto_29
    move v3, v2

    .line 152
    goto :goto_1c

    .line 146
    :catch_2b
    move-exception v1

    .line 148
    .local v1, "e1":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 149
    const/4 v2, 0x0

    goto :goto_29
.end method


# virtual methods
.method public checkScrapMode()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 264
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardUIManager;->setupInRuntimeForKeep()Z

    move-result v3

    if-nez v3, :cond_9

    .line 280
    :goto_8
    return v2

    .line 269
    :cond_9
    :try_start_9
    sget-object v3, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    invoke-interface {v3}, Landroid/sec/clipboard/IClipboardUIManager;->getClipboardUIMode()I

    move-result v3

    sput v3, Landroid/sec/clipboard/ClipboardUIManager;->mClipboardMode:I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_11} :catch_22

    .line 275
    :goto_11
    sget v3, Landroid/sec/clipboard/ClipboardUIManager;->mClipboardMode:I

    if-ne v3, v1, :cond_27

    .line 276
    const-string v3, "ClipboardUIManager"

    const-string v4, "ClipboardUIManager checkScrapMode() : ScrapMode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :goto_1c
    sget v3, Landroid/sec/clipboard/ClipboardUIManager;->mClipboardMode:I

    if-ne v3, v1, :cond_2f

    :goto_20
    move v2, v1

    goto :goto_8

    .line 270
    :catch_22
    move-exception v0

    .line 272
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_11

    .line 278
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_27
    const-string v3, "ClipboardUIManager"

    const-string v4, "ClipboardUIManager checkScrapMode() : Normal Mode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    :cond_2f
    move v1, v2

    .line 280
    goto :goto_20
.end method

.method public dismiss()V
    .registers 3

    .prologue
    .line 177
    const-string v0, "ClipboardUIManager"

    const-string v1, "ClipboardUIManager closeClipBoard()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/sec/clipboard/ClipboardUIManager;->closeClopboardUI(Z)Z

    .line 179
    return-void
.end method

.method public enabledDismissIntent(Z)V
    .registers 2
    .param p1, "b"    # Z

    .prologue
    .line 184
    return-void
.end method

.method public finish()V
    .registers 3

    .prologue
    .line 107
    const-string v0, "ClipboardUIManager"

    const-string v1, "Finish ClipboardService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/sec/clipboard/ClipboardUIManager;->finish(Z)V

    .line 109
    return-void
.end method

.method public finish(Z)V
    .registers 6
    .param p1, "immediate"    # Z

    .prologue
    const/4 v3, 0x0

    .line 117
    const-string v0, "ClipboardUIManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finish : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_22

    .line 122
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 126
    :cond_22
    invoke-direct {p0, p1}, Landroid/sec/clipboard/ClipboardUIManager;->closeClopboardUI(Z)Z

    .line 127
    sput-object v3, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    .line 128
    return-void
.end method

.method public getPreviewIconXpos()F
    .registers 6

    .prologue
    .line 229
    const-string v3, "ClipboardUIManager"

    const-string v4, "ClipboardUIManager getPreviewIconXpos()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v1, 0x0

    .line 232
    .local v1, "iconXpos":F
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardUIManager;->setupInRuntimeForKeep()Z

    move-result v3

    if-nez v3, :cond_10

    move v2, v1

    .line 241
    .end local v1    # "iconXpos":F
    .local v2, "iconXpos":F
    :goto_f
    return v2

    .line 237
    .end local v2    # "iconXpos":F
    .restart local v1    # "iconXpos":F
    :cond_10
    :try_start_10
    sget-object v3, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    invoke-interface {v3}, Landroid/sec/clipboard/IClipboardUIManager;->getIconXpos()F
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_18

    move-result v1

    :goto_16
    move v2, v1

    .line 241
    .end local v1    # "iconXpos":F
    .restart local v2    # "iconXpos":F
    goto :goto_f

    .line 238
    .end local v2    # "iconXpos":F
    .restart local v1    # "iconXpos":F
    :catch_18
    move-exception v0

    .line 239
    .local v0, "e1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_16
.end method

.method public getPreviewIconYpos()F
    .registers 6

    .prologue
    .line 245
    const-string v3, "ClipboardUIManager"

    const-string v4, "ClipboardUIManager getPreviewIconYpos()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v1, 0x0

    .line 248
    .local v1, "iconYpos":F
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardUIManager;->setupInRuntimeForKeep()Z

    move-result v3

    if-nez v3, :cond_10

    move v2, v1

    .line 257
    .end local v1    # "iconYpos":F
    .local v2, "iconYpos":F
    :goto_f
    return v2

    .line 253
    .end local v2    # "iconYpos":F
    .restart local v1    # "iconYpos":F
    :cond_10
    :try_start_10
    sget-object v3, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    invoke-interface {v3}, Landroid/sec/clipboard/IClipboardUIManager;->getIconYpos()F
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_18

    move-result v1

    :goto_16
    move v2, v1

    .line 257
    .end local v1    # "iconYpos":F
    .restart local v2    # "iconYpos":F
    goto :goto_f

    .line 254
    .end local v2    # "iconYpos":F
    .restart local v1    # "iconYpos":F
    :catch_18
    move-exception v0

    .line 255
    .local v0, "e1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_16
.end method

.method public hideFloatingIconForScrap()V
    .registers 4

    .prologue
    .line 305
    const-string v1, "ClipboardUIManager"

    const-string v2, "ClipboardUIManager hideFloatingIconForScrap"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardUIManager;->setupInRuntimeForKeep()Z

    move-result v1

    if-nez v1, :cond_e

    .line 316
    :goto_d
    return-void

    .line 312
    :cond_e
    :try_start_e
    sget-object v1, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    invoke-interface {v1}, Landroid/sec/clipboard/IClipboardUIManager;->hideFloatingIconForScrap()V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_14

    goto :goto_d

    .line 313
    :catch_14
    move-exception v0

    .line 314
    .local v0, "e1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_d
.end method

.method public isShowing()Z
    .registers 5

    .prologue
    .line 187
    const-string v2, "ClipboardUIManager"

    const-string v3, "ClipboardUIManager isShowingClipBoard()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v1, 0x0

    .line 191
    .local v1, "result":Z
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardUIManager;->setupInRuntime()Z

    move-result v2

    if-nez v2, :cond_10

    .line 192
    const/4 v2, 0x0

    .line 202
    :goto_f
    return v2

    .line 196
    :cond_10
    :try_start_10
    sget-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    invoke-interface {v2}, Landroid/sec/clipboard/IClipboardUIManager;->isShowing()Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_18

    move-result v1

    :goto_16
    move v2, v1

    .line 202
    goto :goto_f

    .line 197
    :catch_18
    move-exception v0

    .line 199
    .local v0, "e1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 200
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public sendCropRectForAnimation(Landroid/graphics/Rect;Z)V
    .registers 10
    .param p1, "cropRect"    # Landroid/graphics/Rect;
    .param p2, "showAni"    # Z

    .prologue
    .line 324
    const-string v0, "ClipboardUIManager"

    const-string v1, "ClipboardUIManager hideFloatingIconForScrap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardUIManager;->setupInRuntimeForKeep()Z

    move-result v0

    if-nez v0, :cond_e

    .line 340
    :goto_d
    return-void

    .line 330
    :cond_e
    if-nez p1, :cond_18

    .line 331
    const-string v0, "ClipboardUIManager"

    const-string v1, "ClipboardUIManager cropRect is null. so, can not sendCropRectforAni"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 336
    :cond_18
    :try_start_18
    sget-object v0, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/sec/clipboard/IClipboardUIManager;->sendCropRectforAni(IIIIZ)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_26} :catch_27

    goto :goto_d

    .line 337
    :catch_27
    move-exception v6

    .line 338
    .local v6, "e1":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_d
.end method

.method public setPasteTargetViewInfo(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .prologue
    .line 206
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_26

    .line 207
    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClipboardUIManager > setPasteTargetViewInfo - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_26
    :try_start_26
    sget-object v1, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    if-eqz v1, :cond_30

    .line 211
    sget-object v1, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    invoke-interface {v1, p1, p2}, Landroid/sec/clipboard/IClipboardUIManager;->setPasteTargetViewType(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 219
    :goto_2f
    return-void

    .line 213
    :cond_30
    const-string v1, "ClipboardServiceEx"

    const-string v2, "mCBUIManager is null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_37} :catch_38

    goto :goto_2f

    .line 215
    :catch_38
    move-exception v0

    .line 217
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2f
.end method

.method public show(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .prologue
    .line 172
    const-string v0, "ClipboardUIManager"

    const-string v1, "ClipboardUIManager show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-direct {p0, p1, p2}, Landroid/sec/clipboard/ClipboardUIManager;->showClipBoard(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Z

    .line 174
    return-void
.end method

.method public showFloatingIconForScrap()V
    .registers 5

    .prologue
    .line 284
    const-string v2, "ClipboardUIManager"

    const-string v3, "ClipboardUIManager showFloatingIconForScrap"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardUIManager;->setupInRuntimeForKeep()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 287
    iget-object v2, p0, Landroid/sec/clipboard/ClipboardUIManager;->mContext:Landroid/content/Context;

    const-string v3, "clipboardEx"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    .line 288
    .local v0, "clipEx":Landroid/sec/clipboard/ClipboardExManager;
    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->showUIFloatingIcon()V

    .line 297
    .end local v0    # "clipEx":Landroid/sec/clipboard/ClipboardExManager;
    :goto_1a
    return-void

    .line 293
    :cond_1b
    :try_start_1b
    sget-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    invoke-interface {v2}, Landroid/sec/clipboard/IClipboardUIManager;->showFloatingIconForScrap()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21

    goto :goto_1a

    .line 294
    :catch_21
    move-exception v1

    .line 295
    .local v1, "e1":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1a
.end method
