.class public Landroid/app/ActivityView;
.super Landroid/view/ViewGroup;
.source "ActivityView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityView$1;,
        Landroid/app/ActivityView$ActivityContainerWrapper;,
        Landroid/app/ActivityView$ActivityContainerCallback;,
        Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;,
        Landroid/app/ActivityView$ActivityViewCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ActivityView"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

.field private mActivityViewCallback:Landroid/app/ActivityView$ActivityViewCallback;

.field private mHeight:I

.field private mLastVisibility:I

.field mMetrics:Landroid/util/DisplayMetrics;

.field mQueuedIntent:Landroid/content/Intent;

.field mQueuedPendingIntent:Landroid/content/IIntentSender;

.field private mSurface:Landroid/view/Surface;

.field private final mTextureView:Landroid/view/TextureView;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/ActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/ActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    :goto_3
    instance-of v2, p1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_10

    .line 74
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_1c

    move-object v2, p1

    .line 75
    check-cast v2, Landroid/app/Activity;

    iput-object v2, p0, Landroid/app/ActivityView;->mActivity:Landroid/app/Activity;

    .line 80
    :cond_10
    iget-object v2, p0, Landroid/app/ActivityView;->mActivity:Landroid/app/Activity;

    if-nez v2, :cond_23

    .line 81
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The ActivityView\'s Context is not an Activity."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_1c
    check-cast p1, Landroid/content/ContextWrapper;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    .restart local p1    # "context":Landroid/content/Context;
    goto :goto_3

    .line 85
    :cond_23
    :try_start_23
    new-instance v2, Landroid/app/ActivityView$ActivityContainerWrapper;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p0, Landroid/app/ActivityView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    new-instance v5, Landroid/app/ActivityView$ActivityContainerCallback;

    invoke-direct {v5, p0}, Landroid/app/ActivityView$ActivityContainerCallback;-><init>(Landroid/app/ActivityView;)V

    invoke-interface {v3, v4, v5}, Landroid/app/IActivityManager;->createActivityContainer(Landroid/os/IBinder;Landroid/app/IActivityContainerCallback;)Landroid/app/IActivityContainer;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/ActivityView$ActivityContainerWrapper;-><init>(Landroid/app/IActivityContainer;)V

    iput-object v2, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_3d} :catch_76

    .line 93
    new-instance v2, Landroid/view/TextureView;

    invoke-direct {v2, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/app/ActivityView;->mTextureView:Landroid/view/TextureView;

    .line 94
    iget-object v2, p0, Landroid/app/ActivityView;->mTextureView:Landroid/view/TextureView;

    new-instance v3, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;-><init>(Landroid/app/ActivityView;Landroid/app/ActivityView$1;)V

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 95
    iget-object v2, p0, Landroid/app/ActivityView;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0, v2}, Landroid/app/ActivityView;->addView(Landroid/view/View;)V

    .line 97
    iget-object v2, p0, Landroid/app/ActivityView;->mActivity:Landroid/app/Activity;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 98
    .local v1, "wm":Landroid/view/WindowManager;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityView;->mMetrics:Landroid/util/DisplayMetrics;

    .line 99
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ActivityView;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 101
    invoke-virtual {p0}, Landroid/app/ActivityView;->getVisibility()I

    move-result v2

    iput v2, p0, Landroid/app/ActivityView;->mLastVisibility:I

    .line 104
    return-void

    .line 88
    .end local v1    # "wm":Landroid/view/WindowManager;
    :catch_76
    move-exception v0

    .line 89
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActivityView: Unable to create ActivityContainer. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static synthetic access$100(Landroid/app/ActivityView;)Landroid/app/ActivityView$ActivityContainerWrapper;
    .registers 2
    .param p0, "x0"    # Landroid/app/ActivityView;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    return-object v0
.end method

.method static synthetic access$200(Landroid/app/ActivityView;)I
    .registers 2
    .param p0, "x0"    # Landroid/app/ActivityView;

    .prologue
    .line 44
    iget v0, p0, Landroid/app/ActivityView;->mWidth:I

    return v0
.end method

.method static synthetic access$202(Landroid/app/ActivityView;I)I
    .registers 2
    .param p0, "x0"    # Landroid/app/ActivityView;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Landroid/app/ActivityView;->mWidth:I

    return p1
.end method

.method static synthetic access$300(Landroid/app/ActivityView;)I
    .registers 2
    .param p0, "x0"    # Landroid/app/ActivityView;

    .prologue
    .line 44
    iget v0, p0, Landroid/app/ActivityView;->mHeight:I

    return v0
.end method

.method static synthetic access$302(Landroid/app/ActivityView;I)I
    .registers 2
    .param p0, "x0"    # Landroid/app/ActivityView;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Landroid/app/ActivityView;->mHeight:I

    return p1
.end method

.method static synthetic access$400(Landroid/app/ActivityView;)V
    .registers 1
    .param p0, "x0"    # Landroid/app/ActivityView;

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/ActivityView;->attachToSurfaceWhenReady()V

    return-void
.end method

.method static synthetic access$500(Landroid/app/ActivityView;)Landroid/view/Surface;
    .registers 2
    .param p0, "x0"    # Landroid/app/ActivityView;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$502(Landroid/app/ActivityView;Landroid/view/Surface;)Landroid/view/Surface;
    .registers 2
    .param p0, "x0"    # Landroid/app/ActivityView;
    .param p1, "x1"    # Landroid/view/Surface;

    .prologue
    .line 44
    iput-object p1, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$600(Landroid/app/ActivityView;)Landroid/app/ActivityView$ActivityViewCallback;
    .registers 2
    .param p0, "x0"    # Landroid/app/ActivityView;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityViewCallback:Landroid/app/ActivityView$ActivityViewCallback;

    return-object v0
.end method

.method private attachToSurfaceWhenReady()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 232
    iget-object v2, p0, Landroid/app/ActivityView;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 233
    .local v1, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    if-eqz v1, :cond_d

    iget-object v2, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_e

    .line 256
    :cond_d
    :goto_d
    return-void

    .line 238
    :cond_e
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v2, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    .line 240
    :try_start_15
    iget-object v2, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    iget-object v3, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    iget v4, p0, Landroid/app/ActivityView;->mWidth:I

    iget v5, p0, Landroid/app/ActivityView;->mHeight:I

    iget-object v6, p0, Landroid/app/ActivityView;->mMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/ActivityView$ActivityContainerWrapper;->setSurface(Landroid/view/Surface;III)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_24} :catch_32

    .line 249
    iget-object v2, p0, Landroid/app/ActivityView;->mQueuedIntent:Landroid/content/Intent;

    if-eqz v2, :cond_53

    .line 250
    iget-object v2, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    iget-object v3, p0, Landroid/app/ActivityView;->mQueuedIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/app/ActivityView$ActivityContainerWrapper;->startActivity(Landroid/content/Intent;)I

    .line 251
    iput-object v7, p0, Landroid/app/ActivityView;->mQueuedIntent:Landroid/content/Intent;

    goto :goto_d

    .line 241
    :catch_32
    move-exception v0

    .line 242
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 243
    iput-object v7, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    .line 244
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActivityView: Unable to create ActivityContainer. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 252
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_53
    iget-object v2, p0, Landroid/app/ActivityView;->mQueuedPendingIntent:Landroid/content/IIntentSender;

    if-eqz v2, :cond_d

    .line 253
    iget-object v2, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    iget-object v3, p0, Landroid/app/ActivityView;->mQueuedPendingIntent:Landroid/content/IIntentSender;

    invoke-virtual {v2, v3}, Landroid/app/ActivityView$ActivityContainerWrapper;->startActivityIntentSender(Landroid/content/IIntentSender;)I

    .line 254
    iput-object v7, p0, Landroid/app/ActivityView;->mQueuedPendingIntent:Landroid/content/IIntentSender;

    goto :goto_d
.end method

.method private injectInputEvent(Landroid/view/InputEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 132
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    invoke-virtual {v0, p1}, Landroid/app/ActivityView$ActivityContainerWrapper;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public isAttachedToDisplay()Z
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onAttachedToWindow()V
    .registers 1

    .prologue
    .line 154
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 160
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 142
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 143
    invoke-direct {p0, p1}, Landroid/app/ActivityView;->injectInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 144
    const/4 v0, 0x1

    .line 147
    :goto_e
    return v0

    :cond_f
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_e
.end method

.method protected onLayout(ZIIII)V
    .registers 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, 0x0

    .line 108
    iget-object v0, p0, Landroid/app/ActivityView;->mTextureView:Landroid/view/TextureView;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/TextureView;->layout(IIII)V

    .line 109
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 137
    invoke-direct {p0, p1}, Landroid/app/ActivityView;->injectInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 9
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    const/16 v2, 0x8

    .line 113
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    .line 115
    iget-object v1, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_19

    .line 117
    if-ne p2, v2, :cond_1c

    .line 118
    :try_start_b
    iget-object v1, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    const/4 v2, 0x0

    iget v3, p0, Landroid/app/ActivityView;->mWidth:I

    iget v4, p0, Landroid/app/ActivityView;->mHeight:I

    iget-object v5, p0, Landroid/app/ActivityView;->mMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/ActivityView$ActivityContainerWrapper;->setSurface(Landroid/view/Surface;III)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_19} :catch_30

    .line 128
    :cond_19
    :goto_19
    iput p2, p0, Landroid/app/ActivityView;->mLastVisibility:I

    .line 129
    return-void

    .line 119
    :cond_1c
    :try_start_1c
    iget v1, p0, Landroid/app/ActivityView;->mLastVisibility:I

    if-ne v1, v2, :cond_19

    .line 121
    iget-object v1, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    iget-object v2, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    iget v3, p0, Landroid/app/ActivityView;->mWidth:I

    iget v4, p0, Landroid/app/ActivityView;->mHeight:I

    iget-object v5, p0, Landroid/app/ActivityView;->mMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/ActivityView$ActivityContainerWrapper;->setSurface(Landroid/view/Surface;III)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2f} :catch_30

    goto :goto_19

    .line 123
    :catch_30
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivityView: Unable to set surface of ActivityContainer. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public release()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 216
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    if-nez v0, :cond_d

    .line 217
    const-string v0, "ActivityView"

    const-string v1, "Duplicate call to release"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_c
    return-void

    .line 220
    :cond_d
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    invoke-virtual {v0}, Landroid/app/ActivityView$ActivityContainerWrapper;->release()V

    .line 221
    iput-object v1, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    .line 223
    iget-object v0, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1f

    .line 224
    iget-object v0, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 225
    iput-object v1, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    .line 228
    :cond_1f
    iget-object v0, p0, Landroid/app/ActivityView;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_c
.end method

.method public setCallback(Landroid/app/ActivityView$ActivityViewCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/app/ActivityView$ActivityViewCallback;

    .prologue
    .line 265
    iput-object p1, p0, Landroid/app/ActivityView;->mActivityViewCallback:Landroid/app/ActivityView$ActivityViewCallback;

    .line 266
    return-void
.end method

.method public startActivity(Landroid/app/PendingIntent;)V
    .registers 5
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 198
    iget-object v1, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    if-nez v1, :cond_c

    .line 199
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Attempt to call startActivity after release"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    :cond_c
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v0

    .line 204
    .local v0, "iIntentSender":Landroid/content/IIntentSender;
    iget-object v1, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_1a

    .line 205
    iget-object v1, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    invoke-virtual {v1, v0}, Landroid/app/ActivityView$ActivityContainerWrapper;->startActivityIntentSender(Landroid/content/IIntentSender;)I

    .line 211
    :goto_19
    return-void

    .line 207
    :cond_1a
    iget-object v1, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    invoke-virtual {v1, v0}, Landroid/app/ActivityView$ActivityContainerWrapper;->checkEmbeddedAllowedIntentSender(Landroid/content/IIntentSender;)V

    .line 208
    iput-object v0, p0, Landroid/app/ActivityView;->mQueuedPendingIntent:Landroid/content/IIntentSender;

    .line 209
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/ActivityView;->mQueuedIntent:Landroid/content/Intent;

    goto :goto_19
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 167
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    if-nez v0, :cond_c

    .line 168
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt to call startActivity after release"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_c
    iget-object v0, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_16

    .line 173
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    invoke-virtual {v0, p1}, Landroid/app/ActivityView$ActivityContainerWrapper;->startActivity(Landroid/content/Intent;)I

    .line 179
    :goto_15
    return-void

    .line 175
    :cond_16
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    invoke-virtual {v0, p1}, Landroid/app/ActivityView$ActivityContainerWrapper;->checkEmbeddedAllowed(Landroid/content/Intent;)V

    .line 176
    iput-object p1, p0, Landroid/app/ActivityView;->mQueuedIntent:Landroid/content/Intent;

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityView;->mQueuedPendingIntent:Landroid/content/IIntentSender;

    goto :goto_15
.end method

.method public startActivity(Landroid/content/IntentSender;)V
    .registers 5
    .param p1, "intentSender"    # Landroid/content/IntentSender;

    .prologue
    .line 182
    iget-object v1, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    if-nez v1, :cond_c

    .line 183
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Attempt to call startActivity after release"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    :cond_c
    invoke-virtual {p1}, Landroid/content/IntentSender;->getTarget()Landroid/content/IIntentSender;

    move-result-object v0

    .line 188
    .local v0, "iIntentSender":Landroid/content/IIntentSender;
    iget-object v1, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_1a

    .line 189
    iget-object v1, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    invoke-virtual {v1, v0}, Landroid/app/ActivityView$ActivityContainerWrapper;->startActivityIntentSender(Landroid/content/IIntentSender;)I

    .line 195
    :goto_19
    return-void

    .line 191
    :cond_1a
    iget-object v1, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    invoke-virtual {v1, v0}, Landroid/app/ActivityView$ActivityContainerWrapper;->checkEmbeddedAllowedIntentSender(Landroid/content/IIntentSender;)V

    .line 192
    iput-object v0, p0, Landroid/app/ActivityView;->mQueuedPendingIntent:Landroid/content/IIntentSender;

    .line 193
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/ActivityView;->mQueuedIntent:Landroid/content/Intent;

    goto :goto_19
.end method
