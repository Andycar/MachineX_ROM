.class Ljava/lang/System$SystemEnvironment;
.super Ljava/util/AbstractMap;
.source "System.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/System;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SystemEnvironment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1155
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 1156
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/System$SystemEnvironment;->map:Ljava/util/Map;

    .line 1157
    return-void
.end method

.method private toNonNullString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1176
    if-nez p1, :cond_a

    .line 1177
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "o == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1179
    :cond_a
    check-cast p1, Ljava/lang/String;

    .end local p1    # "o":Ljava/lang/Object;
    return-object p1
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1168
    iget-object v0, p0, Ljava/lang/System$SystemEnvironment;->map:Ljava/util/Map;

    invoke-direct {p0, p1}, Ljava/lang/System$SystemEnvironment;->toNonNullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1172
    iget-object v0, p0, Ljava/lang/System$SystemEnvironment;->map:Ljava/util/Map;

    invoke-direct {p0, p1}, Ljava/lang/System$SystemEnvironment;->toNonNullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1160
    iget-object v0, p0, Ljava/lang/System$SystemEnvironment;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1152
    invoke-virtual {p0, p1}, Ljava/lang/System$SystemEnvironment;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1164
    iget-object v0, p0, Ljava/lang/System$SystemEnvironment;->map:Ljava/util/Map;

    invoke-direct {p0, p1}, Ljava/lang/System$SystemEnvironment;->toNonNullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
