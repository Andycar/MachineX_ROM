.class Ljava/util/EnumMap$EnumMapValueCollection$1;
.super Ljava/lang/Object;
.source "EnumMap.java"

# interfaces
.implements Ljava/util/MapEntry$Type;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/EnumMap$EnumMapValueCollection;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/MapEntry$Type",
        "<TVT;TKT;TVT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/EnumMap$EnumMapValueCollection;


# direct methods
.method constructor <init>(Ljava/util/EnumMap$EnumMapValueCollection;)V
    .registers 2

    .prologue
    .line 259
    .local p0, "this":Ljava/util/EnumMap$EnumMapValueCollection$1;, "Ljava/util/EnumMap$EnumMapValueCollection.1;"
    iput-object p1, p0, Ljava/util/EnumMap$EnumMapValueCollection$1;->this$0:Ljava/util/EnumMap$EnumMapValueCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/util/MapEntry;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/MapEntry",
            "<TKT;TVT;>;)TVT;"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, "this":Ljava/util/EnumMap$EnumMapValueCollection$1;, "Ljava/util/EnumMap$EnumMapValueCollection.1;"
    .local p1, "entry":Ljava/util/MapEntry;, "Ljava/util/MapEntry<TKT;TVT;>;"
    iget-object v0, p1, Ljava/util/MapEntry;->value:Ljava/lang/Object;

    return-object v0
.end method
