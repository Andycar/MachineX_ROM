.class final Ljava/io/ObjectStreamClass$5;
.super Ljava/lang/ThreadLocal;
.source "ObjectStreamClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/io/ObjectStreamClass;->getCache()Ljava/util/WeakHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/util/WeakHashMap",
        "<",
        "Ljava/lang/Class",
        "<*>;",
        "Ljava/io/ObjectStreamClass;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1103
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1103
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass$5;->initialValue()Ljava/util/WeakHashMap;

    move-result-object v0

    return-object v0
.end method

.method public initialValue()Ljava/util/WeakHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/io/ObjectStreamClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1105
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    return-object v0
.end method
