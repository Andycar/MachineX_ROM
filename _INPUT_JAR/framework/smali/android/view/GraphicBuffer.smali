.class public Landroid/view/GraphicBuffer;
.super Ljava/lang/Object;
.source "GraphicBuffer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/GraphicBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public static final USAGE_HW_2D:I = 0x400

.field public static final USAGE_HW_COMPOSER:I = 0x800

.field public static final USAGE_HW_MASK:I = 0x71f00

.field public static final USAGE_HW_RENDER:I = 0x200

.field public static final USAGE_HW_TEXTURE:I = 0x100

.field public static final USAGE_HW_VIDEO_ENCODER:I = 0x10000

.field public static final USAGE_PROTECTED:I = 0x4000

.field public static final USAGE_SOFTWARE_MASK:I = 0xff

.field public static final USAGE_SW_READ_MASK:I = 0xf

.field public static final USAGE_SW_READ_NEVER:I = 0x0

.field public static final USAGE_SW_READ_OFTEN:I = 0x3

.field public static final USAGE_SW_READ_RARELY:I = 0x2

.field public static final USAGE_SW_WRITE_MASK:I = 0xf0

.field public static final USAGE_SW_WRITE_NEVER:I = 0x0

.field public static final USAGE_SW_WRITE_OFTEN:I = 0x30

.field public static final USAGE_SW_WRITE_RARELY:I = 0x20


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mDestroyed:Z

.field private final mFormat:I

.field private final mHeight:I

.field private final mNativeObject:J

.field private mSaveCount:I

.field private final mUsage:I

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 267
    new-instance v0, Landroid/view/GraphicBuffer$1;

    invoke-direct {v0}, Landroid/view/GraphicBuffer$1;-><init>()V

    sput-object v0, Landroid/view/GraphicBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IIIIJ)V
    .registers 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I
    .param p4, "usage"    # I
    .param p5, "nativeObject"    # J

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput p1, p0, Landroid/view/GraphicBuffer;->mWidth:I

    .line 92
    iput p2, p0, Landroid/view/GraphicBuffer;->mHeight:I

    .line 93
    iput p3, p0, Landroid/view/GraphicBuffer;->mFormat:I

    .line 94
    iput p4, p0, Landroid/view/GraphicBuffer;->mUsage:I

    .line 95
    iput-wide p5, p0, Landroid/view/GraphicBuffer;->mNativeObject:J

    .line 96
    return-void
.end method

.method synthetic constructor <init>(IIIIJLandroid/view/GraphicBuffer$1;)V
    .registers 9
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # J
    .param p7, "x5"    # Landroid/view/GraphicBuffer$1;

    .prologue
    .line 31
    invoke-direct/range {p0 .. p6}, Landroid/view/GraphicBuffer;-><init>(IIIIJ)V

    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)J
    .registers 3
    .param p0, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 31
    invoke-static {p0}, Landroid/view/GraphicBuffer;->nReadGraphicBufferFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static create(IIII)Landroid/view/GraphicBuffer;
    .registers 12
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "format"    # I
    .param p3, "usage"    # I

    .prologue
    .line 80
    invoke-static {p0, p1, p2, p3}, Landroid/view/GraphicBuffer;->nCreateGraphicBuffer(IIII)J

    move-result-wide v6

    .line 81
    .local v6, "nativeObject":J
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-eqz v0, :cond_14

    .line 82
    new-instance v1, Landroid/view/GraphicBuffer;

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v7}, Landroid/view/GraphicBuffer;-><init>(IIIIJ)V

    .line 84
    :goto_13
    return-object v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method private static native nCreateGraphicBuffer(IIII)J
.end method

.method private static native nDestroyGraphicBuffer(J)V
.end method

.method private static native nLockCanvas(JLandroid/graphics/Canvas;Landroid/graphics/Rect;)Z
.end method

.method private static native nReadGraphicBufferFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native nUnlockCanvasAndPost(JLandroid/graphics/Canvas;)Z
.end method

.method private static native nWriteGraphicBufferToParcel(JLandroid/os/Parcel;)V
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public destroy()V
    .registers 3

    .prologue
    .line 209
    iget-boolean v0, p0, Landroid/view/GraphicBuffer;->mDestroyed:Z

    if-nez v0, :cond_c

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/GraphicBuffer;->mDestroyed:Z

    .line 211
    iget-wide v0, p0, Landroid/view/GraphicBuffer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/GraphicBuffer;->nDestroyGraphicBuffer(J)V

    .line 213
    :cond_c
    return-void
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 232
    :try_start_0
    iget-boolean v0, p0, Landroid/view/GraphicBuffer;->mDestroyed:Z

    if-nez v0, :cond_9

    iget-wide v0, p0, Landroid/view/GraphicBuffer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/GraphicBuffer;->nDestroyGraphicBuffer(J)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_d

    .line 234
    :cond_9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 236
    return-void

    .line 234
    :catchall_d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getFormat()I
    .registers 2

    .prologue
    .line 117
    iget v0, p0, Landroid/view/GraphicBuffer;->mFormat:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Landroid/view/GraphicBuffer;->mHeight:I

    return v0
.end method

.method public getUsage()I
    .registers 2

    .prologue
    .line 124
    iget v0, p0, Landroid/view/GraphicBuffer;->mUsage:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 102
    iget v0, p0, Landroid/view/GraphicBuffer;->mWidth:I

    return v0
.end method

.method public isDestroyed()Z
    .registers 2

    .prologue
    .line 226
    iget-boolean v0, p0, Landroid/view/GraphicBuffer;->mDestroyed:Z

    return v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .registers 2

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/GraphicBuffer;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .registers 6
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    .line 163
    iget-boolean v1, p0, Landroid/view/GraphicBuffer;->mDestroyed:Z

    if-eqz v1, :cond_6

    .line 176
    :cond_5
    :goto_5
    return-object v0

    .line 167
    :cond_6
    iget-object v1, p0, Landroid/view/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    if-nez v1, :cond_11

    .line 168
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    iput-object v1, p0, Landroid/view/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    .line 171
    :cond_11
    iget-wide v2, p0, Landroid/view/GraphicBuffer;->mNativeObject:J

    iget-object v1, p0, Landroid/view/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {v2, v3, v1, p1}, Landroid/view/GraphicBuffer;->nLockCanvas(JLandroid/graphics/Canvas;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 172
    iget-object v0, p0, Landroid/view/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iput v0, p0, Landroid/view/GraphicBuffer;->mSaveCount:I

    .line 173
    iget-object v0, p0, Landroid/view/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    goto :goto_5
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 192
    iget-boolean v0, p0, Landroid/view/GraphicBuffer;->mDestroyed:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Landroid/view/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/view/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    if-ne p1, v0, :cond_1b

    .line 193
    iget v0, p0, Landroid/view/GraphicBuffer;->mSaveCount:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 194
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/GraphicBuffer;->mSaveCount:I

    .line 196
    iget-wide v0, p0, Landroid/view/GraphicBuffer;->mNativeObject:J

    iget-object v2, p0, Landroid/view/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {v0, v1, v2}, Landroid/view/GraphicBuffer;->nUnlockCanvasAndPost(JLandroid/graphics/Canvas;)Z

    .line 198
    :cond_1b
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 255
    iget-boolean v0, p0, Landroid/view/GraphicBuffer;->mDestroyed:Z

    if-eqz v0, :cond_c

    .line 256
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This GraphicBuffer has been destroyed and cannot be written to a parcel."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_c
    iget v0, p0, Landroid/view/GraphicBuffer;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget v0, p0, Landroid/view/GraphicBuffer;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    iget v0, p0, Landroid/view/GraphicBuffer;->mFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    iget v0, p0, Landroid/view/GraphicBuffer;->mUsage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    iget-wide v0, p0, Landroid/view/GraphicBuffer;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/GraphicBuffer;->nWriteGraphicBufferToParcel(JLandroid/os/Parcel;)V

    .line 265
    return-void
.end method
