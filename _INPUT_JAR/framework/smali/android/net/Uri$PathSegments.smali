.class Landroid/net/Uri$PathSegments;
.super Ljava/util/AbstractList;
.source "Uri.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PathSegments"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field static final EMPTY:Landroid/net/Uri$PathSegments;


# instance fields
.field final segments:[Ljava/lang/String;

.field final size:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 973
    new-instance v0, Landroid/net/Uri$PathSegments;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/Uri$PathSegments;-><init>([Ljava/lang/String;I)V

    sput-object v0, Landroid/net/Uri$PathSegments;->EMPTY:Landroid/net/Uri$PathSegments;

    return-void
.end method

.method constructor <init>([Ljava/lang/String;I)V
    .registers 3
    .param p1, "segments"    # [Ljava/lang/String;
    .param p2, "size"    # I

    .prologue
    .line 978
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 979
    iput-object p1, p0, Landroid/net/Uri$PathSegments;->segments:[Ljava/lang/String;

    .line 980
    iput p2, p0, Landroid/net/Uri$PathSegments;->size:I

    .line 981
    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 970
    invoke-virtual {p0, p1}, Landroid/net/Uri$PathSegments;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 984
    iget v0, p0, Landroid/net/Uri$PathSegments;->size:I

    if-lt p1, v0, :cond_a

    .line 985
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 988
    :cond_a
    iget-object v0, p0, Landroid/net/Uri$PathSegments;->segments:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 992
    iget v0, p0, Landroid/net/Uri$PathSegments;->size:I

    return v0
.end method
