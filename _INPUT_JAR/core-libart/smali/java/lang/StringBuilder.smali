.class public final Ljava/lang/StringBuilder;
.super Ljava/lang/AbstractStringBuilder;
.source "StringBuilder.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/lang/CharSequence;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3cd5fb145a4c6acbL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/AbstractStringBuilder;-><init>()V

    .line 55
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "capacity"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;-><init>(I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "seq"    # Ljava/lang/CharSequence;

    .prologue
    .line 81
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 679
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 680
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 681
    .local v0, "count":I
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    move-object v1, v2

    check-cast v1, [C

    .line 682
    .local v1, "value":[C
    invoke-virtual {p0, v1, v0}, Ljava/lang/StringBuilder;->set([CI)V

    .line 683
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 697
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 698
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 699
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->getValue()[C

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 700
    return-void
.end method


# virtual methods
.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3
    .param p1, "x0"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 3
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 5
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(C)Ljava/lang/StringBuilder;
    .registers 2
    .param p1, "c"    # C

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append0(C)V

    .line 125
    return-object p0
.end method

.method public append(D)Ljava/lang/StringBuilder;
    .registers 4
    .param p1, "d"    # D

    .prologue
    .line 184
    invoke-static {}, Ljava/lang/RealToString;->getInstance()Ljava/lang/RealToString;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Ljava/lang/RealToString;->appendDouble(Ljava/lang/AbstractStringBuilder;D)V

    .line 185
    return-object p0
.end method

.method public append(F)Ljava/lang/StringBuilder;
    .registers 3
    .param p1, "f"    # F

    .prologue
    .line 169
    invoke-static {}, Ljava/lang/RealToString;->getInstance()Ljava/lang/RealToString;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/RealToString;->appendFloat(Ljava/lang/AbstractStringBuilder;F)V

    .line 170
    return-object p0
.end method

.method public append(I)Ljava/lang/StringBuilder;
    .registers 2
    .param p1, "i"    # I

    .prologue
    .line 139
    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->appendInt(Ljava/lang/AbstractStringBuilder;I)V

    .line 140
    return-object p0
.end method

.method public append(J)Ljava/lang/StringBuilder;
    .registers 4
    .param p1, "l"    # J

    .prologue
    .line 154
    invoke-static {p0, p1, p2}, Ljava/lang/IntegralToString;->appendLong(Ljava/lang/AbstractStringBuilder;J)V

    .line 155
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .registers 4
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .prologue
    .line 285
    if-nez p1, :cond_6

    .line 286
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->appendNull()V

    .line 290
    :goto_5
    return-object p0

    .line 288
    :cond_6
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/lang/StringBuilder;->append0(Ljava/lang/CharSequence;II)V

    goto :goto_5
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;
    .registers 4
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 311
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append0(Ljava/lang/CharSequence;II)V

    .line 312
    return-object p0
.end method

.method public append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 199
    if-nez p1, :cond_6

    .line 200
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->appendNull()V

    .line 204
    :goto_5
    return-object p0

    .line 202
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append0(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append0(Ljava/lang/String;)V

    .line 217
    return-object p0
.end method

.method public append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;
    .registers 5
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    .line 230
    if-nez p1, :cond_6

    .line 231
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->appendNull()V

    .line 235
    :goto_5
    return-object p0

    .line 233
    :cond_6
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->getValue()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Ljava/lang/StringBuilder;->append0([CII)V

    goto :goto_5
.end method

.method public append(Z)Ljava/lang/StringBuilder;
    .registers 3
    .param p1, "b"    # Z

    .prologue
    .line 109
    if-eqz p1, :cond_8

    const-string v0, "true"

    :goto_4
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append0(Ljava/lang/String;)V

    .line 110
    return-object p0

    .line 109
    :cond_8
    const-string v0, "false"

    goto :goto_4
.end method

.method public append([C)Ljava/lang/StringBuilder;
    .registers 2
    .param p1, "chars"    # [C

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append0([C)V

    .line 250
    return-object p0
.end method

.method public append([CII)Ljava/lang/StringBuilder;
    .registers 4
    .param p1, "str"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 271
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append0([CII)V

    .line 272
    return-object p0
.end method

.method public appendCodePoint(I)Ljava/lang/StringBuilder;
    .registers 3
    .param p1, "codePoint"    # I

    .prologue
    .line 325
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append0([C)V

    .line 326
    return-object p0
.end method

.method public bridge synthetic capacity()I
    .registers 2

    .prologue
    .line 44
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->capacity()I

    move-result v0

    return v0
.end method

.method public bridge synthetic charAt(I)C
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 44
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->charAt(I)C

    move-result v0

    return v0
.end method

.method public bridge synthetic codePointAt(I)I
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 44
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->codePointAt(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic codePointBefore(I)I
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 44
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->codePointBefore(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic codePointCount(II)I
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->codePointCount(II)I

    move-result v0

    return v0
.end method

.method public delete(II)Ljava/lang/StringBuilder;
    .registers 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 343
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->delete0(II)V

    .line 344
    return-object p0
.end method

.method public deleteCharAt(I)Ljava/lang/StringBuilder;
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 359
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->deleteCharAt0(I)V

    .line 360
    return-object p0
.end method

.method public bridge synthetic ensureCapacity(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 44
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->ensureCapacity(I)V

    return-void
.end method

.method public bridge synthetic getChars(II[CI)V
    .registers 5
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # [C
    .param p4, "x3"    # I

    .prologue
    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Ljava/lang/AbstractStringBuilder;->getChars(II[CI)V

    return-void
.end method

.method public bridge synthetic indexOf(Ljava/lang/String;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic indexOf(Ljava/lang/String;I)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public insert(IC)Ljava/lang/StringBuilder;
    .registers 3
    .param p1, "offset"    # I
    .param p2, "c"    # C

    .prologue
    .line 400
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert0(IC)V

    .line 401
    return-object p0
.end method

.method public insert(ID)Ljava/lang/StringBuilder;
    .registers 6
    .param p1, "offset"    # I
    .param p2, "d"    # D

    .prologue
    .line 481
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 482
    return-object p0
.end method

.method public insert(IF)Ljava/lang/StringBuilder;
    .registers 4
    .param p1, "offset"    # I
    .param p2, "f"    # F

    .prologue
    .line 460
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 461
    return-object p0
.end method

.method public insert(II)Ljava/lang/StringBuilder;
    .registers 4
    .param p1, "offset"    # I
    .param p2, "i"    # I

    .prologue
    .line 420
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 421
    return-object p0
.end method

.method public insert(IJ)Ljava/lang/StringBuilder;
    .registers 6
    .param p1, "offset"    # I
    .param p2, "l"    # J

    .prologue
    .line 440
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 441
    return-object p0
.end method

.method public insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .registers 4
    .param p1, "offset"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 587
    if-nez p2, :cond_8

    const-string v0, "null"

    :goto_4
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 588
    return-object p0

    .line 587
    :cond_8
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public insert(ILjava/lang/CharSequence;II)Ljava/lang/StringBuilder;
    .registers 5
    .param p1, "offset"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 615
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/CharSequence;II)V

    .line 616
    return-object p0
.end method

.method public insert(ILjava/lang/Object;)Ljava/lang/StringBuilder;
    .registers 4
    .param p1, "offset"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 501
    if-nez p2, :cond_8

    const-string v0, "null"

    :goto_4
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 502
    return-object p0

    .line 501
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public insert(ILjava/lang/String;)Ljava/lang/StringBuilder;
    .registers 3
    .param p1, "offset"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 519
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 520
    return-object p0
.end method

.method public insert(IZ)Ljava/lang/StringBuilder;
    .registers 4
    .param p1, "offset"    # I
    .param p2, "b"    # Z

    .prologue
    .line 380
    if-eqz p2, :cond_8

    const-string v0, "true"

    :goto_4
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 381
    return-object p0

    .line 380
    :cond_8
    const-string v0, "false"

    goto :goto_4
.end method

.method public insert(I[C)Ljava/lang/StringBuilder;
    .registers 3
    .param p1, "offset"    # I
    .param p2, "ch"    # [C

    .prologue
    .line 539
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert0(I[C)V

    .line 540
    return-object p0
.end method

.method public insert(I[CII)Ljava/lang/StringBuilder;
    .registers 5
    .param p1, "offset"    # I
    .param p2, "str"    # [C
    .param p3, "strOffset"    # I
    .param p4, "strLen"    # I

    .prologue
    .line 566
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->insert0(I[CII)V

    .line 567
    return-object p0
.end method

.method public bridge synthetic lastIndexOf(Ljava/lang/String;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic lastIndexOf(Ljava/lang/String;I)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic length()I
    .registers 2

    .prologue
    .line 44
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public bridge synthetic offsetByCodePoints(II)I
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->offsetByCodePoints(II)I

    move-result v0

    return v0
.end method

.method public replace(IILjava/lang/String;)Ljava/lang/StringBuilder;
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "string"    # Ljava/lang/String;

    .prologue
    .line 637
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->replace0(IILjava/lang/String;)V

    .line 638
    return-object p0
.end method

.method public reverse()Ljava/lang/StringBuilder;
    .registers 1

    .prologue
    .line 647
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->reverse0()V

    .line 648
    return-object p0
.end method

.method public bridge synthetic setCharAt(IC)V
    .registers 3
    .param p1, "x0"    # I
    .param p2, "x1"    # C

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->setCharAt(IC)V

    return-void
.end method

.method public bridge synthetic setLength(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 44
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->setLength(I)V

    return-void
.end method

.method public bridge synthetic subSequence(II)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic substring(I)Ljava/lang/String;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 44
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic substring(II)Ljava/lang/String;
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 663
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trimToSize()V
    .registers 1

    .prologue
    .line 44
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->trimToSize()V

    return-void
.end method
