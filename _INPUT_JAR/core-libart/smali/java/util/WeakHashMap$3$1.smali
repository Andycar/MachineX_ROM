.class Ljava/util/WeakHashMap$3$1;
.super Ljava/lang/Object;
.source "WeakHashMap.java"

# interfaces
.implements Ljava/util/WeakHashMap$Entry$Type;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/WeakHashMap$3;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/WeakHashMap$Entry$Type",
        "<TV;TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/WeakHashMap$3;


# direct methods
.method constructor <init>(Ljava/util/WeakHashMap$3;)V
    .registers 2

    .prologue
    .line 433
    .local p0, "this":Ljava/util/WeakHashMap$3$1;, "Ljava/util/WeakHashMap$3.1;"
    iput-object p1, p0, Ljava/util/WeakHashMap$3$1;->this$1:Ljava/util/WeakHashMap$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 435
    .local p0, "this":Ljava/util/WeakHashMap$3$1;, "Ljava/util/WeakHashMap$3.1;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
