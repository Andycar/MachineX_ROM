.class public Lcom/android/dex/TableOfContents$Section;
.super Ljava/lang/Object;
.source "TableOfContents.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dex/TableOfContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Section"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/dex/TableOfContents$Section;",
        ">;"
    }
.end annotation


# instance fields
.field public byteCount:I

.field public off:I

.field public size:I

.field public final type:S


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput v1, p0, Lcom/android/dex/TableOfContents$Section;->size:I

    .line 214
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dex/TableOfContents$Section;->off:I

    .line 215
    iput v1, p0, Lcom/android/dex/TableOfContents$Section;->byteCount:I

    .line 218
    int-to-short v0, p1

    iput-short v0, p0, Lcom/android/dex/TableOfContents$Section;->type:S

    .line 219
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/dex/TableOfContents$Section;)I
    .registers 4
    .param p1, "section"    # Lcom/android/dex/TableOfContents$Section;

    .prologue
    .line 226
    iget v0, p0, Lcom/android/dex/TableOfContents$Section;->off:I

    iget v1, p1, Lcom/android/dex/TableOfContents$Section;->off:I

    if-eq v0, v1, :cond_10

    .line 227
    iget v0, p0, Lcom/android/dex/TableOfContents$Section;->off:I

    iget v1, p1, Lcom/android/dex/TableOfContents$Section;->off:I

    if-ge v0, v1, :cond_e

    const/4 v0, -0x1

    .line 229
    :goto_d
    return v0

    .line 227
    :cond_e
    const/4 v0, 0x1

    goto :goto_d

    .line 229
    :cond_10
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 211
    check-cast p1, Lcom/android/dex/TableOfContents$Section;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dex/TableOfContents$Section;->compareTo(Lcom/android/dex/TableOfContents$Section;)I

    move-result v0

    return v0
.end method

.method public exists()Z
    .registers 2

    .prologue
    .line 222
    iget v0, p0, Lcom/android/dex/TableOfContents$Section;->size:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 233
    const-string v0, "Section[type=%#x,off=%#x,size=%#x]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-short v3, p0, Lcom/android/dex/TableOfContents$Section;->type:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/dex/TableOfContents$Section;->off:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/dex/TableOfContents$Section;->size:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
