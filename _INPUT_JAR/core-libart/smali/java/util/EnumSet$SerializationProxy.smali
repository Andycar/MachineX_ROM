.class Ljava/util/EnumSet$SerializationProxy;
.super Ljava/lang/Object;
.source "EnumSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializationProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum",
        "<TE;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x507d3db7654cad1L


# instance fields
.field private elementType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field

.field private elements:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 318
    .local p0, "this":Ljava/util/EnumSet$SerializationProxy;, "Ljava/util/EnumSet$SerializationProxy<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/EnumSet$1;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/EnumSet$1;

    .prologue
    .line 318
    .local p0, "this":Ljava/util/EnumSet$SerializationProxy;, "Ljava/util/EnumSet$SerializationProxy<TE;>;"
    invoke-direct {p0}, Ljava/util/EnumSet$SerializationProxy;-><init>()V

    return-void
.end method

.method static synthetic access$102(Ljava/util/EnumSet$SerializationProxy;[Ljava/lang/Enum;)[Ljava/lang/Enum;
    .registers 2
    .param p0, "x0"    # Ljava/util/EnumSet$SerializationProxy;
    .param p1, "x1"    # [Ljava/lang/Enum;

    .prologue
    .line 318
    iput-object p1, p0, Ljava/util/EnumSet$SerializationProxy;->elements:[Ljava/lang/Enum;

    return-object p1
.end method

.method static synthetic access$202(Ljava/util/EnumSet$SerializationProxy;Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2
    .param p0, "x0"    # Ljava/util/EnumSet$SerializationProxy;
    .param p1, "x1"    # Ljava/lang/Class;

    .prologue
    .line 318
    iput-object p1, p0, Ljava/util/EnumSet$SerializationProxy;->elementType:Ljava/lang/Class;

    return-object p1
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 7

    .prologue
    .line 328
    .local p0, "this":Ljava/util/EnumSet$SerializationProxy;, "Ljava/util/EnumSet$SerializationProxy<TE;>;"
    iget-object v5, p0, Ljava/util/EnumSet$SerializationProxy;->elementType:Ljava/lang/Class;

    invoke-static {v5}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    .line 329
    .local v4, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    iget-object v0, p0, Ljava/util/EnumSet$SerializationProxy;->elements:[Ljava/lang/Enum;

    .local v0, "arr$":[Ljava/lang/Enum;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_a
    if-ge v2, v3, :cond_14

    aget-object v1, v0, v2

    .line 330
    .local v1, "e":Ljava/lang/Enum;, "TE;"
    invoke-virtual {v4, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 329
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 332
    .end local v1    # "e":Ljava/lang/Enum;, "TE;"
    :cond_14
    return-object v4
.end method
