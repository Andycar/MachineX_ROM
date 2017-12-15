.class public Landroid/graphics/Region;
.super Ljava/lang/Object;
.source "Region.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Region$Op;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/graphics/Region;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_POOL_SIZE:I = 0xa

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/graphics/Region;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mNativeRegion:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/graphics/Region;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 337
    new-instance v0, Landroid/graphics/Region$1;

    invoke-direct {v0}, Landroid/graphics/Region$1;-><init>()V

    sput-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 57
    invoke-static {}, Landroid/graphics/Region;->nativeConstructor()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/graphics/Region;-><init>(J)V

    .line 58
    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 11
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {}, Landroid/graphics/Region;->nativeConstructor()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    .line 78
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Region;->nativeSetRect(JIIII)Z

    .line 79
    return-void
.end method

.method constructor <init>(J)V
    .registers 6
    .param p1, "ni"    # J

    .prologue
    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_f

    .line 390
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 392
    :cond_f
    iput-wide p1, p0, Landroid/graphics/Region;->mNativeRegion:J

    .line 393
    return-void
.end method

.method private constructor <init>(JI)V
    .registers 5
    .param p1, "ni"    # J
    .param p3, "dummy"    # I

    .prologue
    .line 398
    invoke-direct {p0, p1, p2}, Landroid/graphics/Region;-><init>(J)V

    .line 399
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {}, Landroid/graphics/Region;->nativeConstructor()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    .line 71
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v0 .. v5}, Landroid/graphics/Region;->nativeSetRect(JIIII)Z

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Region;)V
    .registers 6
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    .line 63
    invoke-static {}, Landroid/graphics/Region;->nativeConstructor()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/graphics/Region;-><init>(J)V

    .line 64
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    iget-wide v2, p1, Landroid/graphics/Region;->mNativeRegion:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Region;->nativeSetRegion(JJ)V

    .line 65
    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)J
    .registers 3
    .param p0, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 23
    invoke-static {p0}, Landroid/graphics/Region;->nativeCreateFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static native nativeConstructor()J
.end method

.method private static native nativeCreateFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native nativeDestructor(J)V
.end method

.method private static native nativeEquals(JJ)Z
.end method

.method private static native nativeGetBoundaryPath(JJ)Z
.end method

.method private static native nativeGetBounds(JLandroid/graphics/Rect;)Z
.end method

.method private static native nativeOp(JIIIII)Z
.end method

.method private static native nativeOp(JJJI)Z
.end method

.method private static native nativeOp(JLandroid/graphics/Rect;JI)Z
.end method

.method private static native nativeSetPath(JJJ)Z
.end method

.method private static native nativeSetRect(JIIII)Z
.end method

.method private static native nativeSetRegion(JJ)V
.end method

.method private static native nativeToString(J)Ljava/lang/String;
.end method

.method private static native nativeWriteToParcel(JLandroid/os/Parcel;)Z
.end method

.method public static obtain()Landroid/graphics/Region;
    .registers 2

    .prologue
    .line 308
    sget-object v1, Landroid/graphics/Region;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Region;

    .line 309
    .local v0, "region":Landroid/graphics/Region;
    if-eqz v0, :cond_b

    .end local v0    # "region":Landroid/graphics/Region;
    :goto_a
    return-object v0

    .restart local v0    # "region":Landroid/graphics/Region;
    :cond_b
    new-instance v0, Landroid/graphics/Region;

    .end local v0    # "region":Landroid/graphics/Region;
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    goto :goto_a
.end method

.method public static obtain(Landroid/graphics/Region;)Landroid/graphics/Region;
    .registers 2
    .param p0, "other"    # Landroid/graphics/Region;

    .prologue
    .line 320
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    .line 321
    .local v0, "region":Landroid/graphics/Region;
    invoke-virtual {v0, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 322
    return-object v0
.end method


# virtual methods
.method public native contains(II)Z
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 373
    if-eqz p1, :cond_6

    instance-of v1, p1, Landroid/graphics/Region;

    if-nez v1, :cond_8

    .line 374
    :cond_6
    const/4 v1, 0x0

    .line 377
    :goto_7
    return v1

    :cond_8
    move-object v0, p1

    .line 376
    check-cast v0, Landroid/graphics/Region;

    .line 377
    .local v0, "peer":Landroid/graphics/Region;
    iget-wide v2, p0, Landroid/graphics/Region;->mNativeRegion:J

    iget-wide v4, v0, Landroid/graphics/Region;->mNativeRegion:J

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Region;->nativeEquals(JJ)Z

    move-result v1

    goto :goto_7
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 382
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    invoke-static {v0, v1}, Landroid/graphics/Region;->nativeDestructor(J)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 384
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 386
    return-void

    .line 384
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getBoundaryPath()Landroid/graphics/Path;
    .registers 7

    .prologue
    .line 157
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 158
    .local v0, "path":Landroid/graphics/Path;
    iget-wide v2, p0, Landroid/graphics/Region;->mNativeRegion:J

    invoke-virtual {v0}, Landroid/graphics/Path;->ni()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Region;->nativeGetBoundaryPath(JJ)Z

    .line 159
    return-object v0
.end method

.method public getBoundaryPath(Landroid/graphics/Path;)Z
    .registers 6
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    .line 167
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    invoke-virtual {p1}, Landroid/graphics/Path;->ni()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Region;->nativeGetBoundaryPath(JJ)Z

    move-result v0

    return v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .registers 5

    .prologue
    .line 136
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 137
    .local v0, "r":Landroid/graphics/Rect;
    iget-wide v2, p0, Landroid/graphics/Region;->mNativeRegion:J

    invoke-static {v2, v3, v0}, Landroid/graphics/Region;->nativeGetBounds(JLandroid/graphics/Rect;)Z

    .line 138
    return-object v0
.end method

.method public getBounds(Landroid/graphics/Rect;)Z
    .registers 4
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 146
    if-nez p1, :cond_8

    .line 147
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 149
    :cond_8
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Region;->nativeGetBounds(JLandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public native isComplex()Z
.end method

.method public native isEmpty()Z
.end method

.method public native isRect()Z
.end method

.method final ni()J
    .registers 3

    .prologue
    .line 402
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    return-wide v0
.end method

.method public op(IIIILandroid/graphics/Region$Op;)Z
    .registers 13
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "op"    # Landroid/graphics/Region$Op;

    .prologue
    .line 268
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    iget v6, p5, Landroid/graphics/Region$Op;->nativeInt:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Region;->nativeOp(JIIIII)Z

    move-result v0

    return v0
.end method

.method public op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z
    .registers 10
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "op"    # Landroid/graphics/Region$Op;

    .prologue
    .line 259
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget v6, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v6}, Landroid/graphics/Region;->nativeOp(JIIIII)Z

    move-result v0

    return v0
.end method

.method public op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z
    .registers 10
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "region"    # Landroid/graphics/Region;
    .param p3, "op"    # Landroid/graphics/Region$Op;

    .prologue
    .line 285
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    iget-wide v3, p2, Landroid/graphics/Region;->mNativeRegion:J

    iget v5, p3, Landroid/graphics/Region$Op;->nativeInt:I

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Landroid/graphics/Region;->nativeOp(JLandroid/graphics/Rect;JI)Z

    move-result v0

    return v0
.end method

.method public op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z
    .registers 4
    .param p1, "region"    # Landroid/graphics/Region;
    .param p2, "op"    # Landroid/graphics/Region$Op;

    .prologue
    .line 277
    invoke-virtual {p0, p0, p1, p2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    move-result v0

    return v0
.end method

.method public op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z
    .registers 11
    .param p1, "region1"    # Landroid/graphics/Region;
    .param p2, "region2"    # Landroid/graphics/Region;
    .param p3, "op"    # Landroid/graphics/Region$Op;

    .prologue
    .line 294
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    iget-wide v2, p1, Landroid/graphics/Region;->mNativeRegion:J

    iget-wide v4, p2, Landroid/graphics/Region;->mNativeRegion:J

    iget v6, p3, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v6}, Landroid/graphics/Region;->nativeOp(JJJI)Z

    move-result v0

    return v0
.end method

.method public native quickContains(IIII)Z
.end method

.method public quickContains(Landroid/graphics/Rect;)Z
    .registers 6
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 182
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Region;->quickContains(IIII)Z

    move-result v0

    return v0
.end method

.method public native quickReject(IIII)Z
.end method

.method public quickReject(Landroid/graphics/Rect;)Z
    .registers 6
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 200
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Region;->quickReject(IIII)Z

    move-result v0

    return v0
.end method

.method public native quickReject(Landroid/graphics/Region;)Z
.end method

.method public recycle()V
    .registers 2

    .prologue
    .line 331
    invoke-virtual {p0}, Landroid/graphics/Region;->setEmpty()V

    .line 332
    sget-object v0, Landroid/graphics/Region;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 333
    return-void
.end method

.method public scale(F)V
    .registers 3
    .param p1, "scale"    # F

    .prologue
    .line 240
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Region;->scale(FLandroid/graphics/Region;)V

    .line 241
    return-void
.end method

.method public native scale(FLandroid/graphics/Region;)V
.end method

.method public set(IIII)Z
    .registers 11
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 103
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Region;->nativeSetRect(JIIII)Z

    move-result v0

    return v0
.end method

.method public set(Landroid/graphics/Rect;)Z
    .registers 8
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 97
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v0 .. v5}, Landroid/graphics/Region;->nativeSetRect(JIIII)Z

    move-result v0

    return v0
.end method

.method public set(Landroid/graphics/Region;)Z
    .registers 6
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    .line 90
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    iget-wide v2, p1, Landroid/graphics/Region;->mNativeRegion:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Region;->nativeSetRegion(JJ)V

    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public setEmpty()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 84
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Landroid/graphics/Region;->nativeSetRect(JIIII)Z

    .line 85
    return-void
.end method

.method public setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z
    .registers 9
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "clip"    # Landroid/graphics/Region;

    .prologue
    .line 113
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    invoke-virtual {p1}, Landroid/graphics/Path;->ni()J

    move-result-wide v2

    iget-wide v4, p2, Landroid/graphics/Region;->mNativeRegion:J

    invoke-static/range {v0 .. v5}, Landroid/graphics/Region;->nativeSetPath(JJJ)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 299
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    invoke-static {v0, v1}, Landroid/graphics/Region;->nativeToString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public translate(II)V
    .registers 4
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/graphics/Region;->translate(IILandroid/graphics/Region;)V

    .line 222
    return-void
.end method

.method public native translate(IILandroid/graphics/Region;)V
.end method

.method public final union(Landroid/graphics/Rect;)Z
    .registers 3
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 251
    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 366
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Region;->nativeWriteToParcel(JLandroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 367
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 369
    :cond_e
    return-void
.end method
