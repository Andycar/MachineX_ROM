.class public Landroid/filterpacks/imageproc/FlipFilter;
.super Landroid/filterfw/core/Filter;
.source "FlipFilter.java"


# instance fields
.field private mHorizontal:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "horizontal"
    .end annotation
.end field

.field private mProgram:Landroid/filterfw/core/Program;

.field private mTarget:I

.field private mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field

.field private mVertical:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "vertical"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 33
    iput-boolean v1, p0, Landroid/filterpacks/imageproc/FlipFilter;->mVertical:Z

    .line 36
    iput-boolean v1, p0, Landroid/filterpacks/imageproc/FlipFilter;->mHorizontal:Z

    .line 39
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/FlipFilter;->mTileSize:I

    .line 43
    iput v1, p0, Landroid/filterpacks/imageproc/FlipFilter;->mTarget:I

    .line 47
    return-void
.end method

.method private updateParameters()V
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 108
    iget-boolean v7, p0, Landroid/filterpacks/imageproc/FlipFilter;->mHorizontal:Z

    if-eqz v7, :cond_21

    move v2, v4

    .line 109
    .local v2, "x_origin":F
    :goto_a
    iget-boolean v7, p0, Landroid/filterpacks/imageproc/FlipFilter;->mVertical:Z

    if-eqz v7, :cond_23

    move v3, v4

    .line 111
    .local v3, "y_origin":F
    :goto_f
    iget-boolean v5, p0, Landroid/filterpacks/imageproc/FlipFilter;->mHorizontal:Z

    if-eqz v5, :cond_25

    move v1, v6

    .line 112
    .local v1, "width":F
    :goto_14
    iget-boolean v5, p0, Landroid/filterpacks/imageproc/FlipFilter;->mVertical:Z

    if-eqz v5, :cond_27

    move v0, v6

    .line 114
    .local v0, "height":F
    :goto_19
    iget-object v4, p0, Landroid/filterpacks/imageproc/FlipFilter;->mProgram:Landroid/filterfw/core/Program;

    check-cast v4, Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v4, v2, v3, v1, v0}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 115
    return-void

    .end local v0    # "height":F
    .end local v1    # "width":F
    .end local v2    # "x_origin":F
    .end local v3    # "y_origin":F
    :cond_21
    move v2, v5

    .line 108
    goto :goto_a

    .restart local v2    # "x_origin":F
    :cond_23
    move v3, v5

    .line 109
    goto :goto_f

    .restart local v3    # "y_origin":F
    :cond_25
    move v1, v4

    .line 111
    goto :goto_14

    .restart local v1    # "width":F
    :cond_27
    move v0, v4

    .line 112
    goto :goto_19
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 78
    iget-object v0, p0, Landroid/filterpacks/imageproc/FlipFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_7

    .line 79
    invoke-direct {p0}, Landroid/filterpacks/imageproc/FlipFilter;->updateParameters()V

    .line 81
    :cond_7
    return-void
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 3
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 57
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .registers 7
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    .prologue
    .line 61
    packed-switch p2, :pswitch_data_34

    .line 69
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filter Sharpen does not support frames of target "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :pswitch_22
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v0

    .line 64
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/FlipFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 65
    iput-object v0, p0, Landroid/filterpacks/imageproc/FlipFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 72
    iput p2, p0, Landroid/filterpacks/imageproc/FlipFilter;->mTarget:I

    .line 73
    invoke-direct {p0}, Landroid/filterpacks/imageproc/FlipFilter;->updateParameters()V

    .line 74
    return-void

    .line 61
    nop

    :pswitch_data_34
    .packed-switch 0x3
        :pswitch_22
    .end packed-switch
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .registers 7
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 86
    const-string v3, "image"

    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/FlipFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 87
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 90
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget-object v3, p0, Landroid/filterpacks/imageproc/FlipFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_16

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/FlipFilter;->mTarget:I

    if-eq v3, v4, :cond_1d

    .line 91
    :cond_16
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/FlipFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 95
    :cond_1d
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 98
    .local v2, "output":Landroid/filterfw/core/Frame;
    iget-object v3, p0, Landroid/filterpacks/imageproc/FlipFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 101
    const-string v3, "image"

    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/FlipFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 104
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 105
    return-void
.end method

.method public setupPorts()V
    .registers 3

    .prologue
    .line 51
    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/FlipFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 52
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/FlipFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method
