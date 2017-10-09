.class public Lcom/android/internal/policy/impl/multiwindow/ApplicationSquareThumbnail;
.super Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;
.source "ApplicationSquareThumbnail.java"


# static fields
.field private static final SQUARE_RATIO:F = 0.9f


# instance fields
.field private mFakeMinimize:Z

.field private mIconSize:I


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .registers 4
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;-><init>(Landroid/app/Activity;)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationSquareThumbnail;->mFakeMinimize:Z

    .line 38
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080641

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationSquareThumbnail;->mMinimizeBg:Landroid/graphics/drawable/Drawable;

    .line 39
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationSquareThumbnail;->mIconSize:I

    .line 40
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "c"    # Landroid/content/ComponentName;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;-><init>(Landroid/app/Activity;Landroid/content/ComponentName;)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationSquareThumbnail;->mFakeMinimize:Z

    .line 44
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080641

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationSquareThumbnail;->mMinimizeBg:Landroid/graphics/drawable/Drawable;

    .line 45
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationSquareThumbnail;->mIconSize:I

    .line 46
    return-void
.end method

.method public static create(Landroid/app/Activity;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;
    .registers 2
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    .line 23
    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/ApplicationSquareThumbnail;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationSquareThumbnail;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static create(Landroid/app/Activity;Landroid/content/ComponentName;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;
    .registers 3
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "c"    # Landroid/content/ComponentName;

    .prologue
    .line 33
    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/ApplicationSquareThumbnail;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationSquareThumbnail;-><init>(Landroid/app/Activity;Landroid/content/ComponentName;)V

    return-object v0
.end method


# virtual methods
.method protected getMinimizedBitmap(Z)Landroid/graphics/Bitmap;
    .registers 14
    .param p1, "bFocused"    # Z

    .prologue
    const/4 v9, 0x0

    .line 50
    if-eqz p1, :cond_56

    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationSquareThumbnail;->mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;

    .line 55
    .local v0, "bgDrawable":Landroid/graphics/drawable/Drawable;
    :goto_5
    iget v6, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationSquareThumbnail;->mIconSize:I

    iget v7, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationSquareThumbnail;->mIconSize:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 57
    .local v5, "output":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 58
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Rect;

    iget v7, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationSquareThumbnail;->mIconSize:I

    iget v8, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationSquareThumbnail;->mIconSize:I

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 59
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationSquareThumbnail;->mFakeMinimize:Z

    if-nez v6, :cond_27

    .line 60
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 62
    :cond_27
    iget v6, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationSquareThumbnail;->mIconSize:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    div-double/2addr v6, v8

    const-wide v8, 0x3fecccccc0000000L    # 0.8999999761581421

    mul-double/2addr v6, v8

    double-to-int v4, v6

    .line 63
    .local v4, "iamgeSize":I
    iget v6, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationSquareThumbnail;->mIconSize:I

    div-int/lit8 v2, v6, 0x2

    .line 64
    .local v2, "center":I
    div-int/lit8 v3, v4, 0x2

    .line 66
    .local v3, "halfSize":I
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationSquareThumbnail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    new-instance v7, Landroid/graphics/Rect;

    sub-int v8, v2, v3

    sub-int v9, v2, v3

    add-int v10, v2, v3

    add-int v11, v2, v3

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 67
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationSquareThumbnail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 69
    return-object v5

    .line 53
    .end local v0    # "bgDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "center":I
    .end local v3    # "halfSize":I
    .end local v4    # "iamgeSize":I
    .end local v5    # "output":Landroid/graphics/Bitmap;
    :cond_56
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationSquareThumbnail;->mMinimizeBg:Landroid/graphics/drawable/Drawable;

    .restart local v0    # "bgDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_5
.end method
