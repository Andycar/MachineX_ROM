.class public Lcom/sec/android/sviewcover/hideeffect/GLHelper;
.super Ljava/lang/Object;
.source "GLHelper.java"


# static fields
.field public static final A_ALPHA_POS:Ljava/lang/String; = "a_AlphaPos"

.field public static final A_ALPHA_WIDTH:Ljava/lang/String; = "a_AlphaWidth"

.field public static final A_TEXTURE_COORDS:Ljava/lang/String; = "a_TexCoordinate"

.field public static final MATRIX:Ljava/lang/String; = "u_MVPMatrix"

.field public static final POSITION:Ljava/lang/String; = "a_Position"

.field public static final U_TEXTURE:Ljava/lang/String; = "u_Texture"

.field public static final V_ALPHA_POS:Ljava/lang/String; = "v_AlphaPos"

.field public static final V_ALPHA_WIDTH:Ljava/lang/String; = "v_AlphaWidth"

.field public static final V_POSITION:Ljava/lang/String; = "v_Position"

.field public static final V_TEXTURE_COORDS:Ljava/lang/String; = "v_TexCoordinate"

.field private static final fragmentShaderCode:Ljava/lang/String; = "precision highp float;varying float v_AlphaPos;varying float v_AlphaWidth;varying vec2 v_TexCoordinate;varying vec4 v_Position;uniform sampler2D u_Texture;float some_func(float t);void main() {vec4 tex_color = texture2D(u_Texture, v_TexCoordinate);float alpha = 1.0;if (v_Position.x > v_AlphaPos) {if (v_Position.x > (v_AlphaPos + v_AlphaWidth)) {alpha = 0.0;} else {alpha = 1.0 - some_func((v_Position.x - v_AlphaPos) / v_AlphaWidth);}}tex_color = tex_color * alpha;gl_FragColor = tex_color;}float some_func(float t) {return -0.5 * (cos(3.1415923*t) - 1.0);}"

.field private static final vertexShaderCode:Ljava/lang/String; = "attribute vec4 a_Position;attribute float a_AlphaPos;attribute float a_AlphaWidth;attribute vec2 a_TexCoordinate;uniform mat4 u_MVPMatrix;varying float v_AlphaPos;varying float v_AlphaWidth;varying vec4 v_Position;varying vec2 v_TexCoordinate;void main() {v_AlphaPos = a_AlphaPos;v_AlphaWidth = a_AlphaWidth;v_TexCoordinate = a_TexCoordinate;v_Position = a_Position;gl_Position = u_MVPMatrix * a_Position;}"


# instance fields
.field private final attrs:[Ljava/lang/String;

.field private mHandles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInited:Z

.field private mProgram:I

.field private final uniforms:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "u_MVPMatrix"

    aput-object v1, v0, v3

    const-string v1, "u_Texture"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/GLHelper;->uniforms:[Ljava/lang/String;

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "a_Position"

    aput-object v1, v0, v3

    const-string v1, "a_AlphaPos"

    aput-object v1, v0, v2

    const-string v1, "a_AlphaWidth"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "a_TexCoordinate"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/GLHelper;->attrs:[Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/GLHelper;->mHandles:Ljava/util/HashMap;

    .line 87
    iput-boolean v3, p0, Lcom/sec/android/sviewcover/hideeffect/GLHelper;->mInited:Z

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/sviewcover/hideeffect/GLHelper;->mProgram:I

    return-void
.end method

.method public static getFloatFromResource(Landroid/content/res/Resources;I)F
    .locals 2
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    .line 215
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 216
    .local v0, "t":Landroid/util/TypedValue;
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 217
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    return v1
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 5
    .param p0, "type"    # I
    .param p1, "shaderCode"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 137
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 140
    .local v1, "shader":I
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 141
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 144
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 145
    .local v0, "compileStatus":[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 148
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 150
    const-string v2, "MIK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error compiling shader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 152
    const/4 v1, 0x0

    .line 155
    :cond_0
    if-nez v1, :cond_1

    .line 156
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Shader compilation failed!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 159
    :cond_1
    return v1
.end method

.method public static loadTexture(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 163
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 164
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 167
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/sviewcover/hideeffect/GLHelper;->loadTexture(Landroid/graphics/Bitmap;)I

    move-result v1

    .line 168
    .local v1, "id":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 169
    return v1
.end method

.method public static loadTexture(Landroid/graphics/Bitmap;)I
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v4, 0x2601

    const/4 v1, 0x1

    const/16 v3, 0xde1

    const/4 v2, 0x0

    .line 173
    new-array v0, v1, [I

    .line 175
    .local v0, "textureHandle":[I
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 177
    aget v1, v0, v2

    if-eqz v1, :cond_0

    .line 180
    aget v1, v0, v2

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 183
    const/16 v1, 0x2801

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 185
    const/16 v1, 0x2800

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 189
    invoke-static {v3, v2, p0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 195
    :cond_0
    aget v1, v0, v2

    if-nez v1, :cond_1

    .line 197
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error loading texture."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    :cond_1
    aget v1, v0, v2

    return v1
.end method

.method public static loadToBuffer([F)Ljava/nio/FloatBuffer;
    .locals 3
    .param p0, "data"    # [F

    .prologue
    .line 204
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 206
    .local v0, "buffer":Ljava/nio/FloatBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 207
    return-object v0
.end method


# virtual methods
.method public getLocation(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/GLHelper;->mHandles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getProgram()I
    .locals 2

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/hideeffect/GLHelper;->mInited:Z

    if-eqz v0, :cond_0

    .line 128
    iget v0, p0, Lcom/sec/android/sviewcover/hideeffect/GLHelper;->mProgram:I

    return v0

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Helper should be inited first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, -0x1

    .line 91
    const v9, 0x8b31

    const-string v10, "attribute vec4 a_Position;attribute float a_AlphaPos;attribute float a_AlphaWidth;attribute vec2 a_TexCoordinate;uniform mat4 u_MVPMatrix;varying float v_AlphaPos;varying float v_AlphaWidth;varying vec4 v_Position;varying vec2 v_TexCoordinate;void main() {v_AlphaPos = a_AlphaPos;v_AlphaWidth = a_AlphaWidth;v_TexCoordinate = a_TexCoordinate;v_Position = a_Position;gl_Position = u_MVPMatrix * a_Position;}"

    invoke-static {v9, v10}, Lcom/sec/android/sviewcover/hideeffect/GLHelper;->loadShader(ILjava/lang/String;)I

    move-result v8

    .line 92
    .local v8, "vertexShader":I
    const v9, 0x8b30

    const-string v10, "precision highp float;varying float v_AlphaPos;varying float v_AlphaWidth;varying vec2 v_TexCoordinate;varying vec4 v_Position;uniform sampler2D u_Texture;float some_func(float t);void main() {vec4 tex_color = texture2D(u_Texture, v_TexCoordinate);float alpha = 1.0;if (v_Position.x > v_AlphaPos) {if (v_Position.x > (v_AlphaPos + v_AlphaWidth)) {alpha = 0.0;} else {alpha = 1.0 - some_func((v_Position.x - v_AlphaPos) / v_AlphaWidth);}}tex_color = tex_color * alpha;gl_FragColor = tex_color;}float some_func(float t) {return -0.5 * (cos(3.1415923*t) - 1.0);}"

    invoke-static {v9, v10}, Lcom/sec/android/sviewcover/hideeffect/GLHelper;->loadShader(ILjava/lang/String;)I

    move-result v2

    .line 94
    .local v2, "fragmentShader":I
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v9

    iput v9, p0, Lcom/sec/android/sviewcover/hideeffect/GLHelper;->mProgram:I

    .line 95
    iget v9, p0, Lcom/sec/android/sviewcover/hideeffect/GLHelper;->mProgram:I

    invoke-static {v9, v8}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 96
    iget v9, p0, Lcom/sec/android/sviewcover/hideeffect/GLHelper;->mProgram:I

    invoke-static {v9, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 97
    iget v9, p0, Lcom/sec/android/sviewcover/hideeffect/GLHelper;->mProgram:I

    invoke-static {v9}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 100
    new-array v5, v13, [I

    .line 101
    .local v5, "linkStatus":[I
    iget v9, p0, Lcom/sec/android/sviewcover/hideeffect/GLHelper;->mProgram:I

    const v10, 0x8b82

    invoke-static {v9, v10, v5, v12}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 104
    aget v9, v5, v12

    if-nez v9, :cond_0

    .line 106
    iget v9, p0, Lcom/sec/android/sviewcover/hideeffect/GLHelper;->mProgram:I

    invoke-static {v9}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 107
    iput v11, p0, Lcom/sec/android/sviewcover/hideeffect/GLHelper;->mProgram:I

    .line 110
    :cond_0
    iget v9, p0, Lcom/sec/android/sviewcover/hideeffect/GLHelper;->mProgram:I

    if-ne v9, v11, :cond_1

    .line 111
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Program linking failed!"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/sec/android/sviewcover/hideeffect/GLHelper;->uniforms:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v7, v1, v3

    .line 115
    .local v7, "u":Ljava/lang/String;
    iget v9, p0, Lcom/sec/android/sviewcover/hideeffect/GLHelper;->mProgram:I

    invoke-static {v9, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    .line 116
    .local v6, "loc":I
    iget-object v9, p0, Lcom/sec/android/sviewcover/hideeffect/GLHelper;->mHandles:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 118
    .end local v6    # "loc":I
    .end local v7    # "u":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/sec/android/sviewcover/hideeffect/GLHelper;->attrs:[Ljava/lang/String;

    array-length v4, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v0, v1, v3

    .line 119
    .local v0, "a":Ljava/lang/String;
    iget v9, p0, Lcom/sec/android/sviewcover/hideeffect/GLHelper;->mProgram:I

    invoke-static {v9, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v6

    .line 120
    .restart local v6    # "loc":I
    iget-object v9, p0, Lcom/sec/android/sviewcover/hideeffect/GLHelper;->mHandles:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 123
    .end local v0    # "a":Ljava/lang/String;
    .end local v6    # "loc":I
    :cond_3
    iput-boolean v13, p0, Lcom/sec/android/sviewcover/hideeffect/GLHelper;->mInited:Z

    .line 124
    return-void
.end method
