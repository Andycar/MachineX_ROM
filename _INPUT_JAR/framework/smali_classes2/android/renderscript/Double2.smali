.class public Landroid/renderscript/Double2;
.super Ljava/lang/Object;
.source "Double2.java"


# instance fields
.field public x:D

.field public y:D


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(DD)V
    .registers 6
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Landroid/renderscript/Double2;->x:D

    .line 38
    iput-wide p3, p0, Landroid/renderscript/Double2;->y:D

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Double2;)V
    .registers 4
    .param p1, "data"    # Landroid/renderscript/Double2;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iget-wide v0, p1, Landroid/renderscript/Double2;->x:D

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 33
    iget-wide v0, p1, Landroid/renderscript/Double2;->y:D

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    .line 34
    return-void
.end method

.method public static add(Landroid/renderscript/Double2;D)Landroid/renderscript/Double2;
    .registers 8
    .param p0, "a"    # Landroid/renderscript/Double2;
    .param p1, "b"    # D

    .prologue
    .line 84
    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    .line 85
    .local v0, "res":Landroid/renderscript/Double2;
    iget-wide v2, p0, Landroid/renderscript/Double2;->x:D

    add-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double2;->x:D

    .line 86
    iget-wide v2, p0, Landroid/renderscript/Double2;->y:D

    add-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double2;->y:D

    .line 88
    return-object v0
.end method

.method public static add(Landroid/renderscript/Double2;Landroid/renderscript/Double2;)Landroid/renderscript/Double2;
    .registers 8
    .param p0, "a"    # Landroid/renderscript/Double2;
    .param p1, "b"    # Landroid/renderscript/Double2;

    .prologue
    .line 49
    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    .line 50
    .local v0, "res":Landroid/renderscript/Double2;
    iget-wide v2, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v4, p1, Landroid/renderscript/Double2;->x:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double2;->x:D

    .line 51
    iget-wide v2, p0, Landroid/renderscript/Double2;->y:D

    iget-wide v4, p1, Landroid/renderscript/Double2;->y:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double2;->y:D

    .line 53
    return-object v0
.end method

.method public static div(Landroid/renderscript/Double2;D)Landroid/renderscript/Double2;
    .registers 8
    .param p0, "a"    # Landroid/renderscript/Double2;
    .param p1, "b"    # D

    .prologue
    .line 234
    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    .line 235
    .local v0, "res":Landroid/renderscript/Double2;
    iget-wide v2, p0, Landroid/renderscript/Double2;->x:D

    div-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double2;->x:D

    .line 236
    iget-wide v2, p0, Landroid/renderscript/Double2;->y:D

    div-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double2;->y:D

    .line 238
    return-object v0
.end method

.method public static div(Landroid/renderscript/Double2;Landroid/renderscript/Double2;)Landroid/renderscript/Double2;
    .registers 8
    .param p0, "a"    # Landroid/renderscript/Double2;
    .param p1, "b"    # Landroid/renderscript/Double2;

    .prologue
    .line 209
    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    .line 210
    .local v0, "res":Landroid/renderscript/Double2;
    iget-wide v2, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v4, p1, Landroid/renderscript/Double2;->x:D

    div-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double2;->x:D

    .line 211
    iget-wide v2, p0, Landroid/renderscript/Double2;->y:D

    iget-wide v4, p1, Landroid/renderscript/Double2;->y:D

    div-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double2;->y:D

    .line 213
    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Double2;Landroid/renderscript/Double2;)Ljava/lang/Double;
    .registers 8
    .param p0, "a"    # Landroid/renderscript/Double2;
    .param p1, "b"    # Landroid/renderscript/Double2;

    .prologue
    .line 259
    iget-wide v0, p1, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double2;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Double2;->y:D

    iget-wide v4, p0, Landroid/renderscript/Double2;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Double2;D)Landroid/renderscript/Double2;
    .registers 8
    .param p0, "a"    # Landroid/renderscript/Double2;
    .param p1, "b"    # D

    .prologue
    .line 184
    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    .line 185
    .local v0, "res":Landroid/renderscript/Double2;
    iget-wide v2, p0, Landroid/renderscript/Double2;->x:D

    mul-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double2;->x:D

    .line 186
    iget-wide v2, p0, Landroid/renderscript/Double2;->y:D

    mul-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double2;->y:D

    .line 188
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Double2;Landroid/renderscript/Double2;)Landroid/renderscript/Double2;
    .registers 8
    .param p0, "a"    # Landroid/renderscript/Double2;
    .param p1, "b"    # Landroid/renderscript/Double2;

    .prologue
    .line 159
    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    .line 160
    .local v0, "res":Landroid/renderscript/Double2;
    iget-wide v2, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v4, p1, Landroid/renderscript/Double2;->x:D

    mul-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double2;->x:D

    .line 161
    iget-wide v2, p0, Landroid/renderscript/Double2;->y:D

    iget-wide v4, p1, Landroid/renderscript/Double2;->y:D

    mul-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double2;->y:D

    .line 163
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Double2;D)Landroid/renderscript/Double2;
    .registers 8
    .param p0, "a"    # Landroid/renderscript/Double2;
    .param p1, "b"    # D

    .prologue
    .line 134
    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    .line 135
    .local v0, "res":Landroid/renderscript/Double2;
    iget-wide v2, p0, Landroid/renderscript/Double2;->x:D

    sub-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double2;->x:D

    .line 136
    iget-wide v2, p0, Landroid/renderscript/Double2;->y:D

    sub-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double2;->y:D

    .line 138
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Double2;Landroid/renderscript/Double2;)Landroid/renderscript/Double2;
    .registers 8
    .param p0, "a"    # Landroid/renderscript/Double2;
    .param p1, "b"    # Landroid/renderscript/Double2;

    .prologue
    .line 109
    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    .line 110
    .local v0, "res":Landroid/renderscript/Double2;
    iget-wide v2, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v4, p1, Landroid/renderscript/Double2;->x:D

    sub-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double2;->x:D

    .line 111
    iget-wide v2, p0, Landroid/renderscript/Double2;->y:D

    iget-wide v4, p1, Landroid/renderscript/Double2;->y:D

    sub-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double2;->y:D

    .line 113
    return-object v0
.end method


# virtual methods
.method public add(D)V
    .registers 6
    .param p1, "value"    # D

    .prologue
    .line 72
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 73
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    .line 74
    return-void
.end method

.method public add(Landroid/renderscript/Double2;)V
    .registers 6
    .param p1, "value"    # Landroid/renderscript/Double2;

    .prologue
    .line 62
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->x:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 63
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->y:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    .line 64
    return-void
.end method

.method public addAt(ID)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "value"    # D

    .prologue
    .line 352
    packed-switch p1, :pswitch_data_18

    .line 360
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :pswitch_b
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 358
    :goto_10
    return-void

    .line 357
    :pswitch_11
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    goto :goto_10

    .line 352
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_b
        :pswitch_11
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Double2;D)V
    .registers 8
    .param p1, "a"    # Landroid/renderscript/Double2;
    .param p2, "factor"    # D

    .prologue
    .line 269
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->x:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 270
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->y:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    .line 271
    return-void
.end method

.method public copyTo([DI)V
    .registers 7
    .param p1, "data"    # [D
    .param p2, "offset"    # I

    .prologue
    .line 382
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    aput-wide v0, p1, p2

    .line 383
    add-int/lit8 v0, p2, 0x1

    iget-wide v2, p0, Landroid/renderscript/Double2;->y:D

    aput-wide v2, p1, v0

    .line 384
    return-void
.end method

.method public div(D)V
    .registers 6
    .param p1, "value"    # D

    .prologue
    .line 222
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 223
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    .line 224
    return-void
.end method

.method public div(Landroid/renderscript/Double2;)V
    .registers 6
    .param p1, "value"    # Landroid/renderscript/Double2;

    .prologue
    .line 197
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->x:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 198
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->y:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    .line 199
    return-void
.end method

.method public dotProduct(Landroid/renderscript/Double2;)D
    .registers 8
    .param p1, "a"    # Landroid/renderscript/Double2;

    .prologue
    .line 248
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double2;->y:D

    iget-wide v4, p1, Landroid/renderscript/Double2;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public elementSum()D
    .registers 5

    .prologue
    .line 306
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double2;->y:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public get(I)D
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 316
    packed-switch p1, :pswitch_data_12

    .line 322
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :pswitch_b
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 320
    :goto_d
    return-wide v0

    :pswitch_e
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    goto :goto_d

    .line 316
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
    .line 297
    const/4 v0, 0x2

    return v0
.end method

.method public mul(D)V
    .registers 6
    .param p1, "value"    # D

    .prologue
    .line 172
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 173
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    .line 174
    return-void
.end method

.method public mul(Landroid/renderscript/Double2;)V
    .registers 6
    .param p1, "value"    # Landroid/renderscript/Double2;

    .prologue
    .line 147
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->x:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 148
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->y:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    .line 149
    return-void
.end method

.method public negate()V
    .registers 3

    .prologue
    .line 287
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    neg-double v0, v0

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 288
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    neg-double v0, v0

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    .line 289
    return-void
.end method

.method public set(Landroid/renderscript/Double2;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Double2;

    .prologue
    .line 279
    iget-wide v0, p1, Landroid/renderscript/Double2;->x:D

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 280
    iget-wide v0, p1, Landroid/renderscript/Double2;->y:D

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    .line 281
    return-void
.end method

.method public setAt(ID)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "value"    # D

    .prologue
    .line 333
    packed-switch p1, :pswitch_data_12

    .line 341
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :pswitch_b
    iput-wide p2, p0, Landroid/renderscript/Double2;->x:D

    .line 339
    :goto_d
    return-void

    .line 338
    :pswitch_e
    iput-wide p2, p0, Landroid/renderscript/Double2;->y:D

    goto :goto_d

    .line 333
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public setValues(DD)V
    .registers 6
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 371
    iput-wide p1, p0, Landroid/renderscript/Double2;->x:D

    .line 372
    iput-wide p3, p0, Landroid/renderscript/Double2;->y:D

    .line 373
    return-void
.end method

.method public sub(D)V
    .registers 6
    .param p1, "value"    # D

    .prologue
    .line 122
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 123
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    .line 124
    return-void
.end method

.method public sub(Landroid/renderscript/Double2;)V
    .registers 6
    .param p1, "value"    # Landroid/renderscript/Double2;

    .prologue
    .line 97
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->x:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 98
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->y:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    .line 99
    return-void
.end method
