.class public Landroid/renderscript/Float3;
.super Ljava/lang/Object;
.source "Float3.java"


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(FFF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Landroid/renderscript/Float3;->x:F

    .line 39
    iput p2, p0, Landroid/renderscript/Float3;->y:F

    .line 40
    iput p3, p0, Landroid/renderscript/Float3;->z:F

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Float3;)V
    .registers 3
    .param p1, "data"    # Landroid/renderscript/Float3;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iget v0, p1, Landroid/renderscript/Float3;->x:F

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    .line 33
    iget v0, p1, Landroid/renderscript/Float3;->y:F

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    .line 34
    iget v0, p1, Landroid/renderscript/Float3;->z:F

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    .line 35
    return-void
.end method

.method public static add(Landroid/renderscript/Float3;F)Landroid/renderscript/Float3;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Float3;
    .param p1, "b"    # F

    .prologue
    .line 89
    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    .line 90
    .local v0, "res":Landroid/renderscript/Float3;
    iget v1, p0, Landroid/renderscript/Float3;->x:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    .line 91
    iget v1, p0, Landroid/renderscript/Float3;->y:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    .line 92
    iget v1, p0, Landroid/renderscript/Float3;->z:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->z:F

    .line 94
    return-object v0
.end method

.method public static add(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)Landroid/renderscript/Float3;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Float3;
    .param p1, "b"    # Landroid/renderscript/Float3;

    .prologue
    .line 51
    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    .line 52
    .local v0, "res":Landroid/renderscript/Float3;
    iget v1, p0, Landroid/renderscript/Float3;->x:F

    iget v2, p1, Landroid/renderscript/Float3;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    .line 53
    iget v1, p0, Landroid/renderscript/Float3;->y:F

    iget v2, p1, Landroid/renderscript/Float3;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    .line 54
    iget v1, p0, Landroid/renderscript/Float3;->z:F

    iget v2, p1, Landroid/renderscript/Float3;->z:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->z:F

    .line 56
    return-object v0
.end method

.method public static div(Landroid/renderscript/Float3;F)Landroid/renderscript/Float3;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Float3;
    .param p1, "b"    # F

    .prologue
    .line 251
    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    .line 252
    .local v0, "res":Landroid/renderscript/Float3;
    iget v1, p0, Landroid/renderscript/Float3;->x:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    .line 253
    iget v1, p0, Landroid/renderscript/Float3;->y:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    .line 254
    iget v1, p0, Landroid/renderscript/Float3;->z:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->z:F

    .line 256
    return-object v0
.end method

.method public static div(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)Landroid/renderscript/Float3;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Float3;
    .param p1, "b"    # Landroid/renderscript/Float3;

    .prologue
    .line 224
    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    .line 225
    .local v0, "res":Landroid/renderscript/Float3;
    iget v1, p0, Landroid/renderscript/Float3;->x:F

    iget v2, p1, Landroid/renderscript/Float3;->x:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    .line 226
    iget v1, p0, Landroid/renderscript/Float3;->y:F

    iget v2, p1, Landroid/renderscript/Float3;->y:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    .line 227
    iget v1, p0, Landroid/renderscript/Float3;->z:F

    iget v2, p1, Landroid/renderscript/Float3;->z:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->z:F

    .line 229
    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)Ljava/lang/Float;
    .registers 6
    .param p0, "a"    # Landroid/renderscript/Float3;
    .param p1, "b"    # Landroid/renderscript/Float3;

    .prologue
    .line 277
    new-instance v0, Ljava/lang/Float;

    iget v1, p1, Landroid/renderscript/Float3;->x:F

    iget v2, p0, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v1, v2

    iget v2, p1, Landroid/renderscript/Float3;->y:F

    iget v3, p0, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Landroid/renderscript/Float3;->z:F

    iget v3, p0, Landroid/renderscript/Float3;->z:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Float3;F)Landroid/renderscript/Float3;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Float3;
    .param p1, "b"    # F

    .prologue
    .line 197
    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    .line 198
    .local v0, "res":Landroid/renderscript/Float3;
    iget v1, p0, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    .line 199
    iget v1, p0, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    .line 200
    iget v1, p0, Landroid/renderscript/Float3;->z:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->z:F

    .line 202
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)Landroid/renderscript/Float3;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Float3;
    .param p1, "b"    # Landroid/renderscript/Float3;

    .prologue
    .line 170
    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    .line 171
    .local v0, "res":Landroid/renderscript/Float3;
    iget v1, p0, Landroid/renderscript/Float3;->x:F

    iget v2, p1, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    .line 172
    iget v1, p0, Landroid/renderscript/Float3;->y:F

    iget v2, p1, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    .line 173
    iget v1, p0, Landroid/renderscript/Float3;->z:F

    iget v2, p1, Landroid/renderscript/Float3;->z:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->z:F

    .line 175
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Float3;F)Landroid/renderscript/Float3;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Float3;
    .param p1, "b"    # F

    .prologue
    .line 143
    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    .line 144
    .local v0, "res":Landroid/renderscript/Float3;
    iget v1, p0, Landroid/renderscript/Float3;->x:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    .line 145
    iget v1, p0, Landroid/renderscript/Float3;->y:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    .line 146
    iget v1, p0, Landroid/renderscript/Float3;->z:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->z:F

    .line 148
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)Landroid/renderscript/Float3;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Float3;
    .param p1, "b"    # Landroid/renderscript/Float3;

    .prologue
    .line 116
    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    .line 117
    .local v0, "res":Landroid/renderscript/Float3;
    iget v1, p0, Landroid/renderscript/Float3;->x:F

    iget v2, p1, Landroid/renderscript/Float3;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    .line 118
    iget v1, p0, Landroid/renderscript/Float3;->y:F

    iget v2, p1, Landroid/renderscript/Float3;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    .line 119
    iget v1, p0, Landroid/renderscript/Float3;->z:F

    iget v2, p1, Landroid/renderscript/Float3;->z:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->z:F

    .line 121
    return-object v0
.end method


# virtual methods
.method public add(F)V
    .registers 3
    .param p1, "value"    # F

    .prologue
    .line 76
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    .line 77
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    .line 78
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    .line 79
    return-void
.end method

.method public add(Landroid/renderscript/Float3;)V
    .registers 4
    .param p1, "value"    # Landroid/renderscript/Float3;

    .prologue
    .line 65
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    iget v1, p1, Landroid/renderscript/Float3;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    .line 66
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    iget v1, p1, Landroid/renderscript/Float3;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    .line 67
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    iget v1, p1, Landroid/renderscript/Float3;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    .line 68
    return-void
.end method

.method public addAt(IF)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "value"    # F

    .prologue
    .line 378
    packed-switch p1, :pswitch_data_1e

    .line 389
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :pswitch_b
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    .line 387
    :goto_10
    return-void

    .line 383
    :pswitch_11
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    goto :goto_10

    .line 386
    :pswitch_17
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    goto :goto_10

    .line 378
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_11
        :pswitch_17
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Float3;F)V
    .registers 5
    .param p1, "a"    # Landroid/renderscript/Float3;
    .param p2, "factor"    # F

    .prologue
    .line 287
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    iget v1, p1, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    .line 288
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    iget v1, p1, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    .line 289
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    iget v1, p1, Landroid/renderscript/Float3;->z:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    .line 290
    return-void
.end method

.method public copyTo([FI)V
    .registers 5
    .param p1, "data"    # [F
    .param p2, "offset"    # I

    .prologue
    .line 413
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    aput v0, p1, p2

    .line 414
    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Landroid/renderscript/Float3;->y:F

    aput v1, p1, v0

    .line 415
    add-int/lit8 v0, p2, 0x2

    iget v1, p0, Landroid/renderscript/Float3;->z:F

    aput v1, p1, v0

    .line 416
    return-void
.end method

.method public div(F)V
    .registers 3
    .param p1, "value"    # F

    .prologue
    .line 238
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    .line 239
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    .line 240
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    .line 241
    return-void
.end method

.method public div(Landroid/renderscript/Float3;)V
    .registers 4
    .param p1, "value"    # Landroid/renderscript/Float3;

    .prologue
    .line 211
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    iget v1, p1, Landroid/renderscript/Float3;->x:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    .line 212
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    iget v1, p1, Landroid/renderscript/Float3;->y:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    .line 213
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    iget v1, p1, Landroid/renderscript/Float3;->z:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    .line 214
    return-void
.end method

.method public dotProduct(Landroid/renderscript/Float3;)Ljava/lang/Float;
    .registers 6
    .param p1, "a"    # Landroid/renderscript/Float3;

    .prologue
    .line 266
    new-instance v0, Ljava/lang/Float;

    iget v1, p0, Landroid/renderscript/Float3;->x:F

    iget v2, p1, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Landroid/renderscript/Float3;->y:F

    iget v3, p1, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Landroid/renderscript/Float3;->z:F

    iget v3, p1, Landroid/renderscript/Float3;->z:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method

.method public elementSum()Ljava/lang/Float;
    .registers 4

    .prologue
    .line 327
    new-instance v0, Ljava/lang/Float;

    iget v1, p0, Landroid/renderscript/Float3;->x:F

    iget v2, p0, Landroid/renderscript/Float3;->y:F

    add-float/2addr v1, v2

    iget v2, p0, Landroid/renderscript/Float3;->z:F

    add-float/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method

.method public get(I)F
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 337
    packed-switch p1, :pswitch_data_14

    .line 345
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :pswitch_b
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    .line 343
    :goto_d
    return v0

    .line 341
    :pswitch_e
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    goto :goto_d

    .line 343
    :pswitch_11
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    goto :goto_d

    .line 337
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_b
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method public length()I
    .registers 2

    .prologue
    .line 318
    const/4 v0, 0x3

    return v0
.end method

.method public mul(F)V
    .registers 3
    .param p1, "value"    # F

    .prologue
    .line 184
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    .line 185
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    .line 186
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    .line 187
    return-void
.end method

.method public mul(Landroid/renderscript/Float3;)V
    .registers 4
    .param p1, "value"    # Landroid/renderscript/Float3;

    .prologue
    .line 157
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    iget v1, p1, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    .line 158
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    iget v1, p1, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    .line 159
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    iget v1, p1, Landroid/renderscript/Float3;->z:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    .line 160
    return-void
.end method

.method public negate()V
    .registers 2

    .prologue
    .line 307
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    .line 308
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    .line 309
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    .line 310
    return-void
.end method

.method public set(Landroid/renderscript/Float3;)V
    .registers 3
    .param p1, "a"    # Landroid/renderscript/Float3;

    .prologue
    .line 298
    iget v0, p1, Landroid/renderscript/Float3;->x:F

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    .line 299
    iget v0, p1, Landroid/renderscript/Float3;->y:F

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    .line 300
    iget v0, p1, Landroid/renderscript/Float3;->z:F

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    .line 301
    return-void
.end method

.method public setAt(IF)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "value"    # F

    .prologue
    .line 356
    packed-switch p1, :pswitch_data_14

    .line 367
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :pswitch_b
    iput p2, p0, Landroid/renderscript/Float3;->x:F

    .line 365
    :goto_d
    return-void

    .line 361
    :pswitch_e
    iput p2, p0, Landroid/renderscript/Float3;->y:F

    goto :goto_d

    .line 364
    :pswitch_11
    iput p2, p0, Landroid/renderscript/Float3;->z:F

    goto :goto_d

    .line 356
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_b
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method public setValues(FFF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 401
    iput p1, p0, Landroid/renderscript/Float3;->x:F

    .line 402
    iput p2, p0, Landroid/renderscript/Float3;->y:F

    .line 403
    iput p3, p0, Landroid/renderscript/Float3;->z:F

    .line 404
    return-void
.end method

.method public sub(F)V
    .registers 3
    .param p1, "value"    # F

    .prologue
    .line 130
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    .line 131
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    .line 132
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    .line 133
    return-void
.end method

.method public sub(Landroid/renderscript/Float3;)V
    .registers 4
    .param p1, "value"    # Landroid/renderscript/Float3;

    .prologue
    .line 103
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    iget v1, p1, Landroid/renderscript/Float3;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    .line 104
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    iget v1, p1, Landroid/renderscript/Float3;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    .line 105
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    iget v1, p1, Landroid/renderscript/Float3;->z:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    .line 106
    return-void
.end method
