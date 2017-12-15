.class public Landroid/graphics/ImageFilterSet;
.super Landroid/graphics/ImageFilter;
.source "ImageFilterSet.java"


# instance fields
.field private mImageFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/ImageFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/graphics/ImageFilter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/ImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    .line 34
    return-void
.end method


# virtual methods
.method public addFilter(Landroid/graphics/ImageFilter;)V
    .registers 3
    .param p1, "filter"    # Landroid/graphics/ImageFilter;

    .prologue
    .line 63
    if-nez p1, :cond_3

    .line 66
    :goto_2
    return-void

    .line 65
    :cond_3
    iget-object v0, p0, Landroid/graphics/ImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public clearFilters()V
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Landroid/graphics/ImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 77
    return-void
.end method

.method public clone()Landroid/graphics/ImageFilter;
    .registers 4

    .prologue
    .line 47
    new-instance v1, Landroid/graphics/ImageFilterSet;

    invoke-direct {v1}, Landroid/graphics/ImageFilterSet;-><init>()V

    .line 48
    .local v1, "imageFilterSet":Landroid/graphics/ImageFilterSet;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v2, p0, Landroid/graphics/ImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_20

    .line 49
    iget-object v2, p0, Landroid/graphics/ImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/ImageFilter;

    invoke-virtual {v2}, Landroid/graphics/ImageFilter;->clone()Landroid/graphics/ImageFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/ImageFilterSet;->addFilter(Landroid/graphics/ImageFilter;)V

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 50
    :cond_20
    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p0}, Landroid/graphics/ImageFilterSet;->clone()Landroid/graphics/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public getFilterAt(I)Landroid/graphics/ImageFilter;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 102
    iget-object v0, p0, Landroid/graphics/ImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_11

    .line 103
    iget-object v0, p0, Landroid/graphics/ImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ImageFilter;

    .line 105
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getFilterCount()I
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Landroid/graphics/ImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
