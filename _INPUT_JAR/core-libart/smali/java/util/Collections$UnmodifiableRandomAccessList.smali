.class Ljava/util/Collections$UnmodifiableRandomAccessList;
.super Ljava/util/Collections$UnmodifiableList;
.source "Collections.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableRandomAccessList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$UnmodifiableList",
        "<TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2348186ae0b7b9b1L


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1003
    .local p0, "this":Ljava/util/Collections$UnmodifiableRandomAccessList;, "Ljava/util/Collections$UnmodifiableRandomAccessList<TE;>;"
    .local p1, "l":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$UnmodifiableList;-><init>(Ljava/util/List;)V

    .line 1004
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1022
    .local p0, "this":Ljava/util/Collections$UnmodifiableRandomAccessList;, "Ljava/util/Collections$UnmodifiableRandomAccessList<TE;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableList;

    iget-object v1, p0, Ljava/util/Collections$UnmodifiableRandomAccessList;->list:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/Collections$UnmodifiableList;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public subList(II)Ljava/util/List;
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1007
    .local p0, "this":Ljava/util/Collections$UnmodifiableRandomAccessList;, "Ljava/util/Collections$UnmodifiableRandomAccessList<TE;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableRandomAccessList;

    iget-object v1, p0, Ljava/util/Collections$UnmodifiableRandomAccessList;->list:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Collections$UnmodifiableRandomAccessList;-><init>(Ljava/util/List;)V

    return-object v0
.end method
