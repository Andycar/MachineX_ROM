.class Ljava/text/AttributedString$AttributedIterator;
.super Ljava/lang/Object;
.source "AttributedString.java"

# interfaces
.implements Ljava/text/AttributedCharacterIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/AttributedString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AttributedIterator"
.end annotation


# instance fields
.field private attrString:Ljava/text/AttributedString;

.field private attributesAllowed:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private begin:I

.field private end:I

.field private offset:I


# direct methods
.method constructor <init>(Ljava/text/AttributedString;)V
    .registers 4
    .param p1, "attrString"    # Ljava/text/AttributedString;

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    .line 65
    iput v1, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    .line 66
    iget-object v0, p1, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    .line 67
    iput v1, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    .line 68
    return-void
.end method

.method constructor <init>(Ljava/text/AttributedString;[Ljava/text/AttributedCharacterIterator$Attribute;II)V
    .registers 8
    .param p1, "attrString"    # Ljava/text/AttributedString;
    .param p2, "attributes"    # [Ljava/text/AttributedCharacterIterator$Attribute;
    .param p3, "begin"    # I
    .param p4, "end"    # I

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    if-ltz p3, :cond_f

    iget-object v2, p1, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p4, v2, :cond_f

    if-le p3, p4, :cond_15

    .line 74
    :cond_f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 76
    :cond_15
    iput p3, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    .line 77
    iput p4, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    .line 78
    iput p3, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    .line 79
    iput-object p1, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    .line 80
    if-eqz p2, :cond_38

    .line 81
    new-instance v1, Ljava/util/HashSet;

    array-length v2, p2

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 83
    .local v1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    array-length v0, p2

    .local v0, "i":I
    :goto_2c
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_36

    .line 84
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 86
    :cond_36
    iput-object v1, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    .line 88
    .end local v0    # "i":I
    .end local v1    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    :cond_38
    return-void
.end method

.method private currentValue(Ljava/util/List;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/text/AttributedString$Range;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p1, "ranges":Ljava/util/List;, "Ljava/util/List<Ljava/text/AttributedString$Range;>;"
    const/4 v2, 0x0

    .line 207
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 208
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/text/AttributedString$Range;>;"
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 209
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/AttributedString$Range;

    .line 210
    .local v1, "range":Ljava/text/AttributedString$Range;
    iget v3, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    iget v4, v1, Ljava/text/AttributedString$Range;->start:I

    if-lt v3, v4, :cond_5

    iget v3, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    iget v4, v1, Ljava/text/AttributedString$Range;->end:I

    if-ge v3, v4, :cond_5

    .line 211
    invoke-direct {p0, v1}, Ljava/text/AttributedString$AttributedIterator;->inRange(Ljava/text/AttributedString$Range;)Z

    move-result v3

    if-eqz v3, :cond_25

    iget-object v2, v1, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    .line 214
    .end local v1    # "range":Ljava/text/AttributedString$Range;
    :cond_25
    return-object v2
.end method

.method private inRange(Ljava/text/AttributedString$Range;)Z
    .registers 5
    .param p1, "range"    # Ljava/text/AttributedString$Range;

    .prologue
    const/4 v0, 0x1

    .line 155
    iget-object v1, p1, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    instance-of v1, v1, Ljava/text/Annotation;

    if-nez v1, :cond_8

    .line 158
    :cond_7
    :goto_7
    return v0

    :cond_8
    iget v1, p1, Ljava/text/AttributedString$Range;->start:I

    iget v2, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    if-lt v1, v2, :cond_20

    iget v1, p1, Ljava/text/AttributedString$Range;->start:I

    iget v2, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    if-ge v1, v2, :cond_20

    iget v1, p1, Ljava/text/AttributedString$Range;->end:I

    iget v2, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    if-le v1, v2, :cond_20

    iget v1, p1, Ljava/text/AttributedString$Range;->end:I

    iget v2, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    if-le v1, v2, :cond_7

    :cond_20
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private inRange(Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/text/AttributedString$Range;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "ranges":Ljava/util/List;, "Ljava/util/List<Ljava/text/AttributedString$Range;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 163
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 164
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/text/AttributedString$Range;>;"
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 165
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/AttributedString$Range;

    .line 166
    .local v1, "range":Ljava/text/AttributedString$Range;
    iget v4, v1, Ljava/text/AttributedString$Range;->start:I

    iget v5, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    if-lt v4, v5, :cond_32

    iget v4, v1, Ljava/text/AttributedString$Range;->start:I

    iget v5, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    if-ge v4, v5, :cond_32

    .line 167
    iget-object v4, v1, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    instance-of v4, v4, Ljava/text/Annotation;

    if-eqz v4, :cond_30

    iget v4, v1, Ljava/text/AttributedString$Range;->end:I

    iget v5, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    if-le v4, v5, :cond_31

    iget v4, v1, Ljava/text/AttributedString$Range;->end:I

    iget v5, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    if-gt v4, v5, :cond_31

    :cond_30
    move v2, v3

    .line 174
    .end local v1    # "range":Ljava/text/AttributedString$Range;
    :cond_31
    :goto_31
    return v2

    .line 169
    .restart local v1    # "range":Ljava/text/AttributedString$Range;
    :cond_32
    iget v4, v1, Ljava/text/AttributedString$Range;->end:I

    iget v5, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    if-le v4, v5, :cond_6

    iget v4, v1, Ljava/text/AttributedString$Range;->end:I

    iget v5, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    if-gt v4, v5, :cond_6

    .line 170
    iget-object v4, v1, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    instance-of v4, v4, Ljava/text/Annotation;

    if-eqz v4, :cond_50

    iget v4, v1, Ljava/text/AttributedString$Range;->start:I

    iget v5, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    if-lt v4, v5, :cond_31

    iget v4, v1, Ljava/text/AttributedString$Range;->start:I

    iget v5, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    if-ge v4, v5, :cond_31

    :cond_50
    move v2, v3

    goto :goto_31
.end method

.method private runLimit(Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/text/AttributedString$Range;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "ranges":Ljava/util/List;, "Ljava/util/List<Ljava/text/AttributedString$Range;>;"
    iget v2, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    .line 255
    .local v2, "result":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 256
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/text/AttributedString$Range;>;"
    :goto_a
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 257
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/AttributedString$Range;

    .line 258
    .local v1, "range":Ljava/text/AttributedString$Range;
    iget v3, v1, Ljava/text/AttributedString$Range;->end:I

    iget v4, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    if-gt v3, v4, :cond_1d

    .line 268
    .end local v1    # "range":Ljava/text/AttributedString$Range;
    .end local v2    # "result":I
    :cond_1c
    :goto_1c
    return v2

    .line 261
    .restart local v1    # "range":Ljava/text/AttributedString$Range;
    .restart local v2    # "result":I
    :cond_1d
    iget v3, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    iget v4, v1, Ljava/text/AttributedString$Range;->start:I

    if-lt v3, v4, :cond_32

    iget v3, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    iget v4, v1, Ljava/text/AttributedString$Range;->end:I

    if-ge v3, v4, :cond_32

    .line 262
    invoke-direct {p0, v1}, Ljava/text/AttributedString$AttributedIterator;->inRange(Ljava/text/AttributedString$Range;)Z

    move-result v3

    if-eqz v3, :cond_1c

    iget v2, v1, Ljava/text/AttributedString$Range;->end:I

    goto :goto_1c

    .line 263
    :cond_32
    iget v3, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    iget v4, v1, Ljava/text/AttributedString$Range;->end:I

    if-ge v3, v4, :cond_1c

    .line 266
    iget v2, v1, Ljava/text/AttributedString$Range;->start:I

    .line 267
    goto :goto_a
.end method

.method private runStart(Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/text/AttributedString$Range;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 302
    .local p1, "ranges":Ljava/util/List;, "Ljava/util/List<Ljava/text/AttributedString$Range;>;"
    iget v2, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    .line 303
    .local v2, "result":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 304
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/text/AttributedString$Range;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 305
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/AttributedString$Range;

    .line 306
    .local v1, "range":Ljava/text/AttributedString$Range;
    iget v3, v1, Ljava/text/AttributedString$Range;->start:I

    iget v4, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    if-lt v3, v4, :cond_19

    .line 316
    .end local v1    # "range":Ljava/text/AttributedString$Range;
    .end local v2    # "result":I
    :cond_18
    :goto_18
    return v2

    .line 309
    .restart local v1    # "range":Ljava/text/AttributedString$Range;
    .restart local v2    # "result":I
    :cond_19
    iget v3, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    iget v4, v1, Ljava/text/AttributedString$Range;->start:I

    if-lt v3, v4, :cond_2e

    iget v3, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    iget v4, v1, Ljava/text/AttributedString$Range;->end:I

    if-ge v3, v4, :cond_2e

    .line 310
    invoke-direct {p0, v1}, Ljava/text/AttributedString$AttributedIterator;->inRange(Ljava/text/AttributedString$Range;)Z

    move-result v3

    if-eqz v3, :cond_18

    iget v2, v1, Ljava/text/AttributedString$Range;->start:I

    goto :goto_18

    .line 311
    :cond_2e
    iget v3, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    iget v4, v1, Ljava/text/AttributedString$Range;->start:I

    if-lt v3, v4, :cond_18

    .line 314
    iget v2, v1, Ljava/text/AttributedString$Range;->end:I

    .line 315
    goto :goto_6
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 101
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/AttributedString$AttributedIterator;

    .line 102
    .local v0, "clone":Ljava/text/AttributedString$AttributedIterator;
    iget-object v2, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    if-eqz v2, :cond_14

    .line 103
    iget-object v2, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    iput-object v2, v0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;
    :try_end_14
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_14} :catch_15

    .line 106
    :cond_14
    return-object v0

    .line 107
    .end local v0    # "clone":Ljava/text/AttributedString$AttributedIterator;
    :catch_15
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public current()C
    .registers 3

    .prologue
    .line 113
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    if-ne v0, v1, :cond_a

    .line 114
    const v0, 0xffff

    .line 116
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v0, v0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_9
.end method

.method public first()C
    .registers 3

    .prologue
    .line 120
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    if-ne v0, v1, :cond_a

    .line 121
    const v0, 0xffff

    .line 124
    :goto_9
    return v0

    .line 123
    :cond_a
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    iput v0, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    .line 124
    iget-object v0, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v0, v0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_9
.end method

.method public getAllAttributeKeys()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    iget v4, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    if-nez v4, :cond_1d

    iget v4, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    iget-object v5, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v5, v5, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_1d

    iget-object v4, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    if-nez v4, :cond_1d

    .line 186
    iget-object v4, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v4, v4, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 203
    :cond_1c
    return-object v3

    .line 189
    :cond_1d
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v4, v4, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 191
    .local v3, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    iget-object v4, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v4, v4, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 193
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/util/List<Ljava/text/AttributedString$Range;>;>;>;"
    :cond_3c
    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 194
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 195
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/util/List<Ljava/text/AttributedString$Range;>;>;"
    iget-object v4, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    if-eqz v4, :cond_58

    iget-object v4, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 197
    :cond_58
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 198
    .local v2, "ranges":Ljava/util/List;, "Ljava/util/List<Ljava/text/AttributedString$Range;>;"
    invoke-direct {p0, v2}, Ljava/text/AttributedString$AttributedIterator;->inRange(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 199
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3c
.end method

.method public getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;
    .registers 5
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;

    .prologue
    const/4 v1, 0x0

    .line 219
    iget-object v2, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    if-eqz v2, :cond_e

    iget-object v2, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 228
    :cond_d
    :goto_d
    return-object v1

    .line 223
    :cond_e
    iget-object v2, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v2, v2, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 225
    .local v0, "ranges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/text/AttributedString$Range;>;"
    if-eqz v0, :cond_d

    .line 228
    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedIterator;->currentValue(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_d
.end method

.method public getAttributes()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    new-instance v2, Ljava/util/HashMap;

    iget-object v4, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v4, v4, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 234
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    iget-object v4, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v4, v4, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 236
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/util/List<Ljava/text/AttributedString$Range;>;>;>;"
    :cond_1f
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 237
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 238
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/util/List<Ljava/text/AttributedString$Range;>;>;"
    iget-object v4, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    if-eqz v4, :cond_3b

    iget-object v4, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 240
    :cond_3b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {p0, v4}, Ljava/text/AttributedString$AttributedIterator;->currentValue(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    .line 241
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_1f

    .line 242
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    .line 246
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/util/List<Ljava/text/AttributedString$Range;>;>;"
    .end local v3    # "value":Ljava/lang/Object;
    :cond_4f
    return-object v2
.end method

.method public getBeginIndex()I
    .registers 2

    .prologue
    .line 133
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    return v0
.end method

.method public getEndIndex()I
    .registers 2

    .prologue
    .line 142
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    return v0
.end method

.method public getIndex()I
    .registers 2

    .prologue
    .line 151
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    return v0
.end method

.method public getRunLimit()I
    .registers 2

    .prologue
    .line 250
    invoke-virtual {p0}, Ljava/text/AttributedString$AttributedIterator;->getAllAttributeKeys()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/AttributedString$AttributedIterator;->getRunLimit(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I
    .registers 4
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;

    .prologue
    .line 272
    iget-object v1, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    if-eqz v1, :cond_f

    iget-object v1, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 274
    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    .line 281
    :goto_e
    return v1

    .line 276
    :cond_f
    iget-object v1, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v1, v1, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 278
    .local v0, "ranges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/text/AttributedString$Range;>;"
    if-nez v0, :cond_1e

    .line 279
    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    goto :goto_e

    .line 281
    :cond_1e
    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedIterator;->runLimit(Ljava/util/List;)I

    move-result v1

    goto :goto_e
.end method

.method public getRunLimit(Ljava/util/Set;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 285
    .local p1, "attributes":Ljava/util/Set;, "Ljava/util/Set<+Ljava/text/AttributedCharacterIterator$Attribute;>;"
    iget v2, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    .line 286
    .local v2, "limit":I
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 287
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/text/AttributedCharacterIterator$Attribute;>;"
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 288
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/AttributedCharacterIterator$Attribute;

    .line 289
    .local v0, "attribute":Ljava/text/AttributedCharacterIterator$Attribute;
    invoke-virtual {p0, v0}, Ljava/text/AttributedString$AttributedIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v3

    .line 290
    .local v3, "newLimit":I
    if-ge v3, v2, :cond_6

    .line 291
    move v2, v3

    goto :goto_6

    .line 294
    .end local v0    # "attribute":Ljava/text/AttributedCharacterIterator$Attribute;
    .end local v3    # "newLimit":I
    :cond_1a
    return v2
.end method

.method public getRunStart()I
    .registers 2

    .prologue
    .line 298
    invoke-virtual {p0}, Ljava/text/AttributedString$AttributedIterator;->getAllAttributeKeys()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/AttributedString$AttributedIterator;->getRunStart(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I
    .registers 4
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;

    .prologue
    .line 320
    iget-object v1, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    if-eqz v1, :cond_f

    iget-object v1, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 322
    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    .line 329
    :goto_e
    return v1

    .line 324
    :cond_f
    iget-object v1, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v1, v1, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 326
    .local v0, "ranges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/text/AttributedString$Range;>;"
    if-nez v0, :cond_1e

    .line 327
    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    goto :goto_e

    .line 329
    :cond_1e
    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedIterator;->runStart(Ljava/util/List;)I

    move-result v1

    goto :goto_e
.end method

.method public getRunStart(Ljava/util/Set;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 333
    .local p1, "attributes":Ljava/util/Set;, "Ljava/util/Set<+Ljava/text/AttributedCharacterIterator$Attribute;>;"
    iget v3, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    .line 334
    .local v3, "start":I
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 335
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/text/AttributedCharacterIterator$Attribute;>;"
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 336
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/AttributedCharacterIterator$Attribute;

    .line 337
    .local v0, "attribute":Ljava/text/AttributedCharacterIterator$Attribute;
    invoke-virtual {p0, v0}, Ljava/text/AttributedString$AttributedIterator;->getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v2

    .line 338
    .local v2, "newStart":I
    if-le v2, v3, :cond_6

    .line 339
    move v3, v2

    goto :goto_6

    .line 342
    .end local v0    # "attribute":Ljava/text/AttributedCharacterIterator$Attribute;
    .end local v2    # "newStart":I
    :cond_1a
    return v3
.end method

.method public last()C
    .registers 3

    .prologue
    .line 346
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    if-ne v0, v1, :cond_a

    .line 347
    const v0, 0xffff

    .line 350
    :goto_9
    return v0

    .line 349
    :cond_a
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    .line 350
    iget-object v0, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v0, v0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_9
.end method

.method public next()C
    .registers 3

    .prologue
    .line 354
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_10

    .line 355
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    iput v0, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    .line 356
    const v0, 0xffff

    .line 358
    :goto_f
    return v0

    :cond_10
    iget-object v0, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v0, v0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_f
.end method

.method public previous()C
    .registers 3

    .prologue
    .line 362
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    if-ne v0, v1, :cond_a

    .line 363
    const v0, 0xffff

    .line 365
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v0, v0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_9
.end method

.method public setIndex(I)C
    .registers 4
    .param p1, "location"    # I

    .prologue
    .line 369
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    if-lt p1, v0, :cond_8

    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    if-le p1, v0, :cond_e

    .line 370
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 372
    :cond_e
    iput p1, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    .line 373
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    if-ne v0, v1, :cond_1a

    .line 374
    const v0, 0xffff

    .line 376
    :goto_19
    return v0

    :cond_1a
    iget-object v0, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v0, v0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_19
.end method
