.class public Landroid/filterpacks/imageproc/ContrastFilter;
.super Landroid/filterpacks/imageproc/SimpleImageFilter;
.source "ContrastFilter.java"


# static fields
.field private static final mContrastShader:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float contrast;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  color -= 0.5;\n  color *= contrast;\n  color += 0.5;\n  gl_FragColor = color;\n}\n"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    const-string v0, "contrast"

    invoke-direct {p0, p1, v0}, Landroid/filterpacks/imageproc/SimpleImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected getNativeProgram(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Program;
    .registers 5
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 49
    new-instance v0, Landroid/filterfw/core/NativeProgram;

    const-string v1, "filterpack_imageproc"

    const-string v2, "contrast"

    invoke-direct {v0, v1, v2}, Landroid/filterfw/core/NativeProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getShaderProgram(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Program;
    .registers 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 54
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float contrast;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  color -= 0.5;\n  color *= contrast;\n  color += 0.5;\n  gl_FragColor = color;\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    return-object v0
.end method
