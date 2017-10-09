.class final Ljava/util/MiniEnumSet;
.super Ljava/util/EnumSet;
.source "MiniEnumSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/MiniEnumSet$1;,
        Ljava/util/MiniEnumSet$MiniEnumSetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum",
        "<TE;>;>",
        "Ljava/util/EnumSet",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final MAX_ELEMENTS:I = 0x40


# instance fields
.field private bits:J

.field private final enums:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method constructor <init>(Ljava/lang/Class;[Ljava/lang/Enum;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;[TE;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    .local p1, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "enums":[Ljava/lang/Enum;, "[TE;"
    invoke-direct {p0, p1}, Ljava/util/EnumSet;-><init>(Ljava/lang/Class;)V

    .line 42
    iput-object p2, p0, Ljava/util/MiniEnumSet;->enums:[Ljava/lang/Enum;

    .line 43
    return-void
.end method

.method static synthetic access$000(Ljava/util/MiniEnumSet;)J
    .registers 3
    .param p0, "x0"    # Ljava/util/MiniEnumSet;

    .prologue
    .line 24
    iget-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    return-wide v0
.end method

.method static synthetic access$100(Ljava/util/MiniEnumSet;)[Ljava/lang/Enum;
    .registers 2
    .param p0, "x0"    # Ljava/util/MiniEnumSet;

    .prologue
    .line 24
    iget-object v0, p0, Ljava/util/MiniEnumSet;->enums:[Ljava/lang/Enum;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Enum;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    .local p1, "element":Ljava/lang/Enum;, "TE;"
    iget-object v4, p0, Ljava/util/MiniEnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-wide v2, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 111
    .local v2, "oldBits":J
    const-wide/16 v4, 0x1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    shl-long/2addr v4, v6

    or-long v0, v2, v4

    .line 112
    .local v0, "newBits":J
    cmp-long v4, v2, v0

    if-eqz v4, :cond_1e

    .line 113
    iput-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 114
    iget v4, p0, Ljava/util/MiniEnumSet;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/MiniEnumSet;->size:I

    .line 115
    const/4 v4, 0x1

    .line 117
    :goto_1d
    return v4

    :cond_1e
    const/4 v4, 0x0

    goto :goto_1d
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/MiniEnumSet;->add(Ljava/lang/Enum;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v6, 0x0

    .line 122
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 136
    :cond_7
    :goto_7
    return v6

    .line 125
    :cond_8
    instance-of v7, p1, Ljava/util/EnumSet;

    if-eqz v7, :cond_2d

    move-object v1, p1

    .line 126
    check-cast v1, Ljava/util/EnumSet;

    .line 127
    .local v1, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    iget-object v7, v1, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    iget-object v8, p0, Ljava/util/MiniEnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-object v0, v1

    .line 129
    check-cast v0, Ljava/util/MiniEnumSet;

    .line 130
    .local v0, "miniSet":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<*>;"
    iget-wide v4, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 131
    .local v4, "oldBits":J
    iget-wide v8, v0, Ljava/util/MiniEnumSet;->bits:J

    or-long v2, v4, v8

    .line 132
    .local v2, "newBits":J
    iput-wide v2, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 133
    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v7

    iput v7, p0, Ljava/util/MiniEnumSet;->size:I

    .line 134
    cmp-long v7, v4, v2

    if-eqz v7, :cond_7

    const/4 v6, 0x1

    goto :goto_7

    .line 136
    .end local v0    # "miniSet":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<*>;"
    .end local v1    # "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    .end local v2    # "newBits":J
    .end local v4    # "oldBits":J
    :cond_2d
    invoke-super {p0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    move-result v6

    goto :goto_7
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 103
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/MiniEnumSet;->size:I

    .line 105
    return-void
.end method

.method complement()V
    .registers 7

    .prologue
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    const-wide/16 v4, -0x1

    .line 247
    iget-object v0, p0, Ljava/util/MiniEnumSet;->enums:[Ljava/lang/Enum;

    array-length v0, v0

    if-eqz v0, :cond_20

    .line 248
    iget-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    xor-long/2addr v0, v4

    iput-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 249
    iget-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    iget-object v2, p0, Ljava/util/MiniEnumSet;->enums:[Ljava/lang/Enum;

    array-length v2, v2

    rsub-int/lit8 v2, v2, 0x40

    ushr-long v2, v4, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 250
    iget-object v0, p0, Ljava/util/MiniEnumSet;->enums:[Ljava/lang/Enum;

    array-length v0, v0

    iget v1, p0, Ljava/util/MiniEnumSet;->size:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/MiniEnumSet;->size:I

    .line 252
    :cond_20
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    const/4 v2, 0x0

    .line 141
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/MiniEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 148
    :cond_d
    :goto_d
    return v2

    :cond_e
    move-object v0, p1

    .line 146
    check-cast v0, Ljava/lang/Enum;

    .line 147
    .local v0, "element":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    .line 148
    .local v1, "ordinal":I
    iget-wide v4, p0, Ljava/util/MiniEnumSet;->bits:J

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v1

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_d

    const/4 v2, 0x1

    goto :goto_d
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 153
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 161
    :cond_8
    :goto_8
    return v1

    .line 156
    :cond_9
    instance-of v5, p1, Ljava/util/MiniEnumSet;

    if-eqz v5, :cond_23

    move-object v0, p1

    .line 157
    check-cast v0, Ljava/util/MiniEnumSet;

    .line 158
    .local v0, "set":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<*>;"
    iget-wide v2, v0, Ljava/util/MiniEnumSet;->bits:J

    .line 159
    .local v2, "setBits":J
    iget-object v5, v0, Ljava/util/MiniEnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {p0, v5}, Ljava/util/MiniEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_21

    iget-wide v6, p0, Ljava/util/MiniEnumSet;->bits:J

    and-long/2addr v6, v2

    cmp-long v5, v6, v2

    if-eqz v5, :cond_8

    :cond_21
    move v1, v4

    goto :goto_8

    .line 161
    .end local v0    # "set":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<*>;"
    .end local v2    # "setBits":J
    :cond_23
    instance-of v5, p1, Ljava/util/EnumSet;

    if-nez v5, :cond_2d

    invoke-super {p0, p1}, Ljava/util/EnumSet;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_2d
    move v1, v4

    goto :goto_8
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 235
    instance-of v3, p1, Ljava/util/EnumSet;

    if-nez v3, :cond_b

    .line 236
    invoke-super {p0, p1}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 242
    :cond_a
    :goto_a
    return v1

    :cond_b
    move-object v0, p1

    .line 238
    check-cast v0, Ljava/util/EnumSet;

    .line 239
    .local v0, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    iget-object v3, v0, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {p0, v3}, Ljava/util/MiniEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 240
    iget v3, p0, Ljava/util/MiniEnumSet;->size:I

    if-nez v3, :cond_20

    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    :cond_20
    move v1, v2

    goto :goto_a

    .line 242
    :cond_22
    iget-wide v4, p0, Ljava/util/MiniEnumSet;->bits:J

    check-cast v0, Ljava/util/MiniEnumSet;

    .end local v0    # "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    iget-wide v6, v0, Ljava/util/MiniEnumSet;->bits:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_a

    move v1, v2

    goto :goto_a
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    new-instance v0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/MiniEnumSet$MiniEnumSetIterator;-><init>(Ljava/util/MiniEnumSet;Ljava/util/MiniEnumSet$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 14
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    const/4 v6, 0x0

    .line 216
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/util/MiniEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 230
    :cond_d
    :goto_d
    return v6

    :cond_e
    move-object v0, p1

    .line 221
    check-cast v0, Ljava/lang/Enum;

    .line 222
    .local v0, "element":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    .line 223
    .local v1, "ordinal":I
    iget-wide v4, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 224
    .local v4, "oldBits":J
    const-wide/16 v8, 0x1

    shl-long/2addr v8, v1

    const-wide/16 v10, -0x1

    xor-long/2addr v8, v10

    and-long v2, v4, v8

    .line 225
    .local v2, "newBits":J
    cmp-long v7, v4, v2

    if-eqz v7, :cond_d

    .line 226
    iput-wide v2, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 227
    iget v6, p0, Ljava/util/MiniEnumSet;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/util/MiniEnumSet;->size:I

    .line 228
    const/4 v6, 0x1

    goto :goto_d
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v6, 0x0

    .line 166
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 185
    :cond_7
    :goto_7
    return v6

    .line 169
    :cond_8
    instance-of v7, p1, Ljava/util/EnumSet;

    if-eqz v7, :cond_31

    move-object v1, p1

    .line 170
    check-cast v1, Ljava/util/EnumSet;

    .line 171
    .local v1, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    iget-object v7, v1, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {p0, v7}, Ljava/util/MiniEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v0, v1

    .line 175
    check-cast v0, Ljava/util/MiniEnumSet;

    .line 176
    .local v0, "miniSet":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    iget-wide v4, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 177
    .local v4, "oldBits":J
    iget-wide v8, v0, Ljava/util/MiniEnumSet;->bits:J

    const-wide/16 v10, -0x1

    xor-long/2addr v8, v10

    and-long v2, v4, v8

    .line 178
    .local v2, "newBits":J
    cmp-long v7, v4, v2

    if-eqz v7, :cond_7

    .line 179
    iput-wide v2, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 180
    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v6

    iput v6, p0, Ljava/util/MiniEnumSet;->size:I

    .line 181
    const/4 v6, 0x1

    goto :goto_7

    .line 185
    .end local v0    # "miniSet":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    .end local v1    # "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    .end local v2    # "newBits":J
    .end local v4    # "oldBits":J
    :cond_31
    invoke-super {p0, p1}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    move-result v6

    goto :goto_7
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 190
    instance-of v8, p1, Ljava/util/EnumSet;

    if-eqz v8, :cond_33

    move-object v1, p1

    .line 191
    check-cast v1, Ljava/util/EnumSet;

    .line 192
    .local v1, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    iget-object v8, v1, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {p0, v8}, Ljava/util/MiniEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_1b

    .line 193
    iget v8, p0, Ljava/util/MiniEnumSet;->size:I

    if-lez v8, :cond_19

    .line 194
    invoke-virtual {p0}, Ljava/util/MiniEnumSet;->clear()V

    .line 211
    .end local v1    # "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    :goto_18
    return v6

    .restart local v1    # "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    :cond_19
    move v6, v7

    .line 197
    goto :goto_18

    :cond_1b
    move-object v0, v1

    .line 201
    check-cast v0, Ljava/util/MiniEnumSet;

    .line 202
    .local v0, "miniSet":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    iget-wide v4, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 203
    .local v4, "oldBits":J
    iget-wide v8, v0, Ljava/util/MiniEnumSet;->bits:J

    and-long v2, v4, v8

    .line 204
    .local v2, "newBits":J
    cmp-long v8, v4, v2

    if-eqz v8, :cond_31

    .line 205
    iput-wide v2, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 206
    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v7

    iput v7, p0, Ljava/util/MiniEnumSet;->size:I

    goto :goto_18

    :cond_31
    move v6, v7

    .line 209
    goto :goto_18

    .line 211
    .end local v0    # "miniSet":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    .end local v1    # "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    .end local v2    # "newBits":J
    .end local v4    # "oldBits":J
    :cond_33
    invoke-super {p0, p1}, Ljava/util/EnumSet;->retainAll(Ljava/util/Collection;)Z

    move-result v6

    goto :goto_18
.end method

.method setRange(Ljava/lang/Enum;Ljava/lang/Enum;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    .local p1, "start":Ljava/lang/Enum;, "TE;"
    .local p2, "end":Ljava/lang/Enum;, "TE;"
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    sub-int/2addr v1, v4

    add-int/lit8 v0, v1, 0x1

    .line 257
    .local v0, "length":I
    const-wide/16 v4, -0x1

    rsub-int/lit8 v1, v0, 0x40

    ushr-long/2addr v4, v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    shl-long v2, v4, v1

    .line 258
    .local v2, "range":J
    iget-wide v4, p0, Ljava/util/MiniEnumSet;->bits:J

    or-long/2addr v4, v2

    iput-wide v4, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 259
    iget-wide v4, p0, Ljava/util/MiniEnumSet;->bits:J

    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v1

    iput v1, p0, Ljava/util/MiniEnumSet;->size:I

    .line 260
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 98
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    iget v0, p0, Ljava/util/MiniEnumSet;->size:I

    return v0
.end method
