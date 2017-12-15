.class final Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
.super Ljava/lang/Object;
.source "PointerLocationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/PointerLocationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FasterStringBuilder"
.end annotation


# instance fields
.field private mChars:[C

.field private mLength:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 776
    const/16 v0, 0x40

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    .line 777
    return-void
.end method

.method private reserve(I)I
    .registers 10
    .param p1, "length"    # I

    .prologue
    const/4 v7, 0x0

    .line 865
    iget v5, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    .line 866
    .local v5, "oldLength":I
    iget v6, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    add-int v2, v6, p1

    .line 867
    .local v2, "newLength":I
    iget-object v4, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    .line 868
    .local v4, "oldChars":[C
    array-length v3, v4

    .line 869
    .local v3, "oldCapacity":I
    if-le v2, v3, :cond_15

    .line 870
    mul-int/lit8 v0, v3, 0x2

    .line 871
    .local v0, "newCapacity":I
    new-array v1, v0, [C

    .line 872
    .local v1, "newChars":[C
    invoke-static {v4, v7, v1, v7, v5}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 873
    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    .line 875
    .end local v0    # "newCapacity":I
    .end local v1    # "newChars":[C
    :cond_15
    return v5
.end method


# virtual methods
.method public append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .registers 9
    .param p1, "value"    # F
    .param p2, "precision"    # I

    .prologue
    .line 841
    const/4 v1, 0x1

    .line 842
    .local v1, "scale":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, p2, :cond_9

    .line 843
    mul-int/lit8 v1, v1, 0xa

    .line 842
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 845
    :cond_9
    int-to-float v2, v1

    mul-float/2addr v2, p1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    int-to-double v4, v1

    div-double/2addr v2, v4

    double-to-float p1, v2

    .line 847
    float-to-int v2, p1

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 849
    if-eqz p2, :cond_30

    .line 850
    const-string v2, "."

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 851
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 852
    float-to-double v2, p1

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float p1, v2

    .line 853
    int-to-float v2, v1

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {p0, v2, p2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(II)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 856
    :cond_30
    return-object p0
.end method

.method public append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 793
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(II)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(II)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .registers 12
    .param p1, "value"    # I
    .param p2, "zeroPadWidth"    # I

    .prologue
    const/16 v8, 0x30

    .line 797
    if-gez p1, :cond_10

    const/4 v5, 0x1

    .line 798
    .local v5, "negative":Z
    :goto_5
    if-eqz v5, :cond_12

    .line 799
    neg-int p1, p1

    .line 800
    if-gez p1, :cond_12

    .line 801
    const-string v7, "-2147483648"

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 837
    :goto_f
    return-object p0

    .line 797
    .end local v5    # "negative":Z
    :cond_10
    const/4 v5, 0x0

    goto :goto_5

    .line 806
    .restart local v5    # "negative":Z
    :cond_12
    const/16 v7, 0xb

    invoke-direct {p0, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->reserve(I)I

    move-result v3

    .line 807
    .local v3, "index":I
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    .line 809
    .local v0, "chars":[C
    if-nez p1, :cond_27

    .line 810
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .local v4, "index":I
    aput-char v8, v0, v3

    .line 811
    iget v7, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    goto :goto_f

    .line 815
    .end local v4    # "index":I
    .restart local v3    # "index":I
    :cond_27
    if-eqz v5, :cond_30

    .line 816
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    const/16 v7, 0x2d

    aput-char v7, v0, v3

    move v3, v4

    .line 819
    .end local v4    # "index":I
    .restart local v3    # "index":I
    :cond_30
    const v2, 0x3b9aca00

    .line 820
    .local v2, "divisor":I
    const/16 v6, 0xa

    .local v6, "numberWidth":I
    move v4, v3

    .line 821
    .end local v3    # "index":I
    .restart local v4    # "index":I
    :cond_36
    :goto_36
    if-ge p1, v2, :cond_44

    .line 822
    div-int/lit8 v2, v2, 0xa

    .line 823
    add-int/lit8 v6, v6, -0x1

    .line 824
    if-ge v6, p2, :cond_36

    .line 825
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    aput-char v8, v0, v4

    move v4, v3

    .end local v3    # "index":I
    .restart local v4    # "index":I
    goto :goto_36

    :cond_44
    move v3, v4

    .line 830
    .end local v4    # "index":I
    .restart local v3    # "index":I
    div-int v1, p1, v2

    .line 831
    .local v1, "digit":I
    mul-int v7, v1, v2

    sub-int/2addr p1, v7

    .line 832
    div-int/lit8 v2, v2, 0xa

    .line 833
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    add-int/lit8 v7, v1, 0x30

    int-to-char v7, v7

    aput-char v7, v0, v3

    .line 834
    if-nez v2, :cond_44

    .line 836
    iput v4, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    goto :goto_f
.end method

.method public append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 785
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 786
    .local v1, "valueLength":I
    invoke-direct {p0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->reserve(I)I

    move-result v0

    .line 787
    .local v0, "index":I
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    invoke-virtual {p1, v2, v1, v3, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 788
    iget v2, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    .line 789
    return-object p0
.end method

.method public clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .registers 2

    .prologue
    .line 780
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    .line 781
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 861
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
