.class Ljava/util/IdentityHashMap$1$1;
.super Ljava/lang/Object;
.source "IdentityHashMap.java"

# interfaces
.implements Ljava/util/MapEntry$Type;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/IdentityHashMap$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/MapEntry$Type",
        "<TK;TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/IdentityHashMap$1;


# direct methods
.method constructor <init>(Ljava/util/IdentityHashMap$1;)V
    .registers 2

    .prologue
    .line 639
    .local p0, "this":Ljava/util/IdentityHashMap$1$1;, "Ljava/util/IdentityHashMap$1.1;"
    iput-object p1, p0, Ljava/util/IdentityHashMap$1$1;->this$1:Ljava/util/IdentityHashMap$1;

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
            "<TK;TV;>;)TK;"
        }
    .end annotation

    .prologue
    .line 641
    .local p0, "this":Ljava/util/IdentityHashMap$1$1;, "Ljava/util/IdentityHashMap$1.1;"
    .local p1, "entry":Ljava/util/MapEntry;, "Ljava/util/MapEntry<TK;TV;>;"
    iget-object v0, p1, Ljava/util/MapEntry;->key:Ljava/lang/Object;

    return-object v0
.end method
