.class Ljava/util/EnumMap$EnumMapKeySet;
.super Ljava/util/AbstractSet;
.source "EnumMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnumMapKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KT:",
        "Ljava/lang/Enum",
        "<TKT;>;VT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TKT;>;"
    }
.end annotation


# instance fields
.field private final enumMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<TKT;TVT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/EnumMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<TKT;TVT;>;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "this":Ljava/util/EnumMap$EnumMapKeySet;, "Ljava/util/EnumMap$EnumMapKeySet<TKT;TVT;>;"
    .local p1, "em":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TKT;TVT;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 197
    iput-object p1, p0, Ljava/util/EnumMap$EnumMapKeySet;->enumMap:Ljava/util/EnumMap;

    .line 198
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 202
    .local p0, "this":Ljava/util/EnumMap$EnumMapKeySet;, "Ljava/util/EnumMap$EnumMapKeySet<TKT;TVT;>;"
    iget-object v0, p0, Ljava/util/EnumMap$EnumMapKeySet;->enumMap:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    .line 203
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 207
    .local p0, "this":Ljava/util/EnumMap$EnumMapKeySet;, "Ljava/util/EnumMap$EnumMapKeySet<TKT;TVT;>;"
    iget-object v0, p0, Ljava/util/EnumMap$EnumMapKeySet;->enumMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4

    .prologue
    .line 213
    .local p0, "this":Ljava/util/EnumMap$EnumMapKeySet;, "Ljava/util/EnumMap$EnumMapKeySet<TKT;TVT;>;"
    new-instance v0, Ljava/util/EnumMap$EnumMapIterator;

    new-instance v1, Ljava/util/EnumMap$EnumMapKeySet$1;

    invoke-direct {v1, p0}, Ljava/util/EnumMap$EnumMapKeySet$1;-><init>(Ljava/util/EnumMap$EnumMapKeySet;)V

    iget-object v2, p0, Ljava/util/EnumMap$EnumMapKeySet;->enumMap:Ljava/util/EnumMap;

    invoke-direct {v0, v1, v2}, Ljava/util/EnumMap$EnumMapIterator;-><init>(Ljava/util/MapEntry$Type;Ljava/util/EnumMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 224
    .local p0, "this":Ljava/util/EnumMap$EnumMapKeySet;, "Ljava/util/EnumMap$EnumMapKeySet<TKT;TVT;>;"
    invoke-virtual {p0, p1}, Ljava/util/EnumMap$EnumMapKeySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 225
    iget-object v0, p0, Ljava/util/EnumMap$EnumMapKeySet;->enumMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const/4 v0, 0x1

    .line 228
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public size()I
    .registers 2

    .prologue
    .line 233
    .local p0, "this":Ljava/util/EnumMap$EnumMapKeySet;, "Ljava/util/EnumMap$EnumMapKeySet<TKT;TVT;>;"
    iget-object v0, p0, Ljava/util/EnumMap$EnumMapKeySet;->enumMap:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v0

    return v0
.end method
