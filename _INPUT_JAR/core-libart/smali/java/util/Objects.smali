.class public final Ljava/util/Objects;
.super Ljava/lang/Object;
.source "Objects.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "a":Ljava/lang/Object;, "TT;"
    .local p1, "b":Ljava/lang/Object;, "TT;"
    .local p2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-ne p0, p1, :cond_4

    .line 34
    const/4 v0, 0x0

    .line 36
    :goto_3
    return v0

    :cond_4
    invoke-interface {p2, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_3
.end method

.method public static deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 46
    if-eqz p0, :cond_4

    if-nez p1, :cond_a

    .line 47
    :cond_4
    if-ne p0, p1, :cond_8

    const/4 v0, 0x1

    .line 67
    :goto_7
    return v0

    .line 47
    :cond_8
    const/4 v0, 0x0

    goto :goto_7

    .line 48
    :cond_a
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_1f

    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_1f

    .line 49
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "a":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "b":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7

    .line 50
    .restart local p0    # "a":Ljava/lang/Object;
    .restart local p1    # "b":Ljava/lang/Object;
    :cond_1f
    instance-of v0, p0, [Z

    if-eqz v0, :cond_34

    instance-of v0, p1, [Z

    if-eqz v0, :cond_34

    .line 51
    check-cast p0, [Z

    .end local p0    # "a":Ljava/lang/Object;
    check-cast p0, [Z

    check-cast p1, [Z

    .end local p1    # "b":Ljava/lang/Object;
    check-cast p1, [Z

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    goto :goto_7

    .line 52
    .restart local p0    # "a":Ljava/lang/Object;
    .restart local p1    # "b":Ljava/lang/Object;
    :cond_34
    instance-of v0, p0, [B

    if-eqz v0, :cond_49

    instance-of v0, p1, [B

    if-eqz v0, :cond_49

    .line 53
    check-cast p0, [B

    .end local p0    # "a":Ljava/lang/Object;
    check-cast p0, [B

    check-cast p1, [B

    .end local p1    # "b":Ljava/lang/Object;
    check-cast p1, [B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_7

    .line 54
    .restart local p0    # "a":Ljava/lang/Object;
    .restart local p1    # "b":Ljava/lang/Object;
    :cond_49
    instance-of v0, p0, [C

    if-eqz v0, :cond_5e

    instance-of v0, p1, [C

    if-eqz v0, :cond_5e

    .line 55
    check-cast p0, [C

    .end local p0    # "a":Ljava/lang/Object;
    check-cast p0, [C

    check-cast p1, [C

    .end local p1    # "b":Ljava/lang/Object;
    check-cast p1, [C

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v0

    goto :goto_7

    .line 56
    .restart local p0    # "a":Ljava/lang/Object;
    .restart local p1    # "b":Ljava/lang/Object;
    :cond_5e
    instance-of v0, p0, [D

    if-eqz v0, :cond_73

    instance-of v0, p1, [D

    if-eqz v0, :cond_73

    .line 57
    check-cast p0, [D

    .end local p0    # "a":Ljava/lang/Object;
    check-cast p0, [D

    check-cast p1, [D

    .end local p1    # "b":Ljava/lang/Object;
    check-cast p1, [D

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    goto :goto_7

    .line 58
    .restart local p0    # "a":Ljava/lang/Object;
    .restart local p1    # "b":Ljava/lang/Object;
    :cond_73
    instance-of v0, p0, [F

    if-eqz v0, :cond_88

    instance-of v0, p1, [F

    if-eqz v0, :cond_88

    .line 59
    check-cast p0, [F

    .end local p0    # "a":Ljava/lang/Object;
    check-cast p0, [F

    check-cast p1, [F

    .end local p1    # "b":Ljava/lang/Object;
    check-cast p1, [F

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    goto :goto_7

    .line 60
    .restart local p0    # "a":Ljava/lang/Object;
    .restart local p1    # "b":Ljava/lang/Object;
    :cond_88
    instance-of v0, p0, [I

    if-eqz v0, :cond_9e

    instance-of v0, p1, [I

    if-eqz v0, :cond_9e

    .line 61
    check-cast p0, [I

    .end local p0    # "a":Ljava/lang/Object;
    check-cast p0, [I

    check-cast p1, [I

    .end local p1    # "b":Ljava/lang/Object;
    check-cast p1, [I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto/16 :goto_7

    .line 62
    .restart local p0    # "a":Ljava/lang/Object;
    .restart local p1    # "b":Ljava/lang/Object;
    :cond_9e
    instance-of v0, p0, [J

    if-eqz v0, :cond_b4

    instance-of v0, p1, [J

    if-eqz v0, :cond_b4

    .line 63
    check-cast p0, [J

    .end local p0    # "a":Ljava/lang/Object;
    check-cast p0, [J

    check-cast p1, [J

    .end local p1    # "b":Ljava/lang/Object;
    check-cast p1, [J

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    goto/16 :goto_7

    .line 64
    .restart local p0    # "a":Ljava/lang/Object;
    .restart local p1    # "b":Ljava/lang/Object;
    :cond_b4
    instance-of v0, p0, [S

    if-eqz v0, :cond_ca

    instance-of v0, p1, [S

    if-eqz v0, :cond_ca

    .line 65
    check-cast p0, [S

    .end local p0    # "a":Ljava/lang/Object;
    check-cast p0, [S

    check-cast p1, [S

    .end local p1    # "b":Ljava/lang/Object;
    check-cast p1, [S

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v0

    goto/16 :goto_7

    .line 67
    .restart local p0    # "a":Ljava/lang/Object;
    .restart local p1    # "b":Ljava/lang/Object;
    :cond_ca
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_7
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 74
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public static varargs hash([Ljava/lang/Object;)I
    .registers 2
    .param p0, "values"    # [Ljava/lang/Object;

    .prologue
    .line 83
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .registers 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 90
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_3
.end method

.method public static requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "o":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_8

    .line 98
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 100
    :cond_8
    return-object p0
.end method

.method public static requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "o":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_8

    .line 109
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_8
    return-object p0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 118
    if-nez p0, :cond_5

    const-string v0, "null"

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "nullString"    # Ljava/lang/String;

    .prologue
    .line 125
    if-nez p0, :cond_3

    .end local p1    # "nullString":Ljava/lang/String;
    :goto_2
    return-object p1

    .restart local p1    # "nullString":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method
