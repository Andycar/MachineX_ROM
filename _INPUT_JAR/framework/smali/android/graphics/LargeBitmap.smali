.class public final Landroid/graphics/LargeBitmap;
.super Ljava/lang/Object;
.source "LargeBitmap.java"


# instance fields
.field private mNativeLargeBitmap:J

.field private mRecycled:Z


# direct methods
.method private constructor <init>(J)V
    .registers 4
    .param p1, "nativeLbm"    # J

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide p1, p0, Landroid/graphics/LargeBitmap;->mNativeLargeBitmap:J

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/LargeBitmap;->mRecycled:Z

    .line 41
    return-void
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .registers 3
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-boolean v0, p0, Landroid/graphics/LargeBitmap;->mRecycled:Z

    if-eqz v0, :cond_a

    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_a
    return-void
.end method

.method private static native nativeClean(J)V
.end method

.method private static native nativeDecodeRegion(JIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeGetHeight(J)I
.end method

.method private static native nativeGetWidth(J)I
.end method


# virtual methods
.method public decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 10
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 53
    const-string v0, "decodeRegion called on recycled large bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/LargeBitmap;->checkRecycled(Ljava/lang/String;)V

    .line 54
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_1d

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_1d

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/LargeBitmap;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_1d

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/graphics/LargeBitmap;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_26

    .line 55
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rectangle is not inside the image"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_26
    iget-wide v0, p0, Landroid/graphics/LargeBitmap;->mNativeLargeBitmap:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/LargeBitmap;->nativeDecodeRegion(JIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/graphics/LargeBitmap;->recycle()V

    .line 110
    return-void
.end method

.method public getHeight()I
    .registers 3

    .prologue
    .line 68
    const-string v0, "getHeight called on recycled large bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/LargeBitmap;->checkRecycled(Ljava/lang/String;)V

    .line 69
    iget-wide v0, p0, Landroid/graphics/LargeBitmap;->mNativeLargeBitmap:J

    invoke-static {v0, v1}, Landroid/graphics/LargeBitmap;->nativeGetHeight(J)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .registers 3

    .prologue
    .line 62
    const-string v0, "getWidth called on recycled large bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/LargeBitmap;->checkRecycled(Ljava/lang/String;)V

    .line 63
    iget-wide v0, p0, Landroid/graphics/LargeBitmap;->mNativeLargeBitmap:J

    invoke-static {v0, v1}, Landroid/graphics/LargeBitmap;->nativeGetWidth(J)I

    move-result v0

    return v0
.end method

.method public final isRecycled()Z
    .registers 2

    .prologue
    .line 95
    iget-boolean v0, p0, Landroid/graphics/LargeBitmap;->mRecycled:Z

    return v0
.end method

.method public recycle()V
    .registers 3

    .prologue
    .line 82
    iget-boolean v0, p0, Landroid/graphics/LargeBitmap;->mRecycled:Z

    if-nez v0, :cond_c

    .line 83
    iget-wide v0, p0, Landroid/graphics/LargeBitmap;->mNativeLargeBitmap:J

    invoke-static {v0, v1}, Landroid/graphics/LargeBitmap;->nativeClean(J)V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/LargeBitmap;->mRecycled:Z

    .line 86
    :cond_c
    return-void
.end method
