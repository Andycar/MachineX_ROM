.class public Ljava/util/UnsafeArrayList;
.super Ljava/util/AbstractList;
.source "UnsafeArrayList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final elementType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .registers 4
    .param p2, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Ljava/util/UnsafeArrayList;, "Ljava/util/UnsafeArrayList<TT;>;"
    .local p1, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 32
    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/UnsafeArrayList;->array:[Ljava/lang/Object;

    .line 33
    iput-object p1, p0, Ljava/util/UnsafeArrayList;->elementType:Ljava/lang/Class;

    .line 34
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/UnsafeArrayList;, "Ljava/util/UnsafeArrayList<TT;>;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    .line 37
    iget v1, p0, Ljava/util/UnsafeArrayList;->size:I

    iget-object v2, p0, Ljava/util/UnsafeArrayList;->array:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v1, v2, :cond_20

    .line 38
    iget-object v1, p0, Ljava/util/UnsafeArrayList;->elementType:Ljava/lang/Class;

    iget v2, p0, Ljava/util/UnsafeArrayList;->size:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 39
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    iget-object v1, p0, Ljava/util/UnsafeArrayList;->array:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/UnsafeArrayList;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    iput-object v0, p0, Ljava/util/UnsafeArrayList;->array:[Ljava/lang/Object;

    .line 42
    .end local v0    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_20
    iget-object v1, p0, Ljava/util/UnsafeArrayList;->array:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/UnsafeArrayList;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/util/UnsafeArrayList;->size:I

    aput-object p1, v1, v2

    .line 43
    iget v1, p0, Ljava/util/UnsafeArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/UnsafeArrayList;->modCount:I

    .line 44
    const/4 v1, 0x1

    return v1
.end method

.method public array()[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Ljava/util/UnsafeArrayList;, "Ljava/util/UnsafeArrayList<TT;>;"
    iget-object v0, p0, Ljava/util/UnsafeArrayList;->array:[Ljava/lang/Object;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Ljava/util/UnsafeArrayList;, "Ljava/util/UnsafeArrayList<TT;>;"
    iget-object v0, p0, Ljava/util/UnsafeArrayList;->array:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 56
    .local p0, "this":Ljava/util/UnsafeArrayList;, "Ljava/util/UnsafeArrayList<TT;>;"
    iget v0, p0, Ljava/util/UnsafeArrayList;->size:I

    return v0
.end method
