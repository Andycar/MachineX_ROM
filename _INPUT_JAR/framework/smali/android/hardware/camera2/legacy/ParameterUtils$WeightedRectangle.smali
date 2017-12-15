.class public Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;
.super Ljava/lang/Object;
.source "ParameterUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/ParameterUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeightedRectangle"
.end annotation


# instance fields
.field public final rect:Landroid/graphics/Rect;

.field public final weight:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;I)V
    .registers 4
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "weight"    # I

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const-string/jumbo v0, "rect must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    .line 136
    iput p2, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->weight:I

    .line 137
    return-void
.end method

.method private static clip(IIILandroid/graphics/Rect;Ljava/lang/String;)I
    .registers 8
    .param p0, "value"    # I
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .param p3, "rect"    # Landroid/graphics/Rect;
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 213
    if-ge p0, p1, :cond_31

    .line 214
    const-string v0, "ParameterUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toMetering - Rectangle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too small, clip to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    move p0, p1

    .line 223
    :cond_30
    :goto_30
    return p0

    .line 217
    :cond_31
    if-le p0, p2, :cond_30

    .line 218
    const-string v0, "ParameterUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toMetering - Rectangle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too small, clip to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    move p0, p2

    goto :goto_30
.end method

.method private static clipLower(IILandroid/graphics/Rect;Ljava/lang/String;)I
    .registers 5
    .param p0, "value"    # I
    .param p1, "lo"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 209
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0, p2, p3}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->clip(IIILandroid/graphics/Rect;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public toFace()Landroid/hardware/camera2/params/Face;
    .registers 7

    .prologue
    .line 199
    iget v1, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->weight:I

    const/4 v2, 0x1

    const/16 v3, 0x64

    iget-object v4, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    const-string/jumbo v5, "score"

    invoke-static {v1, v2, v3, v4, v5}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->clip(IIILandroid/graphics/Rect;Ljava/lang/String;)I

    move-result v0

    .line 205
    .local v0, "score":I
    new-instance v1, Landroid/hardware/camera2/params/Face;

    iget-object v2, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    invoke-direct {v1, v2, v0}, Landroid/hardware/camera2/params/Face;-><init>(Landroid/graphics/Rect;I)V

    return-object v1
.end method

.method public toFace(ILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/hardware/camera2/params/Face;
    .registers 12
    .param p1, "id"    # I
    .param p2, "leftEyePosition"    # Landroid/graphics/Point;
    .param p3, "rightEyePosition"    # Landroid/graphics/Point;
    .param p4, "mouthPosition"    # Landroid/graphics/Point;

    .prologue
    .line 177
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    const-string v4, "id"

    invoke-static {p1, v0, v1, v4}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->clipLower(IILandroid/graphics/Rect;Ljava/lang/String;)I

    move-result v3

    .line 178
    .local v3, "idSafe":I
    iget v0, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->weight:I

    const/4 v1, 0x1

    const/16 v4, 0x64

    iget-object v5, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    const-string/jumbo v6, "score"

    invoke-static {v0, v1, v4, v5, v6}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->clip(IIILandroid/graphics/Rect;Ljava/lang/String;)I

    move-result v2

    .line 184
    .local v2, "score":I
    new-instance v0, Landroid/hardware/camera2/params/Face;

    iget-object v1, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/hardware/camera2/params/Face;-><init>(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    return-object v0
.end method

.method public toMetering()Landroid/hardware/camera2/params/MeteringRectangle;
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 147
    iget v0, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->weight:I

    const/16 v6, 0x3e8

    iget-object v7, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    const-string/jumbo v8, "weight"

    invoke-static {v0, v9, v6, v7, v8}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->clip(IIILandroid/graphics/Rect;Ljava/lang/String;)I

    move-result v5

    .line 153
    .local v5, "weight":I
    iget-object v0, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    const-string v7, "left"

    invoke-static {v0, v9, v6, v7}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->clipLower(IILandroid/graphics/Rect;Ljava/lang/String;)I

    move-result v1

    .line 154
    .local v1, "x":I
    iget-object v0, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    const-string/jumbo v7, "top"

    invoke-static {v0, v9, v6, v7}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->clipLower(IILandroid/graphics/Rect;Ljava/lang/String;)I

    move-result v2

    .line 155
    .local v2, "y":I
    iget-object v0, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v6, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    const-string/jumbo v7, "width"

    invoke-static {v0, v9, v6, v7}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->clipLower(IILandroid/graphics/Rect;Ljava/lang/String;)I

    move-result v3

    .line 156
    .local v3, "w":I
    iget-object v0, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v6, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    const-string v7, "height"

    invoke-static {v0, v9, v6, v7}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->clipLower(IILandroid/graphics/Rect;Ljava/lang/String;)I

    move-result v4

    .line 158
    .local v4, "h":I
    new-instance v0, Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    return-object v0
.end method
