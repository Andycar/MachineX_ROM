.class public Landroid/filterpacks/imageproc/TintFilter;
.super Landroid/filterfw/core/Filter;
.source "TintFilter.java"


# instance fields
.field private mProgram:Landroid/filterfw/core/Program;

.field private mTarget:I

.field private mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field

.field private mTint:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tint"
    .end annotation
.end field

.field private final mTintShader:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 31
    const v0, -0xffff01

    iput v0, p0, Landroid/filterpacks/imageproc/TintFilter;->mTint:I

    .line 34
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/TintFilter;->mTileSize:I

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/TintFilter;->mTarget:I

    .line 40
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec3 tint;\nuniform vec3 color_ratio;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float avg_color = dot(color_ratio, color.rgb);\n  vec3 new_color = min(0.8 * avg_color + 0.2 * tint, 1.0);\n  gl_FragColor = vec4(new_color.rgb, color.a);\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/TintFilter;->mTintShader:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private initParameters()V
    .registers 4

    .prologue
    .line 116
    const/4 v1, 0x3

    new-array v0, v1, [F

    fill-array-data v0, :array_12

    .line 117
    .local v0, "color_ratio":[F
    iget-object v1, p0, Landroid/filterpacks/imageproc/TintFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v2, "color_ratio"

    invoke-virtual {v1, v2, v0}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    invoke-direct {p0}, Landroid/filterpacks/imageproc/TintFilter;->updateParameters()V

    .line 120
    return-void

    .line 116
    nop

    :array_12
    .array-data 4
        0x3e570a3d    # 0.21f
        0x3f35c28f    # 0.71f
        0x3d8f5c29    # 0.07f
    .end array-data
.end method

.method private updateParameters()V
    .registers 5

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 123
    const/4 v1, 0x3

    new-array v0, v1, [F

    const/4 v1, 0x0

    iget v2, p0, Landroid/filterpacks/imageproc/TintFilter;->mTint:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroid/filterpacks/imageproc/TintFilter;->mTint:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Landroid/filterpacks/imageproc/TintFilter;->mTint:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 127
    .local v0, "tint_color":[F
    iget-object v1, p0, Landroid/filterpacks/imageproc/TintFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v2, "tint"

    invoke-virtual {v1, v2, v0}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    return-void
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 85
    iget-object v0, p0, Landroid/filterpacks/imageproc/TintFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_7

    .line 86
    invoke-direct {p0}, Landroid/filterpacks/imageproc/TintFilter;->updateParameters()V

    .line 88
    :cond_7
    return-void
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 3
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 65
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .registers 7
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    .prologue
    .line 69
    packed-switch p2, :pswitch_data_34

    .line 77
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

    .line 71
    :pswitch_22
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec3 tint;\nuniform vec3 color_ratio;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float avg_color = dot(color_ratio, color.rgb);\n  vec3 new_color = min(0.8 * avg_color + 0.2 * tint, 1.0);\n  gl_FragColor = vec4(new_color.rgb, color.a);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 72
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/TintFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 73
    iput-object v0, p0, Landroid/filterpacks/imageproc/TintFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 80
    iput p2, p0, Landroid/filterpacks/imageproc/TintFilter;->mTarget:I

    .line 81
    return-void

    .line 69
    :pswitch_data_34
    .packed-switch 0x3
        :pswitch_22
    .end packed-switch
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .registers 7
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 93
    const-string v3, "image"

    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/TintFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 94
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 97
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget-object v3, p0, Landroid/filterpacks/imageproc/TintFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_16

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/TintFilter;->mTarget:I

    if-eq v3, v4, :cond_20

    .line 98
    :cond_16
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/TintFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 99
    invoke-direct {p0}, Landroid/filterpacks/imageproc/TintFilter;->initParameters()V

    .line 103
    :cond_20
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 106
    .local v2, "output":Landroid/filterfw/core/Frame;
    iget-object v3, p0, Landroid/filterpacks/imageproc/TintFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 109
    const-string v3, "image"

    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/TintFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 112
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 113
    return-void
.end method

.method public setupPorts()V
    .registers 3

    .prologue
    .line 59
    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/TintFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 60
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/TintFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method
