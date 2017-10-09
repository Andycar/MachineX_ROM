.class public abstract Ljava/text/Format;
.super Ljava/lang/Object;
.source "Format.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/Format$Field;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x42743ed16f0e7bdL


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method static upTo(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuffer;C)Z
    .registers 13
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "position"    # Ljava/text/ParsePosition;
    .param p2, "buffer"    # Ljava/lang/StringBuffer;
    .param p3, "stop"    # C

    .prologue
    const/16 v8, 0x27

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 179
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .local v1, "index":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 180
    .local v4, "length":I
    const/4 v3, 0x0

    .local v3, "lastQuote":Z
    const/4 v5, 0x0

    .local v5, "quote":Z
    move v2, v1

    .line 181
    .end local v1    # "index":I
    .local v2, "index":I
    :goto_f
    if-ge v2, v4, :cond_33

    .line 182
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 183
    .local v0, "ch":C
    if-ne v0, v8, :cond_26

    .line 184
    if-eqz v3, :cond_1e

    .line 185
    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 187
    :cond_1e
    if-nez v5, :cond_24

    move v5, v6

    .line 188
    :goto_21
    const/4 v3, 0x1

    :goto_22
    move v2, v1

    .line 196
    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_f

    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_24
    move v5, v7

    .line 187
    goto :goto_21

    .line 189
    :cond_26
    if-ne v0, p3, :cond_2e

    if-nez v5, :cond_2e

    .line 190
    invoke-virtual {p1, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 198
    .end local v0    # "ch":C
    :goto_2d
    return v6

    .line 193
    .restart local v0    # "ch":C
    :cond_2e
    const/4 v3, 0x0

    .line 194
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_22

    .line 197
    .end local v0    # "ch":C
    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_33
    invoke-virtual {p1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    move v6, v7

    .line 198
    goto :goto_2d
.end method

.method static upToWithQuotes(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuffer;CC)Z
    .registers 13
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "position"    # Ljava/text/ParsePosition;
    .param p2, "buffer"    # Ljava/lang/StringBuffer;
    .param p3, "stop"    # C
    .param p4, "start"    # C

    .prologue
    const/4 v6, 0x1

    .line 203
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    .local v2, "index":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, "length":I
    const/4 v1, 0x1

    .line 204
    .local v1, "count":I
    const/4 v5, 0x0

    .local v5, "quote":Z
    move v3, v2

    .line 205
    .end local v2    # "index":I
    .local v3, "index":I
    :goto_c
    if-ge v3, v4, :cond_32

    .line 206
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 207
    .local v0, "ch":C
    const/16 v7, 0x27

    if-ne v0, v7, :cond_1b

    .line 208
    if-nez v5, :cond_27

    move v5, v6

    .line 210
    :cond_1b
    :goto_1b
    if-nez v5, :cond_2d

    .line 211
    if-ne v0, p3, :cond_21

    .line 212
    add-int/lit8 v1, v1, -0x1

    .line 214
    :cond_21
    if-nez v1, :cond_29

    .line 215
    invoke-virtual {p1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 216
    return v6

    .line 208
    :cond_27
    const/4 v5, 0x0

    goto :goto_1b

    .line 218
    :cond_29
    if-ne v0, p4, :cond_2d

    .line 219
    add-int/lit8 v1, v1, 0x1

    .line 222
    :cond_2d
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v2

    .line 223
    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto :goto_c

    .line 224
    .end local v0    # "ch":C
    :cond_32
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unmatched braces in the pattern"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 77
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 78
    :catch_5
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final format(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 136
    new-instance v0, Ljava/text/AttributedString;

    invoke-virtual {p0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 149
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 150
    .local v0, "position":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Ljava/text/Format;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v1

    .line 151
    .local v1, "result":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-nez v2, :cond_1c

    .line 152
    new-instance v2, Ljava/text/ParseException;

    const-string v3, "Parse failure"

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 154
    :cond_1c
    return-object v1
.end method

.method public abstract parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
.end method
