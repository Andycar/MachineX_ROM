.class Ljava/util/EnumMap$EnumMapEntryIterator;
.super Ljava/util/EnumMap$EnumMapIterator;
.source "EnumMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnumMapEntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "KT:",
        "Ljava/lang/Enum",
        "<TKT;>;VT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/EnumMap$EnumMapIterator",
        "<TE;TKT;TVT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/MapEntry$Type;Ljava/util/EnumMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/MapEntry$Type",
            "<TE;TKT;TVT;>;",
            "Ljava/util/EnumMap",
            "<TKT;TVT;>;)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, "this":Ljava/util/EnumMap$EnumMapEntryIterator;, "Ljava/util/EnumMap$EnumMapEntryIterator<TE;TKT;TVT;>;"
    .local p1, "value":Ljava/util/MapEntry$Type;, "Ljava/util/MapEntry$Type<TE;TKT;TVT;>;"
    .local p2, "em":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TKT;TVT;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/EnumMap$EnumMapIterator;-><init>(Ljava/util/MapEntry$Type;Ljava/util/EnumMap;)V

    .line 297
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 302
    .local p0, "this":Ljava/util/EnumMap$EnumMapEntryIterator;, "Ljava/util/EnumMap$EnumMapEntryIterator<TE;TKT;TVT;>;"
    invoke-virtual {p0}, Ljava/util/EnumMap$EnumMapEntryIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 303
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 305
    :cond_c
    iget v0, p0, Ljava/util/EnumMap$EnumMapEntryIterator;->position:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/util/EnumMap$EnumMapEntryIterator;->position:I

    iput v0, p0, Ljava/util/EnumMap$EnumMapEntryIterator;->prePosition:I

    .line 306
    iget-object v0, p0, Ljava/util/EnumMap$EnumMapEntryIterator;->type:Ljava/util/MapEntry$Type;

    new-instance v1, Ljava/util/EnumMap$Entry;

    iget-object v2, p0, Ljava/util/EnumMap$EnumMapEntryIterator;->enumMap:Ljava/util/EnumMap;

    iget-object v2, v2, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    iget v3, p0, Ljava/util/EnumMap$EnumMapEntryIterator;->prePosition:I

    aget-object v2, v2, v3

    iget-object v3, p0, Ljava/util/EnumMap$EnumMapEntryIterator;->enumMap:Ljava/util/EnumMap;

    iget-object v3, v3, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    iget v4, p0, Ljava/util/EnumMap$EnumMapEntryIterator;->prePosition:I

    aget-object v3, v3, v4

    iget-object v4, p0, Ljava/util/EnumMap$EnumMapEntryIterator;->enumMap:Ljava/util/EnumMap;

    invoke-direct {v1, v2, v3, v4}, Ljava/util/EnumMap$Entry;-><init>(Ljava/lang/Enum;Ljava/lang/Object;Ljava/util/EnumMap;)V

    invoke-interface {v0, v1}, Ljava/util/MapEntry$Type;->get(Ljava/util/MapEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
