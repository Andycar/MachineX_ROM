.class Landroid/media/ExifInterface$ExifAttribute;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifAttribute"
.end annotation


# instance fields
.field public final bytes:[B

.field public final format:I

.field public final numberOfComponents:I


# direct methods
.method private constructor <init>(II[B)V
    .registers 4
    .param p1, "format"    # I
    .param p2, "numberOfComponents"    # I
    .param p3, "bytes"    # [B

    .prologue
    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    iput p1, p0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    .line 404
    iput p2, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    .line 405
    iput-object p3, p0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    .line 406
    return-void
.end method

.method synthetic constructor <init>(II[BLandroid/media/ExifInterface$1;)V
    .registers 5
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # [B
    .param p4, "x3"    # Landroid/media/ExifInterface$1;

    .prologue
    .line 397
    invoke-direct {p0, p1, p2, p3}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-void
.end method

.method static synthetic access$700(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .registers 3
    .param p0, "x0"    # Landroid/media/ExifInterface$ExifAttribute;
    .param p1, "x1"    # Ljava/nio/ByteOrder;

    .prologue
    .line 397
    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static createByte(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 7
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 452
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v5, :cond_2a

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_2a

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-gt v2, v3, :cond_2a

    .line 453
    new-array v1, v5, [B

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 454
    .local v1, "bytes":[B
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, v1

    invoke-direct {v2, v5, v3, v1}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    .line 457
    .end local v1    # "bytes":[B
    :goto_29
    return-object v2

    .line 456
    :cond_2a
    # getter for: Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;
    invoke-static {}, Landroid/media/ExifInterface;->access$100()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 457
    .local v0, "ascii":[B
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, v0

    invoke-direct {v2, v5, v3, v0}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    goto :goto_29
.end method

.method public static createDouble(DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 5
    .param p0, "value"    # D
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 506
    const/4 v0, 0x1

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Landroid/media/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createDouble([DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 12
    .param p0, "values"    # [D
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/16 v9, 0xc

    .line 496
    # getter for: Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I
    invoke-static {}, Landroid/media/ExifInterface;->access$000()[I

    move-result-object v6

    aget v6, v6, v9

    array-length v7, p0

    mul-int/2addr v6, v7

    new-array v6, v6, [B

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 498
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 499
    move-object v0, p0

    .local v0, "arr$":[D
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_16
    if-ge v2, v3, :cond_20

    aget-wide v4, v0, v2

    .line 500
    .local v4, "value":D
    invoke-virtual {v1, v4, v5}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 499
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 502
    .end local v4    # "value":D
    :cond_20
    new-instance v6, Landroid/media/ExifInterface$ExifAttribute;

    array-length v7, p0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-direct {v6, v9, v7, v8}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v6
.end method

.method public static createSLong(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 4
    .param p0, "value"    # I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 447
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createSLong([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 11
    .param p0, "values"    # [I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/16 v8, 0x9

    .line 437
    # getter for: Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I
    invoke-static {}, Landroid/media/ExifInterface;->access$000()[I

    move-result-object v5

    aget v5, v5, v8

    array-length v6, p0

    mul-int/2addr v5, v6

    new-array v5, v5, [B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 439
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 440
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_16
    if-ge v2, v3, :cond_20

    aget v4, v0, v2

    .line 441
    .local v4, "value":I
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 440
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 443
    .end local v4    # "value":I
    :cond_20
    new-instance v5, Landroid/media/ExifInterface$ExifAttribute;

    array-length v6, p0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-direct {v5, v8, v6, v7}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v5
.end method

.method public static createSRational(Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 4
    .param p0, "value"    # Landroid/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 492
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/ExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createSRational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createSRational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 11
    .param p0, "values"    # [Landroid/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/16 v8, 0xa

    .line 481
    # getter for: Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I
    invoke-static {}, Landroid/media/ExifInterface;->access$000()[I

    move-result-object v5

    aget v5, v5, v8

    array-length v6, p0

    mul-int/2addr v5, v6

    new-array v5, v5, [B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 483
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 484
    move-object v0, p0

    .local v0, "arr$":[Landroid/media/ExifInterface$Rational;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_16
    if-ge v2, v3, :cond_29

    aget-object v4, v0, v2

    .line 485
    .local v4, "value":Landroid/media/ExifInterface$Rational;
    iget-wide v6, v4, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-int v5, v6

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 486
    iget-wide v6, v4, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-int v5, v6

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 484
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 488
    .end local v4    # "value":Landroid/media/ExifInterface$Rational;
    :cond_29
    new-instance v5, Landroid/media/ExifInterface$ExifAttribute;

    array-length v6, p0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-direct {v5, v8, v6, v7}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v5
.end method

.method public static createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # getter for: Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;
    invoke-static {}, Landroid/media/ExifInterface;->access$100()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 462
    .local v0, "ascii":[B
    new-instance v1, Landroid/media/ExifInterface$ExifAttribute;

    const/4 v2, 0x2

    array-length v3, v0

    invoke-direct {v1, v2, v3, v0}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v1
.end method

.method public static createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 5
    .param p0, "value"    # J
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 433
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Landroid/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createULong([JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 12
    .param p0, "values"    # [J
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/4 v9, 0x4

    .line 423
    # getter for: Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I
    invoke-static {}, Landroid/media/ExifInterface;->access$000()[I

    move-result-object v6

    aget v6, v6, v9

    array-length v7, p0

    mul-int/2addr v6, v7

    new-array v6, v6, [B

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 425
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 426
    move-object v0, p0

    .local v0, "arr$":[J
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_15
    if-ge v2, v3, :cond_20

    aget-wide v4, v0, v2

    .line 427
    .local v4, "value":J
    long-to-int v6, v4

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 426
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 429
    .end local v4    # "value":J
    :cond_20
    new-instance v6, Landroid/media/ExifInterface$ExifAttribute;

    array-length v7, p0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-direct {v6, v9, v7, v8}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v6
.end method

.method public static createURational(Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 4
    .param p0, "value"    # Landroid/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 477
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/ExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createURational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createURational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 11
    .param p0, "values"    # [Landroid/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/4 v8, 0x5

    .line 466
    # getter for: Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I
    invoke-static {}, Landroid/media/ExifInterface;->access$000()[I

    move-result-object v5

    aget v5, v5, v8

    array-length v6, p0

    mul-int/2addr v5, v6

    new-array v5, v5, [B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 468
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 469
    move-object v0, p0

    .local v0, "arr$":[Landroid/media/ExifInterface$Rational;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_15
    if-ge v2, v3, :cond_28

    aget-object v4, v0, v2

    .line 470
    .local v4, "value":Landroid/media/ExifInterface$Rational;
    iget-wide v6, v4, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-int v5, v6

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 471
    iget-wide v6, v4, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-int v5, v6

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 469
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 473
    .end local v4    # "value":Landroid/media/ExifInterface$Rational;
    :cond_28
    new-instance v5, Landroid/media/ExifInterface$ExifAttribute;

    array-length v6, p0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-direct {v5, v8, v6, v7}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v5
.end method

.method public static createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 4
    .param p0, "value"    # I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 419
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createUShort([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 11
    .param p0, "values"    # [I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/4 v8, 0x3

    .line 409
    # getter for: Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I
    invoke-static {}, Landroid/media/ExifInterface;->access$000()[I

    move-result-object v5

    aget v5, v5, v8

    array-length v6, p0

    mul-int/2addr v5, v6

    new-array v5, v5, [B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 411
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 412
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_15
    if-ge v2, v3, :cond_20

    aget v4, v0, v2

    .line 413
    .local v4, "value":I
    int-to-short v5, v4

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 412
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 415
    .end local v4    # "value":I
    :cond_20
    new-instance v5, Landroid/media/ExifInterface$ExifAttribute;

    array-length v6, p0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-direct {v5, v8, v6, v7}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v5
.end method

.method private getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .registers 20
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 516
    :try_start_0
    new-instance v12, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v12, v3}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;-><init>([B)V

    .line 518
    .local v12, "inputStream":Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 519
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    packed-switch v3, :pswitch_data_188

    .line 620
    const/4 v15, 0x0

    .line 624
    .end local v12    # "inputStream":Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;
    :cond_16
    :goto_16
    return-object v15

    .line 523
    .restart local v12    # "inputStream":Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v3, v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_59

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    const/4 v8, 0x0

    aget-byte v3, v3, v8

    if-ltz v3, :cond_59

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    const/4 v8, 0x0

    aget-byte v3, v3, v8

    const/4 v8, 0x1

    if-gt v3, v8, :cond_59

    .line 524
    new-instance v15, Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [C

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-byte v16, v16, v17

    add-int/lit8 v16, v16, 0x30

    move/from16 v0, v16

    int-to-char v0, v0

    move/from16 v16, v0

    aput-char v16, v3, v8

    invoke-direct {v15, v3}, Ljava/lang/String;-><init>([C)V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4e} :catch_4f

    goto :goto_16

    .line 622
    .end local v12    # "inputStream":Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;
    :catch_4f
    move-exception v9

    .line 623
    .local v9, "e":Ljava/io/IOException;
    const-string v3, "ExifInterface"

    const-string v8, "IOException occurred during reading a value"

    invoke-static {v3, v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 624
    const/4 v15, 0x0

    goto :goto_16

    .line 526
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v12    # "inputStream":Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;
    :cond_59
    :try_start_59
    new-instance v15, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    # getter for: Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;
    invoke-static {}, Landroid/media/ExifInterface;->access$100()Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v15, v3, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_16

    .line 530
    :pswitch_67
    const/4 v11, 0x0

    .line 531
    .local v11, "index":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    # getter for: Landroid/media/ExifInterface;->EXIF_ASCII_PREFIX:[B
    invoke-static {}, Landroid/media/ExifInterface;->access$300()[B

    move-result-object v8

    array-length v8, v8

    if-lt v3, v8, :cond_92

    .line 532
    const/4 v13, 0x1

    .line 533
    .local v13, "same":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_75
    # getter for: Landroid/media/ExifInterface;->EXIF_ASCII_PREFIX:[B
    invoke-static {}, Landroid/media/ExifInterface;->access$300()[B

    move-result-object v3

    array-length v3, v3

    if-ge v10, v3, :cond_8b

    .line 534
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v3, v3, v10

    # getter for: Landroid/media/ExifInterface;->EXIF_ASCII_PREFIX:[B
    invoke-static {}, Landroid/media/ExifInterface;->access$300()[B

    move-result-object v8

    aget-byte v8, v8, v10

    if-eq v3, v8, :cond_ab

    .line 535
    const/4 v13, 0x0

    .line 539
    :cond_8b
    if-eqz v13, :cond_92

    .line 540
    # getter for: Landroid/media/ExifInterface;->EXIF_ASCII_PREFIX:[B
    invoke-static {}, Landroid/media/ExifInterface;->access$300()[B

    move-result-object v3

    array-length v11, v3

    .line 544
    .end local v10    # "i":I
    .end local v13    # "same":Z
    :cond_92
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 545
    .local v14, "stringBuilder":Ljava/lang/StringBuilder;
    :goto_97
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v11, v3, :cond_a5

    .line 546
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v2, v3, v11

    .line 547
    .local v2, "ch":I
    if-nez v2, :cond_ae

    .line 557
    .end local v2    # "ch":I
    :cond_a5
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_16

    .line 533
    .end local v14    # "stringBuilder":Ljava/lang/StringBuilder;
    .restart local v10    # "i":I
    .restart local v13    # "same":Z
    :cond_ab
    add-int/lit8 v10, v10, 0x1

    goto :goto_75

    .line 550
    .end local v10    # "i":I
    .end local v13    # "same":Z
    .restart local v2    # "ch":I
    .restart local v14    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_ae
    const/16 v3, 0x20

    if-lt v2, v3, :cond_b9

    .line 551
    int-to-char v3, v2

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 555
    :goto_b6
    add-int/lit8 v11, v11, 0x1

    .line 556
    goto :goto_97

    .line 553
    :cond_b9
    const/16 v3, 0x3f

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b6

    .line 560
    .end local v2    # "ch":I
    .end local v11    # "index":I
    .end local v14    # "stringBuilder":Ljava/lang/StringBuilder;
    :pswitch_bf
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v15, v3, [I

    .line 561
    .local v15, "values":[I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_c6
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_16

    .line 562
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedShort()I

    move-result v3

    aput v3, v15, v10

    .line 561
    add-int/lit8 v10, v10, 0x1

    goto :goto_c6

    .line 567
    .end local v10    # "i":I
    .end local v15    # "values":[I
    :pswitch_d5
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v15, v3, [J

    .line 568
    .local v15, "values":[J
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_dc
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_16

    .line 569
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedInt()J

    move-result-wide v16

    aput-wide v16, v15, v10

    .line 568
    add-int/lit8 v10, v10, 0x1

    goto :goto_dc

    .line 574
    .end local v10    # "i":I
    .end local v15    # "values":[J
    :pswitch_eb
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v15, v3, [Landroid/media/ExifInterface$Rational;

    .line 575
    .local v15, "values":[Landroid/media/ExifInterface$Rational;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_f2
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_16

    .line 576
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedInt()J

    move-result-wide v4

    .line 577
    .local v4, "numerator":J
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedInt()J

    move-result-wide v6

    .line 578
    .local v6, "denominator":J
    new-instance v3, Landroid/media/ExifInterface$Rational;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$1;)V

    aput-object v3, v15, v10

    .line 575
    add-int/lit8 v10, v10, 0x1

    goto :goto_f2

    .line 583
    .end local v4    # "numerator":J
    .end local v6    # "denominator":J
    .end local v10    # "i":I
    .end local v15    # "values":[Landroid/media/ExifInterface$Rational;
    :pswitch_10b
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v15, v3, [I

    .line 584
    .local v15, "values":[I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_112
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_16

    .line 585
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readShort()S

    move-result v3

    aput v3, v15, v10

    .line 584
    add-int/lit8 v10, v10, 0x1

    goto :goto_112

    .line 590
    .end local v10    # "i":I
    .end local v15    # "values":[I
    :pswitch_121
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v15, v3, [I

    .line 591
    .restart local v15    # "values":[I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_128
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_16

    .line 592
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readInt()I

    move-result v3

    aput v3, v15, v10

    .line 591
    add-int/lit8 v10, v10, 0x1

    goto :goto_128

    .line 597
    .end local v10    # "i":I
    .end local v15    # "values":[I
    :pswitch_137
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v15, v3, [Landroid/media/ExifInterface$Rational;

    .line 598
    .local v15, "values":[Landroid/media/ExifInterface$Rational;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_13e
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_16

    .line 599
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readInt()I

    move-result v3

    int-to-long v4, v3

    .line 600
    .restart local v4    # "numerator":J
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readInt()I

    move-result v3

    int-to-long v6, v3

    .line 601
    .restart local v6    # "denominator":J
    new-instance v3, Landroid/media/ExifInterface$Rational;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$1;)V

    aput-object v3, v15, v10

    .line 598
    add-int/lit8 v10, v10, 0x1

    goto :goto_13e

    .line 606
    .end local v4    # "numerator":J
    .end local v6    # "denominator":J
    .end local v10    # "i":I
    .end local v15    # "values":[Landroid/media/ExifInterface$Rational;
    :pswitch_159
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v15, v3, [D

    .line 607
    .local v15, "values":[D
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_160
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_16

    .line 608
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readFloat()F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v16, v0

    aput-wide v16, v15, v10

    .line 607
    add-int/lit8 v10, v10, 0x1

    goto :goto_160

    .line 613
    .end local v10    # "i":I
    .end local v15    # "values":[D
    :pswitch_172
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v15, v3, [D

    .line 614
    .restart local v15    # "values":[D
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_179
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_16

    .line 615
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readDouble()D

    move-result-wide v16

    aput-wide v16, v15, v10
    :try_end_185
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_185} :catch_4f

    .line 614
    add-int/lit8 v10, v10, 0x1

    goto :goto_179

    .line 519
    :pswitch_data_188
    .packed-switch 0x1
        :pswitch_17
        :pswitch_67
        :pswitch_bf
        :pswitch_d5
        :pswitch_eb
        :pswitch_17
        :pswitch_67
        :pswitch_10b
        :pswitch_121
        :pswitch_137
        :pswitch_159
        :pswitch_172
    .end packed-switch
.end method


# virtual methods
.method public getDoubleValue(Ljava/nio/ByteOrder;)D
    .registers 7
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 629
    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v1

    .line 630
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_10

    .line 631
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "NULL can\'t be converted to a double value"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 633
    :cond_10
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1b

    .line 634
    check-cast v1, Ljava/lang/String;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 660
    :goto_1a
    return-wide v2

    .line 636
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_1b
    instance-of v2, v1, [J

    if-eqz v2, :cond_33

    .line 637
    check-cast v1, [J

    .end local v1    # "value":Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [J

    .line 638
    .local v0, "array":[J
    array-length v2, v0

    if-ne v2, v4, :cond_2b

    .line 639
    aget-wide v2, v0, v3

    long-to-double v2, v2

    goto :goto_1a

    .line 641
    :cond_2b
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "There are more than one component"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 643
    .end local v0    # "array":[J
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_33
    instance-of v2, v1, [I

    if-eqz v2, :cond_4b

    .line 644
    check-cast v1, [I

    .end local v1    # "value":Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [I

    .line 645
    .local v0, "array":[I
    array-length v2, v0

    if-ne v2, v4, :cond_43

    .line 646
    aget v2, v0, v3

    int-to-double v2, v2

    goto :goto_1a

    .line 648
    :cond_43
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "There are more than one component"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 650
    .end local v0    # "array":[I
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_4b
    instance-of v2, v1, [D

    if-eqz v2, :cond_62

    .line 651
    check-cast v1, [D

    .end local v1    # "value":Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [D

    .line 652
    .local v0, "array":[D
    array-length v2, v0

    if-ne v2, v4, :cond_5a

    .line 653
    aget-wide v2, v0, v3

    goto :goto_1a

    .line 655
    :cond_5a
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "There are more than one component"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 657
    .end local v0    # "array":[D
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_62
    instance-of v2, v1, [Landroid/media/ExifInterface$Rational;

    if-eqz v2, :cond_7d

    .line 658
    check-cast v1, [Landroid/media/ExifInterface$Rational;

    .end local v1    # "value":Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [Landroid/media/ExifInterface$Rational;

    .line 659
    .local v0, "array":[Landroid/media/ExifInterface$Rational;
    array-length v2, v0

    if-ne v2, v4, :cond_75

    .line 660
    aget-object v2, v0, v3

    invoke-virtual {v2}, Landroid/media/ExifInterface$Rational;->calculate()D

    move-result-wide v2

    goto :goto_1a

    .line 662
    :cond_75
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "There are more than one component"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 664
    .end local v0    # "array":[Landroid/media/ExifInterface$Rational;
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_7d
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "Couldn\'t find a double value"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getIntValue(Ljava/nio/ByteOrder;)I
    .registers 7
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 668
    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v1

    .line 669
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_10

    .line 670
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "NULL can\'t be converted to a integer value"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 672
    :cond_10
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1b

    .line 673
    check-cast v1, Ljava/lang/String;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 685
    :goto_1a
    return v2

    .line 675
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_1b
    instance-of v2, v1, [J

    if-eqz v2, :cond_33

    .line 676
    check-cast v1, [J

    .end local v1    # "value":Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [J

    .line 677
    .local v0, "array":[J
    array-length v2, v0

    if-ne v2, v4, :cond_2b

    .line 678
    aget-wide v2, v0, v3

    long-to-int v2, v2

    goto :goto_1a

    .line 680
    :cond_2b
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "There are more than one component"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 682
    .end local v0    # "array":[J
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_33
    instance-of v2, v1, [I

    if-eqz v2, :cond_4a

    .line 683
    check-cast v1, [I

    .end local v1    # "value":Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [I

    .line 684
    .local v0, "array":[I
    array-length v2, v0

    if-ne v2, v4, :cond_42

    .line 685
    aget v2, v0, v3

    goto :goto_1a

    .line 687
    :cond_42
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "There are more than one component"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 689
    .end local v0    # "array":[I
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_4a
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "Couldn\'t find a integer value"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;
    .registers 8
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/4 v4, 0x0

    .line 693
    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v3

    .line 694
    .local v3, "value":Ljava/lang/Object;
    if-nez v3, :cond_9

    move-object v3, v4

    .line 744
    .end local v3    # "value":Ljava/lang/Object;
    :goto_8
    return-object v3

    .line 697
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_9
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_10

    .line 698
    check-cast v3, Ljava/lang/String;

    goto :goto_8

    .line 701
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 702
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    instance-of v5, v3, [J

    if-eqz v5, :cond_39

    .line 703
    check-cast v3, [J

    .end local v3    # "value":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, [J

    .line 704
    .local v0, "array":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1f
    array-length v4, v0

    if-ge v1, v4, :cond_34

    .line 705
    aget-wide v4, v0, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 706
    add-int/lit8 v4, v1, 0x1

    array-length v5, v0

    if-eq v4, v5, :cond_31

    .line 707
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 710
    :cond_34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 712
    .end local v0    # "array":[J
    .end local v1    # "i":I
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_39
    instance-of v5, v3, [I

    if-eqz v5, :cond_5d

    .line 713
    check-cast v3, [I

    .end local v3    # "value":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, [I

    .line 714
    .local v0, "array":[I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_43
    array-length v4, v0

    if-ge v1, v4, :cond_58

    .line 715
    aget v4, v0, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 716
    add-int/lit8 v4, v1, 0x1

    array-length v5, v0

    if-eq v4, v5, :cond_55

    .line 717
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 720
    :cond_58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 722
    .end local v0    # "array":[I
    .end local v1    # "i":I
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_5d
    instance-of v5, v3, [D

    if-eqz v5, :cond_81

    .line 723
    check-cast v3, [D

    .end local v3    # "value":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, [D

    .line 724
    .local v0, "array":[D
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_67
    array-length v4, v0

    if-ge v1, v4, :cond_7c

    .line 725
    aget-wide v4, v0, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 726
    add-int/lit8 v4, v1, 0x1

    array-length v5, v0

    if-eq v4, v5, :cond_79

    .line 727
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    :cond_79
    add-int/lit8 v1, v1, 0x1

    goto :goto_67

    .line 730
    :cond_7c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 732
    .end local v0    # "array":[D
    .end local v1    # "i":I
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_81
    instance-of v5, v3, [Landroid/media/ExifInterface$Rational;

    if-eqz v5, :cond_b4

    .line 733
    check-cast v3, [Landroid/media/ExifInterface$Rational;

    .end local v3    # "value":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, [Landroid/media/ExifInterface$Rational;

    .line 734
    .local v0, "array":[Landroid/media/ExifInterface$Rational;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8b
    array-length v4, v0

    if-ge v1, v4, :cond_ae

    .line 735
    aget-object v4, v0, v1

    iget-wide v4, v4, Landroid/media/ExifInterface$Rational;->numerator:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 736
    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 737
    aget-object v4, v0, v1

    iget-wide v4, v4, Landroid/media/ExifInterface$Rational;->denominator:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 738
    add-int/lit8 v4, v1, 0x1

    array-length v5, v0

    if-eq v4, v5, :cond_ab

    .line 739
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    :cond_ab
    add-int/lit8 v1, v1, 0x1

    goto :goto_8b

    .line 742
    :cond_ae
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_8

    .end local v0    # "array":[Landroid/media/ExifInterface$Rational;
    .end local v1    # "i":I
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_b4
    move-object v3, v4

    .line 744
    goto/16 :goto_8
.end method

.method public size()I
    .registers 3

    .prologue
    .line 748
    # getter for: Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I
    invoke-static {}, Landroid/media/ExifInterface;->access$000()[I

    move-result-object v0

    iget v1, p0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    aget v0, v0, v1

    iget v1, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;
    invoke-static {}, Landroid/media/ExifInterface;->access$200()[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
