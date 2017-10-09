.class public Lcom/android/keyguard/sec/EffectBehindView;
.super Landroid/widget/FrameLayout;
.source "EffectBehindView.java"


# instance fields
.field private mBgImageView:Landroid/widget/ImageView;

.field private mCustomBackground:Landroid/graphics/Bitmap;

.field private mOnVisibilityChangedRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    return-void
.end method

.method private setLiveWallpaperBg()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 78
    iget-object v0, p0, Lcom/android/keyguard/sec/EffectBehindView;->mBgImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/EffectBehindView;->mCustomBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/EffectBehindView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/EffectBehindView;->mBgImageView:Landroid/widget/ImageView;

    .line 81
    iget-object v0, p0, Lcom/android/keyguard/sec/EffectBehindView;->mBgImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 82
    iget-object v0, p0, Lcom/android/keyguard/sec/EffectBehindView;->mBgImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/EffectBehindView;->mCustomBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 84
    iget-object v0, p0, Lcom/android/keyguard/sec/EffectBehindView;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/keyguard/sec/EffectBehindView;->addView(Landroid/view/View;II)V

    .line 94
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/EffectBehindView;->mCustomBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/android/keyguard/sec/EffectBehindView;->mBgImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/EffectBehindView;->mCustomBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/EffectBehindView;->mBgImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/EffectBehindView;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/EffectBehindView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-le v0, v2, :cond_2

    .line 90
    iget-object v0, p0, Lcom/android/keyguard/sec/EffectBehindView;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/EffectBehindView;->removeView(Landroid/view/View;)V

    .line 92
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/EffectBehindView;->mBgImageView:Landroid/widget/ImageView;

    goto :goto_0
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 61
    if-ne p1, p0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/EffectBehindView;->mOnVisibilityChangedRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/keyguard/sec/EffectBehindView;->mOnVisibilityChangedRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 64
    :cond_0
    return-void
.end method

.method public setLiveWallpaperBg(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/keyguard/sec/EffectBehindView;->mCustomBackground:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_0

    .line 72
    iput-object p1, p0, Lcom/android/keyguard/sec/EffectBehindView;->mCustomBackground:Landroid/graphics/Bitmap;

    .line 73
    invoke-direct {p0}, Lcom/android/keyguard/sec/EffectBehindView;->setLiveWallpaperBg()V

    .line 75
    :cond_0
    return-void
.end method

.method public setOnVisibilityChangedRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/keyguard/sec/EffectBehindView;->mOnVisibilityChangedRunnable:Ljava/lang/Runnable;

    .line 68
    return-void
.end method
