.class public final Landroid/hardware/camera2/params/MeteringRectangle;
.super Ljava/lang/Object;
.source "MeteringRectangle.java"


# static fields
.field public static final METERING_WEIGHT_DONT_CARE:I = 0x0

.field public static final METERING_WEIGHT_MAX:I = 0x3e8

.field public static final METERING_WEIGHT_MIN:I


# instance fields
.field private final mHeight:I

.field private final mWeight:I

.field private final mWidth:I

.field private final mX:I

.field private final mY:I


# direct methods
.method public constructor <init>(IIIII)V
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "meteringWeight"    # I

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-string/jumbo v0, "x must be nonnegative"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    .line 93
    const-string/jumbo v0, "y must be nonnegative"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    .line 94
    const-string/jumbo v0, "width must be nonnegative"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    .line 95
    const-string v0, "height must be nonnegative"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    .line 96
    const/4 v0, 0x0

    const/16 v1, 0x3e8

    const-string/jumbo v2, "meteringWeight"

    invoke-static {p5, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Point;Landroid/util/Size;I)V
    .registers 6
    .param p1, "xy"    # Landroid/graphics/Point;
    .param p2, "dimensions"    # Landroid/util/Size;
    .param p3, "meteringWeight"    # I

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const-string/jumbo v0, "xy must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v0, "dimensions must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget v0, p1, Landroid/graphics/Point;->x:I

    const-string/jumbo v1, "x must be nonnegative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    .line 117
    iget v0, p1, Landroid/graphics/Point;->y:I

    const-string/jumbo v1, "y must be nonnegative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    .line 118
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    const-string/jumbo v1, "width must be nonnegative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    .line 119
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v0

    const-string v1, "height must be nonnegative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    .line 120
    const-string/jumbo v0, "meteringWeight must be nonnegative"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;I)V
    .registers 5
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "meteringWeight"    # I

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const-string/jumbo v0, "rect must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget v0, p1, Landroid/graphics/Rect;->left:I

    const-string/jumbo v1, "rect.left must be nonnegative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    .line 138
    iget v0, p1, Landroid/graphics/Rect;->top:I

    const-string/jumbo v1, "rect.top must be nonnegative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    .line 139
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    const-string/jumbo v1, "rect.width must be nonnegative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    .line 140
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    const-string/jumbo v1, "rect.height must be nonnegative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    .line 141
    const-string/jumbo v0, "meteringWeight must be nonnegative"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    .line 142
    return-void
.end method


# virtual methods
.method public equals(Landroid/hardware/camera2/params/MeteringRectangle;)Z
    .registers 5
    .param p1, "other"    # Landroid/hardware/camera2/params/MeteringRectangle;

    .prologue
    const/4 v0, 0x0

    .line 239
    if-nez p1, :cond_4

    .line 243
    :cond_3
    :goto_3
    return v0

    :cond_4
    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    iget v2, p1, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    iget v2, p1, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    iget v2, p1, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    iget v2, p1, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    iget v2, p1, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 225
    instance-of v0, p1, Landroid/hardware/camera2/params/MeteringRectangle;

    if-eqz v0, :cond_e

    check-cast p1, Landroid/hardware/camera2/params/MeteringRectangle;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/MeteringRectangle;->equals(Landroid/hardware/camera2/params/MeteringRectangle;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 177
    iget v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    return v0
.end method

.method public getMeteringWeight()I
    .registers 2

    .prologue
    .line 186
    iget v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    return v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .registers 7

    .prologue
    .line 217
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    iget v2, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    iget v3, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    iget v4, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    iget v5, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getSize()Landroid/util/Size;
    .registers 4

    .prologue
    .line 206
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    iget v2, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getUpperLeftPoint()Landroid/graphics/Point;
    .registers 4

    .prologue
    .line 195
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    iget v2, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 168
    iget v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    return v0
.end method

.method public getX()I
    .registers 2

    .prologue
    .line 150
    iget v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    return v0
.end method

.method public getY()I
    .registers 2

    .prologue
    .line 159
    iget v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    return v0
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 255
    iget v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    iget v2, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    iget v3, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    iget v4, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode(IIIII)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 267
    const-string v0, "(x:%d, y:%d, w:%d, h:%d, wt:%d)"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
