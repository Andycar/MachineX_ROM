.class Ljava/util/EnumMap$EnumMapKeySet$1;
.super Ljava/lang/Object;
.source "EnumMap.java"

# interfaces
.implements Ljava/util/MapEntry$Type;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/EnumMap$EnumMapKeySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/MapEntry$Type",
        "<TKT;TKT;TVT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/EnumMap$EnumMapKeySet;


# direct methods
.method constructor <init>(Ljava/util/EnumMap$EnumMapKeySet;)V
    .registers 2

    .prologue
    .line 214
    .local p0, "this":Ljava/util/EnumMap$EnumMapKeySet$1;, "Ljava/util/EnumMap$EnumMapKeySet.1;"
    iput-object p1, p0, Ljava/util/EnumMap$EnumMapKeySet$1;->this$0:Ljava/util/EnumMap$EnumMapKeySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/util/MapEntry;)Ljava/lang/Enum;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/MapEntry",
            "<TKT;TVT;>;)TKT;"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, "this":Ljava/util/EnumMap$EnumMapKeySet$1;, "Ljava/util/EnumMap$EnumMapKeySet.1;"
    .local p1, "entry":Ljava/util/MapEntry;, "Ljava/util/MapEntry<TKT;TVT;>;"
    iget-object v0, p1, Ljava/util/MapEntry;->key:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Enum;

    return-object v0
.end method

.method public bridge synthetic get(Ljava/util/MapEntry;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/util/MapEntry;

    .prologue
    .line 214
    .local p0, "this":Ljava/util/EnumMap$EnumMapKeySet$1;, "Ljava/util/EnumMap$EnumMapKeySet.1;"
    invoke-virtual {p0, p1}, Ljava/util/EnumMap$EnumMapKeySet$1;->get(Ljava/util/MapEntry;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method
