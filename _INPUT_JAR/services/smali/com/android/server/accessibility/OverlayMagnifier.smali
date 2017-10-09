.class public final Lcom/android/server/accessibility/OverlayMagnifier;
.super Ljava/lang/Object;
.source "OverlayMagnifier.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MY_PID:I

.field private static final SIZE_LARGE:I = 0x2

.field private static final SIZE_MEDIUM:I = 0x1

.field private static final SIZE_SMALL:I


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverState:Z

.field private final mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private final mDisplayManager:Landroid/hardware/display/IDisplayManager;

.field private mHeight:I

.field private final mMagnificationSettingsObserver:Landroid/database/ContentObserver;

.field private mMagnifierScale:I

.field private mMagnifierSize:I

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private mPolicy:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

.field private final mScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field private mWidth:I

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 84
    const-class v0, Lcom/android/server/accessibility/OverlayMagnifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/OverlayMagnifier;->LOG_TAG:Ljava/lang/String;

    .line 86
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/accessibility/OverlayMagnifier;->MY_PID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v7, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnifierScale:I

    .line 99
    iput v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnifierSize:I

    .line 100
    iput v7, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mWidth:I

    .line 101
    iput v7, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mHeight:I

    .line 104
    iput-boolean v5, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mCoverState:Z

    .line 282
    new-instance v4, Lcom/android/server/accessibility/OverlayMagnifier$1;

    invoke-direct {v4, p0}, Lcom/android/server/accessibility/OverlayMagnifier$1;-><init>(Lcom/android/server/accessibility/OverlayMagnifier;)V

    iput-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 332
    new-instance v4, Lcom/android/server/accessibility/OverlayMagnifier$2;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/server/accessibility/OverlayMagnifier$2;-><init>(Lcom/android/server/accessibility/OverlayMagnifier;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnificationSettingsObserver:Landroid/database/ContentObserver;

    .line 339
    new-instance v4, Lcom/android/server/accessibility/OverlayMagnifier$3;

    invoke-direct {v4, p0}, Lcom/android/server/accessibility/OverlayMagnifier$3;-><init>(Lcom/android/server/accessibility/OverlayMagnifier;)V

    iput-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 107
    iput-object p1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    .line 108
    const-string/jumbo v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mWindowManager:Landroid/view/IWindowManager;

    .line 109
    const-string v4, "display"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    .line 110
    new-instance v4, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    invoke-direct {v4, p0}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;-><init>(Lcom/android/server/accessibility/OverlayMagnifier;)V

    iput-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mPolicy:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    .line 111
    iput-object p2, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 113
    :try_start_4e
    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/hardware/display/IDisplayManager;->enableOverlayMagnifier(Z)V

    .line 115
    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10501eb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 116
    .local v3, "width":I
    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10501ee

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 117
    .local v2, "height":I
    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-interface {v4, v3, v2, v5}, Landroid/hardware/display/IDisplayManager;->setMagnificationSettings(IIF)V
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_75} :catch_bc

    .line 122
    .end local v2    # "height":I
    .end local v3    # "width":I
    :goto_75
    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hover_zoom_magnifier_size"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnificationSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 124
    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hover_zoom_value"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnificationSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 126
    invoke-direct {p0}, Lcom/android/server/accessibility/OverlayMagnifier;->setMagnificationSettings()V

    .line 127
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 128
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 130
    new-instance v4, Lcom/samsung/android/cover/CoverManager;

    iget-object v5, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 131
    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v5, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v4, v5}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 132
    return-void

    .line 118
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :catch_bc
    move-exception v0

    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_75
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/server/accessibility/OverlayMagnifier;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/OverlayMagnifier;)Landroid/hardware/display/IDisplayManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/OverlayMagnifier;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/OverlayMagnifier;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/accessibility/OverlayMagnifier;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/server/accessibility/OverlayMagnifier;->hideMagnifier()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/OverlayMagnifier;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/accessibility/OverlayMagnifier;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/server/accessibility/OverlayMagnifier;->setMagnificationSettings()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/OverlayMagnifier;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/OverlayMagnifier;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mCoverState:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/accessibility/OverlayMagnifier;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/OverlayMagnifier;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mCoverState:Z

    return p1
.end method

.method private hideMagnifier()V
    .registers 4

    .prologue
    .line 206
    sget-object v1, Lcom/android/server/accessibility/OverlayMagnifier;->LOG_TAG:Ljava/lang/String;

    const-string v2, "hideMagnifier()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mPolicy:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    invoke-virtual {v1}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->stopMagnifier()V

    .line 209
    :try_start_c
    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/hardware/display/IDisplayManager;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_12} :catch_13

    .line 213
    :goto_12
    return-void

    .line 210
    :catch_13
    move-exception v0

    .line 211
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_12
.end method

.method private setMagnificationSettings()V
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 292
    const/4 v0, 0x0

    .line 294
    .local v0, "changed":Z
    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hover_zoom_magnifier_size"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 295
    .local v3, "size":I
    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hover_zoom_value"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 297
    .local v2, "scale":I
    sget-object v4, Lcom/android/server/accessibility/OverlayMagnifier;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setMagnificationSettings: size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " scale="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnifierScale:I

    if-eq v4, v2, :cond_46

    .line 300
    const/4 v0, 0x1

    .line 301
    iput v2, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnifierScale:I

    .line 304
    :cond_46
    iget v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnifierSize:I

    if-eq v4, v3, :cond_50

    .line 305
    const/4 v0, 0x1

    .line 306
    iput v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnifierSize:I

    .line 307
    packed-switch v3, :pswitch_data_c2

    .line 323
    :cond_50
    :goto_50
    if-eqz v0, :cond_5e

    .line 325
    :try_start_52
    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    iget v5, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mWidth:I

    iget v6, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mHeight:I

    iget v7, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnifierScale:I

    int-to-float v7, v7

    invoke-interface {v4, v5, v6, v7}, Landroid/hardware/display/IDisplayManager;->setMagnificationSettings(IIF)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_5e} :catch_bc

    .line 330
    :cond_5e
    :goto_5e
    return-void

    .line 309
    :pswitch_5f
    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10501eb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mWidth:I

    .line 310
    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10501ee

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mHeight:I

    goto :goto_50

    .line 313
    :pswitch_7e
    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10501ec

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mWidth:I

    .line 314
    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10501ef

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mHeight:I

    goto :goto_50

    .line 317
    :pswitch_9d
    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10501ed

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mWidth:I

    .line 318
    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10501f0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mHeight:I

    goto :goto_50

    .line 326
    :catch_bc
    move-exception v1

    .line 327
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5e

    .line 307
    nop

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_7e
        :pswitch_9d
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_9

    .line 187
    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0}, Lcom/android/server/accessibility/EventStreamTransformation;->clear()V

    .line 189
    :cond_9
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_9

    .line 175
    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 177
    :cond_9
    return-void
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/android/server/accessibility/OverlayMagnifier;->hideMagnifier()V

    .line 194
    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 195
    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v2, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/cover/CoverManager;->unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 196
    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnificationSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 199
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/hardware/display/IDisplayManager;->enableOverlayMagnifier(Z)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_22} :catch_23

    .line 203
    :goto_22
    return-void

    .line 200
    :catch_23
    move-exception v0

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_22
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 9
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 136
    iget-boolean v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mCoverState:Z

    if-eqz v3, :cond_10

    .line 137
    iget-object v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mPolicy:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 139
    .local v0, "action":I
    packed-switch v0, :pswitch_data_68

    .line 166
    .end local v0    # "action":I
    :cond_10
    :goto_10
    :pswitch_10
    iget-object v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v3, :cond_24

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_24

    .line 168
    iget-object v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v3, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 170
    :cond_24
    return-void

    .line 141
    .restart local v0    # "action":I
    :pswitch_25
    sget-object v3, Lcom/android/server/accessibility/OverlayMagnifier;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "onMotionEvent: HoverEnter"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 145
    :pswitch_2e
    iget-object v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mPolicy:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    invoke-virtual {v3}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->isMagnifying()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 146
    iget-object v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mPolicy:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    invoke-virtual {v3}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v2

    .line 147
    .local v2, "spec":Landroid/view/MagnificationSpec;
    const/high16 v3, 0x40000000    # 2.0f

    iput v3, v2, Landroid/view/MagnificationSpec;->scale:F

    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v2, Landroid/view/MagnificationSpec;->offsetX:F

    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v2, Landroid/view/MagnificationSpec;->offsetY:F

    .line 152
    :try_start_50
    iget-object v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v3, v2}, Landroid/hardware/display/IDisplayManager;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_55} :catch_56

    goto :goto_10

    .line 153
    :catch_56
    move-exception v1

    .line 154
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_10

    .line 160
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "spec":Landroid/view/MagnificationSpec;
    :pswitch_5b
    sget-object v3, Lcom/android/server/accessibility/OverlayMagnifier;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "onMotionEvent: spec is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-direct {p0}, Lcom/android/server/accessibility/OverlayMagnifier;->hideMagnifier()V

    goto :goto_10

    .line 139
    nop

    :pswitch_data_68
    .packed-switch 0x7
        :pswitch_2e
        :pswitch_10
        :pswitch_25
        :pswitch_5b
    .end packed-switch
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 2
    .param p1, "next"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 182
    return-void
.end method
