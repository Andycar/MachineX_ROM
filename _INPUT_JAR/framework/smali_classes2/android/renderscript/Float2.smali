.class public Landroid/renderscript/Float2;
.super Ljava/lang/Object;
.source "Float2.java"


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(FF)V
    .registers 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Landroid/renderscript/Float2;->x:F

    .line 37
    iput p2, p0, Landroid/renderscript/Float2;->y:F

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Float2;)V
    .registers 3
    .param p1, "data"    # Landroid/renderscript/Float2;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iget v0, p1, Landroid/renderscript/Float2;->x:F

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 32
    iget v0, p1, Landroid/renderscript/Float2;->y:F

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    .line 33
    return-void
.end method

.method public static add(Landroid/renderscript/Float2;F)Landroid/renderscript/Float2;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Float2;
    .param p1, "b"    # F

    .prologue
    .line 83
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 84
    .local v0, "res":Landroid/renderscript/Float2;
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 85
    iget v1, p0, Landroid/renderscript/Float2;->y:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float2;->y:F

    .line 87
    return-object v0
.end method

.method public static add(Landroid/renderscript/Float2;Landroid/renderscript/Float2;)Landroid/renderscript/Float2;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Float2;
    .param p1, "b"    # Landroid/renderscript/Float2;

    .prologue
    .line 48
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 49
    .local v0, "res":Landroid/renderscript/Float2;
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    iget v2, p1, Landroid/renderscript/Float2;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 50
    iget v1, p0, Landroid/renderscript/Float2;->y:F

    iget v2, p1, Landroid/renderscript/Float2;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float2;->y:F

    .line 52
    return-object v0
.end method

.method public static div(Landroid/renderscript/Float2;F)Landroid/renderscript/Float2;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Float2;
    .param p1, "b"    # F

    .prologue
    .line 233
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 234
    .local v0, "res":Landroid/renderscript/Float2;
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 235
    iget v1, p0, Landroid/renderscript/Float2;->y:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float2;->y:F

    .line 237
    return-object v0
.end method

.method public static div(Landroid/renderscript/Float2;Landroid/renderscript/Float2;)Landroid/renderscript/Float2;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Float2;
    .param p1, "b"    # Landroid/renderscript/Float2;

    .prologue
    .line 208
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 209
    .local v0, "res":Landroid/renderscript/Float2;
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    iget v2, p1, Landroid/renderscript/Float2;->x:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 210
    iget v1, p0, Landroid/renderscript/Float2;->y:F

    iget v2, p1, Landroid/renderscript/Float2;->y:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float2;->y:F

    .line 212
    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Float2;Landroid/renderscript/Float2;)F
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Float2;
    .param p1, "b"    # Landroid/renderscript/Float2;

    .prologue
    .line 258
    iget v0, p1, Landroid/renderscript/Float2;->x:F

    iget v1, p0, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v0, v1

    iget v1, p1, Landroid/renderscript/Float2;->y:F

    iget v2, p0, Landroid/renderscript/Float2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static mul(Landroid/renderscript/Float2;F)Landroid/renderscript/Float2;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Float2;
    .param p1, "b"    # F

    .prologue
    .line 183
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 184
    .local v0, "res":Landroid/renderscript/Float2;
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 185
    iget v1, p0, Landroid/renderscript/Float2;->y:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float2;->y:F

    .line 187
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Float2;Landroid/renderscript/Float2;)Landroid/renderscript/Float2;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Float2;
    .param p1, "b"    # Landroid/renderscript/Float2;

    .prologue
    .line 158
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 159
    .local v0, "res":Landroid/renderscript/Float2;
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    iget v2, p1, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 160
    iget v1, p0, Landroid/renderscript/Float2;->y:F

    iget v2, p1, Landroid/renderscript/Float2;->y:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float2;->y:F

    .line 162
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Float2;F)Landroid/renderscript/Float2;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Float2;
    .param p1, "b"    # F

    .prologue
    .line 133
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 134
    .local v0, "res":Landroid/renderscript/Float2;
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 135
    iget v1, p0, Landroid/renderscript/Float2;->y:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float2;->y:F

    .line 137
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Float2;Landroid/renderscript/Float2;)Landroid/renderscript/Float2;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Float2;
    .param p1, "b"    # Landroid/renderscript/Float2;

    .prologue
    .line 108
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 109
    .local v0, "res":Landroid/renderscript/Float2;
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    iget v2, p1, Landroid/renderscript/Float2;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 110
    iget v1, p0, Landroid/renderscript/Float2;->y:F

    iget v2, p1, Landroid/renderscript/Float2;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float2;->y:F

    .line 112
    return-object v0
.end method


# virtual methods
.method public add(F)V
    .registers 3
    .param p1, "value"    # F

    .prologue
    .line 71
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 72
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    .line 73
    return-void
.end method

.method public add(Landroid/renderscript/Float2;)V
    .registers 4
    .param p1, "value"    # Landroid/renderscript/Float2;

    .prologue
    .line 61
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget v1, p1, Landroid/renderscript/Float2;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 62
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    iget v1, p1, Landroid/renderscript/Float2;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    .line 63
    return-void
.end method

.method public addAt(IF)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "value"    # F

    .prologue
    .line 351
    packed-switch p1, :pswitch_data_18

    .line 359
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :pswitch_b
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 357
    :goto_10
    return-void

    .line 356
    :pswitch_11
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    goto :goto_10

    .line 351
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_b
        :pswitch_11
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Float2;F)V
    .registers 5
    .param p1, "a"    # Landroid/renderscript/Float2;
    .param p2, "factor"    # F

    .prologue
    .line 268
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget v1, p1, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 269
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    iget v1, p1, Landroid/renderscript/Float2;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    .line 270
    return-void
.end method

.method public copyTo([FI)V
    .registers 5
    .param p1, "data"    # [F
    .param p2, "offset"    # I

    .prologue
    .line 381
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    aput v0, p1, p2

    .line 382
    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Landroid/renderscript/Float2;->y:F

    aput v1, p1, v0

    .line 383
    return-void
.end method

.method public div(F)V
    .registers 3
    .param p1, "value"    # F

    .prologue
    .line 221
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 222
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    .line 223
    return-void
.end method

.method public div(Landroid/renderscript/Float2;)V
    .registers 4
    .param p1, "value"    # Landroid/renderscript/Float2;

    .prologue
    .line 196
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget v1, p1, Landroid/renderscript/Float2;->x:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 197
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    iget v1, p1, Landroid/renderscript/Float2;->y:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    .line 198
    return-void
.end method

.method public dotProduct(Landroid/renderscript/Float2;)F
    .registers 5
    .param p1, "a"    # Landroid/renderscript/Float2;

    .prologue
    .line 247
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget v1, p1, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Float2;->y:F

    iget v2, p1, Landroid/renderscript/Float2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public elementSum()F
    .registers 3

    .prologue
    .line 305
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget v1, p0, Landroid/renderscript/Float2;->y:F

    add-float/2addr v0, v1

    return v0
.end method

.method public get(I)F
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 315
    packed-switch p1, :pswitch_data_12

    .line 321
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :pswitch_b
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    .line 319
    :goto_d
    return v0

    :pswitch_e
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    goto :goto_d

    .line 315
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public length()I
    .registers 2

    .prologue
    .line 296
    const/4 v0, 0x2

    return v0
.end method

.method public mul(F)V
    .registers 3
    .param p1, "value"    # F

    .prologue
    .line 171
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 172
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    .line 173
    return-void
.end method

.method public mul(Landroid/renderscript/Float2;)V
    .registers 4
    .param p1, "value"    # Landroid/renderscript/Float2;

    .prologue
    .line 146
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget v1, p1, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 147
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    iget v1, p1, Landroid/renderscript/Float2;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    .line 148
    return-void
.end method

.method public negate()V
    .registers 2

    .prologue
    .line 286
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 287
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    .line 288
    return-void
.end method

.method public set(Landroid/renderscript/Float2;)V
    .registers 3
    .param p1, "a"    # Landroid/renderscript/Float2;

    .prologue
    .line 278
    iget v0, p1, Landroid/renderscript/Float2;->x:F

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 279
    iget v0, p1, Landroid/renderscript/Float2;->y:F

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    .line 280
    return-void
.end method

.method public setAt(IF)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "value"    # F

    .prologue
    .line 332
    packed-switch p1, :pswitch_data_12

    .line 340
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :pswitch_b
    iput p2, p0, Landroid/renderscript/Float2;->x:F

    .line 338
    :goto_d
    return-void

    .line 337
    :pswitch_e
    iput p2, p0, Landroid/renderscript/Float2;->y:F

    goto :goto_d

    .line 332
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public setValues(FF)V
    .registers 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 370
    iput p1, p0, Landroid/renderscript/Float2;->x:F

    .line 371
    iput p2, p0, Landroid/renderscript/Float2;->y:F

    .line 372
    return-void
.end method

.method public sub(F)V
    .registers 3
    .param p1, "value"    # F

    .prologue
    .line 121
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 122
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    .line 123
    return-void
.end method

.method public sub(Landroid/renderscript/Float2;)V
    .registers 4
    .param p1, "value"    # Landroid/renderscript/Float2;

    .prologue
    .line 96
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget v1, p1, Landroid/renderscript/Float2;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 97
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    iget v1, p1, Landroid/renderscript/Float2;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    .line 98
    return-void
.end method
