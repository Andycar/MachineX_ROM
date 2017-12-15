.class public Landroid/graphics/ImageFilter;
.super Ljava/lang/Object;
.source "ImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ImageFilter$1;,
        Landroid/graphics/ImageFilter$BitmapMaskFilter;,
        Landroid/graphics/ImageFilter$CustomFilter;,
        Landroid/graphics/ImageFilter$DropShadowFilter;,
        Landroid/graphics/ImageFilter$BlendingFilter;,
        Landroid/graphics/ImageFilter$BitmapColorMaskFilter;,
        Landroid/graphics/ImageFilter$MosaicFilter;,
        Landroid/graphics/ImageFilter$VignetteFilter;,
        Landroid/graphics/ImageFilter$DistortionFilter;,
        Landroid/graphics/ImageFilter$ColorClampFilter;,
        Landroid/graphics/ImageFilter$DesaturationFilter;,
        Landroid/graphics/ImageFilter$ColorizeFilter;,
        Landroid/graphics/ImageFilter$ZoomBlurFilter;,
        Landroid/graphics/ImageFilter$DirectionalBlurFilter;,
        Landroid/graphics/ImageFilter$SgiBlurFilter;,
        Landroid/graphics/ImageFilter$CosineBlurFilter;,
        Landroid/graphics/ImageFilter$GaussianBlurFilter;,
        Landroid/graphics/ImageFilter$BlurFilter;
    }
.end annotation


# static fields
.field public static final DEBUG_HWUI_IMAGE_FILTER_ENABLE_PROPERTY:Ljava/lang/String; = "debug.hwui.imagefilter.enable"

.field public static final DEBUG_HWUI_IMAGE_FILTER_LOG_PROPERTY:Ljava/lang/String; = "debug.hwui.imagefilter.log"

.field public static final TYPE_BITMAP_COLOR:I = 0x34

.field public static final TYPE_BITMAP_MASK:I = 0x34

.field public static final TYPE_BLENDING:I = 0x35

.field public static final TYPE_BLUR:I = 0x36

.field public static final TYPE_COLORIZE:I = 0x10

.field public static final TYPE_COLOR_CLAMP:I = 0x12

.field public static final TYPE_COSINE_BLUR:I = 0x4

.field private static final TYPE_CUSTOM_FILTER:I = 0xee

.field public static final TYPE_DESATURATION:I = 0x11

.field public static final TYPE_DIRECTIONAL_BLUR:I = 0x2

.field public static final TYPE_DISTORTION:I = 0x31

.field public static final TYPE_DROP_SHADOW:I = 0x37

.field public static final TYPE_GAUSSIAN_BLUR:I = 0x1

.field public static final TYPE_MOSAIC:I = 0x33

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_SGI_BLUR:I = 0x5

.field public static final TYPE_VIGNETTE:I = 0x32

.field public static final TYPE_ZOOM_BLUR:I = 0x3


# instance fields
.field public final mNativeImageFilter:J


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/ImageFilter;-><init>(I)V

    .line 193
    return-void
.end method

.method protected constructor <init>(I)V
    .registers 4
    .param p1, "filterType"    # I

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    invoke-static {}, Landroid/graphics/ImageFilter;->native_init()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    .line 198
    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    invoke-static {v0, v1, p1}, Landroid/graphics/ImageFilter;->native_setType(JI)V

    .line 199
    return-void
.end method

.method protected constructor <init>(Landroid/graphics/ImageFilter;)V
    .registers 4
    .param p1, "filter"    # Landroid/graphics/ImageFilter;

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iget-wide v0, p1, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    invoke-static {v0, v1}, Landroid/graphics/ImageFilter;->native_copy(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    .line 204
    return-void
.end method

.method public static createCustomFilter(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/ImageFilter$CustomFilter;
    .registers 4
    .param p0, "vertexShaderCode"    # Ljava/lang/String;
    .param p1, "fragmentShaderCode"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 394
    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    .line 395
    new-instance v0, Landroid/graphics/ImageFilter$CustomFilter;

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/ImageFilter$CustomFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ImageFilter$1;)V

    .line 397
    :goto_a
    return-object v0

    :cond_b
    move-object v0, v1

    goto :goto_a
.end method

.method public static createImageFilter(I)Landroid/graphics/ImageFilter;
    .registers 3
    .param p0, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 347
    sparse-switch p0, :sswitch_data_60

    move-object v0, v1

    .line 381
    :goto_5
    return-object v0

    .line 349
    :sswitch_6
    new-instance v0, Landroid/graphics/ImageFilter$GaussianBlurFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$GaussianBlurFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_5

    .line 351
    :sswitch_c
    new-instance v0, Landroid/graphics/ImageFilter$DirectionalBlurFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$DirectionalBlurFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_5

    .line 353
    :sswitch_12
    new-instance v0, Landroid/graphics/ImageFilter$ZoomBlurFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$ZoomBlurFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_5

    .line 355
    :sswitch_18
    new-instance v0, Landroid/graphics/ImageFilter$CosineBlurFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$CosineBlurFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_5

    .line 357
    :sswitch_1e
    new-instance v0, Landroid/graphics/ImageFilter$SgiBlurFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$SgiBlurFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_5

    .line 359
    :sswitch_24
    new-instance v0, Landroid/graphics/ImageFilter$ColorizeFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$ColorizeFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_5

    .line 361
    :sswitch_2a
    new-instance v0, Landroid/graphics/ImageFilter$DesaturationFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$DesaturationFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_5

    .line 363
    :sswitch_30
    new-instance v0, Landroid/graphics/ImageFilter$ColorClampFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$ColorClampFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_5

    .line 365
    :sswitch_36
    new-instance v0, Landroid/graphics/ImageFilter$DistortionFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$DistortionFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_5

    .line 367
    :sswitch_3c
    new-instance v0, Landroid/graphics/ImageFilter$VignetteFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$VignetteFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_5

    .line 369
    :sswitch_42
    new-instance v0, Landroid/graphics/ImageFilter$MosaicFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$MosaicFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_5

    .line 371
    :sswitch_48
    new-instance v0, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_5

    .line 373
    :sswitch_4e
    new-instance v0, Landroid/graphics/ImageFilter$BlendingFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$BlendingFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_5

    .line 375
    :sswitch_54
    new-instance v0, Landroid/graphics/ImageFilter$BlurFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$BlurFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_5

    .line 377
    :sswitch_5a
    new-instance v0, Landroid/graphics/ImageFilter$DropShadowFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$DropShadowFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_5

    .line 347
    :sswitch_data_60
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_c
        0x3 -> :sswitch_12
        0x4 -> :sswitch_18
        0x5 -> :sswitch_1e
        0x10 -> :sswitch_24
        0x11 -> :sswitch_2a
        0x12 -> :sswitch_30
        0x31 -> :sswitch_36
        0x32 -> :sswitch_3c
        0x33 -> :sswitch_42
        0x34 -> :sswitch_48
        0x35 -> :sswitch_4e
        0x36 -> :sswitch_54
        0x37 -> :sswitch_5a
    .end sparse-switch
.end method

.method private static native finalizer(J)V
.end method

.method private static native native_copy(J)J
.end method

.method private static native native_getType(J)I
.end method

.method private static native native_getValue(JI)F
.end method

.method private static native native_init()J
.end method

.method private static native native_setFragmentShader(JLjava/lang/String;)V
.end method

.method private static native native_setSamplerBitmap(JLjava/lang/String;IJ[B)V
.end method

.method private static native native_setType(JI)V
.end method

.method private static native native_setUniformMatrix(JLjava/lang/String;II[F)V
.end method

.method private static native native_setUniformf(JLjava/lang/String;II[F)V
.end method

.method private static native native_setUniformi(JLjava/lang/String;II[I)V
.end method

.method private static native native_setUpdateMargin(JIIII)V
.end method

.method private static native native_setValue(JIF)V
.end method

.method private static native native_setVertexShader(JLjava/lang/String;)V
.end method


# virtual methods
.method public clone()Landroid/graphics/ImageFilter;
    .registers 2

    .prologue
    .line 227
    new-instance v0, Landroid/graphics/ImageFilter;

    invoke-direct {v0, p0}, Landroid/graphics/ImageFilter;-><init>(Landroid/graphics/ImageFilter;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-virtual {p0}, Landroid/graphics/ImageFilter;->clone()Landroid/graphics/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public copy()Landroid/graphics/ImageFilter;
    .registers 2

    .prologue
    .line 215
    invoke-virtual {p0}, Landroid/graphics/ImageFilter;->clone()Landroid/graphics/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 328
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    invoke-static {v0, v1}, Landroid/graphics/ImageFilter;->finalizer(J)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 330
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 332
    return-void

    .line 330
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getType()I
    .registers 3

    .prologue
    .line 245
    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    invoke-static {v0, v1}, Landroid/graphics/ImageFilter;->native_getType(J)I

    move-result v0

    return v0
.end method

.method protected getValue(I)F
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 322
    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    invoke-static {v0, v1, p1}, Landroid/graphics/ImageFilter;->native_getValue(JI)F

    move-result v0

    return v0
.end method

.method protected setBitmap(Landroid/graphics/Bitmap;)V
    .registers 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 256
    if-eqz p1, :cond_f

    .line 257
    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    const-string v2, "filterSamplersStage1"

    iget-wide v4, p1, Landroid/graphics/Bitmap;->mNativeBitmap:J

    iget-object v6, p1, Landroid/graphics/Bitmap;->mBuffer:[B

    invoke-static/range {v0 .. v6}, Landroid/graphics/ImageFilter;->native_setSamplerBitmap(JLjava/lang/String;IJ[B)V

    .line 263
    :goto_e
    return-void

    .line 261
    :cond_f
    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    const-string v2, "filterSamplersStage1"

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/ImageFilter;->native_setSamplerBitmap(JLjava/lang/String;IJ[B)V

    goto :goto_e
.end method

.method protected setFragmentShader(Ljava/lang/String;)V
    .registers 4
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 277
    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    invoke-static {v0, v1, p1}, Landroid/graphics/ImageFilter;->native_setFragmentShader(JLjava/lang/String;)V

    .line 278
    return-void
.end method

.method protected setSamplerBitmap(Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 312
    if-eqz p3, :cond_e

    .line 313
    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    iget-wide v4, p3, Landroid/graphics/Bitmap;->mNativeBitmap:J

    iget-object v6, p3, Landroid/graphics/Bitmap;->mBuffer:[B

    move-object v2, p1

    move v3, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/ImageFilter;->native_setSamplerBitmap(JLjava/lang/String;IJ[B)V

    .line 318
    :goto_d
    return-void

    .line 316
    :cond_e
    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/ImageFilter;->native_setSamplerBitmap(JLjava/lang/String;IJ[B)V

    goto :goto_d
.end method

.method protected setUniformMatrix(Ljava/lang/String;II[F)V
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "row"    # I
    .param p3, "col"    # I
    .param p4, "value"    # [F

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x2

    .line 302
    if-lt p2, v0, :cond_13

    if-gt p2, v1, :cond_13

    if-lt p3, v0, :cond_13

    if-gt p3, v1, :cond_13

    .line 303
    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/ImageFilter;->native_setUniformMatrix(JLjava/lang/String;II[F)V

    .line 308
    :cond_13
    return-void
.end method

.method protected setUniformf(Ljava/lang/String;II[F)V
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vec"    # I
    .param p3, "count"    # I
    .param p4, "value"    # [F

    .prologue
    .line 282
    if-lez p2, :cond_10

    const/4 v0, 0x4

    if-gt p2, v0, :cond_10

    if-lez p3, :cond_10

    .line 283
    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/ImageFilter;->native_setUniformf(JLjava/lang/String;II[F)V

    .line 288
    :cond_10
    return-void
.end method

.method protected setUniformi(Ljava/lang/String;II[I)V
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vec"    # I
    .param p3, "count"    # I
    .param p4, "value"    # [I

    .prologue
    .line 292
    if-lez p2, :cond_10

    const/4 v0, 0x4

    if-gt p2, v0, :cond_10

    if-lez p3, :cond_10

    .line 293
    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/ImageFilter;->native_setUniformi(JLjava/lang/String;II[I)V

    .line 298
    :cond_10
    return-void
.end method

.method protected setUpdateMargin(IIII)V
    .registers 11
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 267
    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/ImageFilter;->native_setUpdateMargin(JIIII)V

    .line 268
    return-void
.end method

.method protected setValue(IF)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "value"    # F

    .prologue
    .line 250
    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/ImageFilter;->native_setValue(JIF)V

    .line 251
    return-void
.end method

.method protected setVertexShader(Ljava/lang/String;)V
    .registers 4
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 272
    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    invoke-static {v0, v1, p1}, Landroid/graphics/ImageFilter;->native_setVertexShader(JLjava/lang/String;)V

    .line 273
    return-void
.end method
