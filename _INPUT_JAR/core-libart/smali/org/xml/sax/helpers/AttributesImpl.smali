.class public Lorg/xml/sax/helpers/AttributesImpl;
.super Ljava/lang/Object;
.source "AttributesImpl.java"

# interfaces
.implements Lorg/xml/sax/Attributes;


# instance fields
.field data:[Ljava/lang/String;

.field length:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/Attributes;)V
    .registers 2
    .param p1, "atts"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->setAttributes(Lorg/xml/sax/Attributes;)V

    .line 76
    return-void
.end method

.method private badIndex(I)V
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 601
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to modify attribute at illegal index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 603
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private ensureCapacity(I)V
    .registers 7
    .param p1, "n"    # I

    .prologue
    const/4 v4, 0x0

    .line 567
    if-gtz p1, :cond_4

    .line 589
    :cond_3
    :goto_3
    return-void

    .line 571
    :cond_4
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_16

    .line 572
    :cond_d
    const/16 v0, 0x19

    .line 580
    .local v0, "max":I
    :goto_f
    mul-int/lit8 v2, p1, 0x5

    if-ge v0, v2, :cond_21

    .line 581
    mul-int/lit8 v0, v0, 0x2

    goto :goto_f

    .line 574
    .end local v0    # "max":I
    :cond_16
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    array-length v2, v2

    mul-int/lit8 v3, p1, 0x5

    if-ge v2, v3, :cond_3

    .line 578
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    array-length v0, v2

    .restart local v0    # "max":I
    goto :goto_f

    .line 584
    :cond_21
    new-array v1, v0, [Ljava/lang/String;

    .line 585
    .local v1, "newData":[Ljava/lang/String;
    iget v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    if-lez v2, :cond_30

    .line 586
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    iget v3, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    mul-int/lit8 v3, v3, 0x5

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 588
    :cond_30
    iput-object v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    goto :goto_3
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    .prologue
    .line 382
    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/xml/sax/helpers/AttributesImpl;->ensureCapacity(I)V

    .line 383
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    iget v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    mul-int/lit8 v1, v1, 0x5

    aput-object p1, v0, v1

    .line 384
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    iget v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x1

    aput-object p2, v0, v1

    .line 385
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    iget v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x2

    aput-object p3, v0, v1

    .line 386
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    iget v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x3

    aput-object p4, v0, v1

    .line 387
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    iget v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x4

    aput-object p5, v0, v1

    .line 388
    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    .line 389
    return-void
.end method

.method public clear()V
    .registers 4

    .prologue
    .line 329
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 330
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    mul-int/lit8 v1, v1, 0x5

    if-ge v0, v1, :cond_13

    .line 331
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 333
    .end local v0    # "i":I
    :cond_13
    const/4 v1, 0x0

    iput v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    .line 334
    return-void
.end method

.method public getIndex(Ljava/lang/String;)I
    .registers 6
    .param p1, "qName"    # Ljava/lang/String;

    .prologue
    .line 220
    iget v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    mul-int/lit8 v1, v2, 0x5

    .line 221
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v1, :cond_19

    .line 222
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 223
    div-int/lit8 v2, v0, 0x5

    .line 226
    :goto_15
    return v2

    .line 221
    :cond_16
    add-int/lit8 v0, v0, 0x5

    goto :goto_5

    .line 226
    :cond_19
    const/4 v2, -0x1

    goto :goto_15
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 201
    iget v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    mul-int/lit8 v1, v2, 0x5

    .line 202
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v1, :cond_23

    .line 203
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 204
    div-int/lit8 v2, v0, 0x5

    .line 207
    :goto_1f
    return v2

    .line 202
    :cond_20
    add-int/lit8 v0, v0, 0x5

    goto :goto_5

    .line 207
    :cond_23
    const/4 v2, -0x1

    goto :goto_1f
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 93
    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    return v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 125
    if-ltz p1, :cond_f

    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    if-ge p1, v0, :cond_f

    .line 126
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    .line 128
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getQName(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 143
    if-ltz p1, :cond_f

    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    if-ge p1, v0, :cond_f

    .line 144
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    .line 146
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getType(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 161
    if-ltz p1, :cond_f

    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    if-ge p1, v0, :cond_f

    .line 162
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x3

    aget-object v0, v0, v1

    .line 164
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "qName"    # Ljava/lang/String;

    .prologue
    .line 262
    iget v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    mul-int/lit8 v1, v2, 0x5

    .line 263
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v1, :cond_1d

    .line 264
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 265
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x3

    aget-object v2, v2, v3

    .line 268
    :goto_19
    return-object v2

    .line 263
    :cond_1a
    add-int/lit8 v0, v0, 0x5

    goto :goto_5

    .line 268
    :cond_1d
    const/4 v2, 0x0

    goto :goto_19
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 242
    iget v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    mul-int/lit8 v1, v2, 0x5

    .line 243
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v1, :cond_27

    .line 244
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 245
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x3

    aget-object v2, v2, v3

    .line 248
    :goto_23
    return-object v2

    .line 243
    :cond_24
    add-int/lit8 v0, v0, 0x5

    goto :goto_5

    .line 248
    :cond_27
    const/4 v2, 0x0

    goto :goto_23
.end method

.method public getURI(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 107
    if-ltz p1, :cond_d

    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    if-ge p1, v0, :cond_d

    .line 108
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    aget-object v0, v0, v1

    .line 110
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getValue(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 178
    if-ltz p1, :cond_f

    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    if-ge p1, v0, :cond_f

    .line 179
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x4

    aget-object v0, v0, v1

    .line 181
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "qName"    # Ljava/lang/String;

    .prologue
    .line 304
    iget v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    mul-int/lit8 v1, v2, 0x5

    .line 305
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v1, :cond_1d

    .line 306
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 307
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x4

    aget-object v2, v2, v3

    .line 310
    :goto_19
    return-object v2

    .line 305
    :cond_1a
    add-int/lit8 v0, v0, 0x5

    goto :goto_5

    .line 310
    :cond_1d
    const/4 v2, 0x0

    goto :goto_19
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 284
    iget v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    mul-int/lit8 v1, v2, 0x5

    .line 285
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v1, :cond_27

    .line 286
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 287
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x4

    aget-object v2, v2, v3

    .line 290
    :goto_23
    return-object v2

    .line 285
    :cond_24
    add-int/lit8 v0, v0, 0x5

    goto :goto_5

    .line 290
    :cond_27
    const/4 v2, 0x0

    goto :goto_23
.end method

.method public removeAttribute(I)V
    .registers 9
    .param p1, "index"    # I

    .prologue
    const/4 v6, 0x0

    .line 438
    if-ltz p1, :cond_4a

    iget v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    if-ge p1, v1, :cond_4a

    .line 439
    iget v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_21

    .line 440
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v2, p1, 0x1

    mul-int/lit8 v2, v2, 0x5

    iget-object v3, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v4, p1, 0x5

    iget v5, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    sub-int/2addr v5, p1

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v5, v5, 0x5

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 443
    :cond_21
    iget v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 p1, v1, 0x5

    .line 444
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v0, p1, 0x1

    .end local p1    # "index":I
    .local v0, "index":I
    aput-object v6, v1, p1

    .line 445
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "index":I
    .restart local p1    # "index":I
    aput-object v6, v1, v0

    .line 446
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v0, p1, 0x1

    .end local p1    # "index":I
    .restart local v0    # "index":I
    aput-object v6, v1, p1

    .line 447
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "index":I
    .restart local p1    # "index":I
    aput-object v6, v1, v0

    .line 448
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    aput-object v6, v1, p1

    .line 449
    iget v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    .line 453
    :goto_49
    return-void

    .line 451
    :cond_4a
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->badIndex(I)V

    goto :goto_49
.end method

.method public setAttribute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "index"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "qName"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "value"    # Ljava/lang/String;

    .prologue
    .line 416
    if-ltz p1, :cond_2d

    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    if-ge p1, v0, :cond_2d

    .line 417
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    aput-object p2, v0, v1

    .line 418
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x1

    aput-object p3, v0, v1

    .line 419
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x2

    aput-object p4, v0, v1

    .line 420
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x3

    aput-object p5, v0, v1

    .line 421
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x4

    aput-object p6, v0, v1

    .line 425
    :goto_2c
    return-void

    .line 423
    :cond_2d
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->badIndex(I)V

    goto :goto_2c
.end method

.method public setAttributes(Lorg/xml/sax/Attributes;)V
    .registers 6
    .param p1, "atts"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 347
    invoke-virtual {p0}, Lorg/xml/sax/helpers/AttributesImpl;->clear()V

    .line 348
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    iput v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    .line 349
    iget v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    if-lez v1, :cond_57

    .line 350
    iget v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    mul-int/lit8 v1, v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    .line 351
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    iget v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    if-ge v0, v1, :cond_57

    .line 352
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x5

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 353
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 354
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x2

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 355
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x3

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 356
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x4

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 351
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 359
    .end local v0    # "i":I
    :cond_57
    return-void
.end method

.method public setLocalName(ILjava/lang/String;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 488
    if-ltz p1, :cond_f

    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    if-ge p1, v0, :cond_f

    .line 489
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x1

    aput-object p2, v0, v1

    .line 493
    :goto_e
    return-void

    .line 491
    :cond_f
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->badIndex(I)V

    goto :goto_e
.end method

.method public setQName(ILjava/lang/String;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "qName"    # Ljava/lang/String;

    .prologue
    .line 508
    if-ltz p1, :cond_f

    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    if-ge p1, v0, :cond_f

    .line 509
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x2

    aput-object p2, v0, v1

    .line 513
    :goto_e
    return-void

    .line 511
    :cond_f
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->badIndex(I)V

    goto :goto_e
.end method

.method public setType(ILjava/lang/String;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 527
    if-ltz p1, :cond_f

    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    if-ge p1, v0, :cond_f

    .line 528
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x3

    aput-object p2, v0, v1

    .line 532
    :goto_e
    return-void

    .line 530
    :cond_f
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->badIndex(I)V

    goto :goto_e
.end method

.method public setURI(ILjava/lang/String;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 468
    if-ltz p1, :cond_d

    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    if-ge p1, v0, :cond_d

    .line 469
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    aput-object p2, v0, v1

    .line 473
    :goto_c
    return-void

    .line 471
    :cond_d
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->badIndex(I)V

    goto :goto_c
.end method

.method public setValue(ILjava/lang/String;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 546
    if-ltz p1, :cond_f

    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    if-ge p1, v0, :cond_f

    .line 547
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x4

    aput-object p2, v0, v1

    .line 551
    :goto_e
    return-void

    .line 549
    :cond_f
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->badIndex(I)V

    goto :goto_e
.end method
