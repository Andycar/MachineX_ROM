.class public Lcom/samsung/android/contextaware/manager/ContextBean;
.super Ljava/lang/Object;
.source "ContextBean.java"


# instance fields
.field private mContextBundle:Landroid/os/Bundle;

.field private mContextBundleForDisplay:Landroid/os/Bundle;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextBean;->clearContextBean()V

    .line 37
    return-void
.end method

.method private putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 349
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 353
    :cond_8
    :goto_8
    return-void

    .line 352
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundleForDisplay:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method private putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;

    .prologue
    .line 274
    if-eqz p2, :cond_5

    array-length v0, p2

    if-gtz v0, :cond_6

    .line 278
    :cond_5
    :goto_5
    return-void

    .line 277
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundleForDisplay:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_5
.end method


# virtual methods
.method protected final clearContextBean()V
    .registers 2

    .prologue
    .line 261
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    .line 262
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundleForDisplay:Landroid/os/Bundle;

    .line 263
    return-void
.end method

.method protected final getContextBundle()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getContextBundleForDisplay()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundleForDisplay:Landroid/os/Bundle;

    return-object v0
.end method

.method public final putContext(Ljava/lang/String;D)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 105
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 106
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public final putContext(Ljava/lang/String;F)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 93
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public final putContext(Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public final putContext(Ljava/lang/String;J)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 118
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 119
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public final putContext(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 145
    return-void
.end method

.method public final putContext(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public final putContext(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 67
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public final putContext(Ljava/lang/String;[D)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [D

    .prologue
    .line 222
    if-eqz p2, :cond_5

    array-length v2, p2

    if-gtz v2, :cond_6

    .line 233
    :cond_5
    :goto_5
    return-void

    .line 226
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 228
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 229
    .local v1, "strArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    array-length v2, p2

    if-ge v0, v2, :cond_1d

    .line 230
    aget-wide v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 232
    :cond_1d
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_5
.end method

.method public final putContext(Ljava/lang/String;[F)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [F

    .prologue
    .line 200
    if-eqz p2, :cond_5

    array-length v2, p2

    if-gtz v2, :cond_6

    .line 211
    :cond_5
    :goto_5
    return-void

    .line 204
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 206
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 207
    .local v1, "strArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    array-length v2, p2

    if-ge v0, v2, :cond_1d

    .line 208
    aget v2, p2, v0

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 210
    :cond_1d
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_5
.end method

.method public final putContext(Ljava/lang/String;[I)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [I

    .prologue
    .line 178
    if-eqz p2, :cond_5

    array-length v2, p2

    if-gtz v2, :cond_6

    .line 189
    :cond_5
    :goto_5
    return-void

    .line 182
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 184
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 185
    .local v1, "strArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    array-length v2, p2

    if-ge v0, v2, :cond_1d

    .line 186
    aget v2, p2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 188
    :cond_1d
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_5
.end method

.method public final putContext(Ljava/lang/String;[J)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [J

    .prologue
    .line 244
    if-eqz p2, :cond_5

    array-length v2, p2

    if-gtz v2, :cond_6

    .line 255
    :cond_5
    :goto_5
    return-void

    .line 248
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 250
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 251
    .local v1, "strArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    array-length v2, p2

    if-ge v0, v2, :cond_1d

    .line 252
    aget-wide v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 254
    :cond_1d
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_5
.end method

.method public final putContext(Ljava/lang/String;[Z)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Z

    .prologue
    .line 156
    if-eqz p2, :cond_5

    array-length v2, p2

    if-gtz v2, :cond_6

    .line 167
    :cond_5
    :goto_5
    return-void

    .line 160
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 162
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 163
    .local v1, "strArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    array-length v2, p2

    if-ge v0, v2, :cond_1d

    .line 164
    aget-boolean v2, p2, v0

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 166
    :cond_1d
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_5
.end method

.method public final putContextForDisplay(Ljava/lang/String;D)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 325
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public final putContextForDisplay(Ljava/lang/String;F)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 313
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public final putContextForDisplay(Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 301
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method public final putContextForDisplay(Ljava/lang/String;J)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 337
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public final putContextForDisplay(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 289
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public final putContextForDisplay(Ljava/lang/String;[D)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [D

    .prologue
    .line 423
    if-eqz p2, :cond_5

    array-length v2, p2

    if-gtz v2, :cond_6

    .line 431
    :cond_5
    :goto_5
    return-void

    .line 426
    :cond_6
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 427
    .local v1, "strArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    array-length v2, p2

    if-ge v0, v2, :cond_18

    .line 428
    aget-wide v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 430
    :cond_18
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_5
.end method

.method public final putContextForDisplay(Ljava/lang/String;[F)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [F

    .prologue
    .line 403
    if-eqz p2, :cond_5

    array-length v2, p2

    if-gtz v2, :cond_6

    .line 411
    :cond_5
    :goto_5
    return-void

    .line 406
    :cond_6
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 407
    .local v1, "strArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    array-length v2, p2

    if-ge v0, v2, :cond_18

    .line 408
    aget v2, p2, v0

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 407
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 410
    :cond_18
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_5
.end method

.method public final putContextForDisplay(Ljava/lang/String;[I)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [I

    .prologue
    .line 384
    if-eqz p2, :cond_5

    array-length v2, p2

    if-gtz v2, :cond_6

    .line 392
    :cond_5
    :goto_5
    return-void

    .line 387
    :cond_6
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 388
    .local v1, "strArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    array-length v2, p2

    if-ge v0, v2, :cond_18

    .line 389
    aget v2, p2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 388
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 391
    :cond_18
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_5
.end method

.method public final putContextForDisplay(Ljava/lang/String;[J)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [J

    .prologue
    .line 442
    if-eqz p2, :cond_5

    array-length v2, p2

    if-gtz v2, :cond_6

    .line 450
    :cond_5
    :goto_5
    return-void

    .line 445
    :cond_6
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 446
    .local v1, "strArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    array-length v2, p2

    if-ge v0, v2, :cond_18

    .line 447
    aget-wide v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 446
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 449
    :cond_18
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_5
.end method

.method public final putContextForDisplay(Ljava/lang/String;[Z)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Z

    .prologue
    .line 365
    if-eqz p2, :cond_5

    array-length v2, p2

    if-gtz v2, :cond_6

    .line 373
    :cond_5
    :goto_5
    return-void

    .line 368
    :cond_6
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 369
    .local v1, "strArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    array-length v2, p2

    if-ge v0, v2, :cond_18

    .line 370
    aget-boolean v2, p2, v0

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 372
    :cond_18
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_5
.end method
