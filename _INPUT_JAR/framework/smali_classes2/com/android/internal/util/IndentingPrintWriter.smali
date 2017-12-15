.class public Lcom/android/internal/util/IndentingPrintWriter;
.super Ljava/io/PrintWriter;
.source "IndentingPrintWriter.java"


# instance fields
.field private mCurrentIndent:[C

.field private mCurrentLength:I

.field private mEmptyLine:Z

.field private mIndentBuilder:Ljava/lang/StringBuilder;

.field private final mSingleIndent:Ljava/lang/String;

.field private final mWrapLength:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 4
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "singleIndent"    # Ljava/lang/String;

    .prologue
    .line 48
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;I)V
    .registers 5
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "singleIndent"    # Ljava/lang/String;
    .param p3, "wrapLength"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    .line 53
    iput-object p2, p0, Lcom/android/internal/util/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    .line 54
    iput p3, p0, Lcom/android/internal/util/IndentingPrintWriter;->mWrapLength:I

    .line 55
    return-void
.end method

.method private maybeWriteIndent()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 120
    iget-boolean v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    if-eqz v0, :cond_27

    .line 121
    iput-boolean v2, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    .line 122
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_27

    .line 123
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    if-nez v0, :cond_1f

    .line 124
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    .line 126
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    iget-object v1, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    array-length v1, v1

    invoke-super {p0, v0, v2, v1}, Ljava/io/PrintWriter;->write([CII)V

    .line 129
    :cond_27
    return-void
.end method


# virtual methods
.method public decreaseIndent()V
    .registers 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/util/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    .line 65
    return-void
.end method

.method public increaseIndent()V
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/util/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    .line 60
    return-void
.end method

.method public printHexPair(Ljava/lang/String;I)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public printPair(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public write([CII)V
    .registers 15
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0xa

    const/4 v8, 0x1

    .line 77
    iget-object v6, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 78
    .local v2, "indentLength":I
    add-int v0, p2, p3

    .line 79
    .local v0, "bufferEnd":I
    move v5, p2

    .line 80
    .local v5, "lineStart":I
    move v3, p2

    .local v3, "lineEnd":I
    move v4, v3

    .line 83
    .end local v3    # "lineEnd":I
    .local v4, "lineEnd":I
    :goto_f
    if-ge v4, v0, :cond_55

    .line 84
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "lineEnd":I
    .restart local v3    # "lineEnd":I
    aget-char v1, p1, v4

    .line 85
    .local v1, "ch":C
    iget v6, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    .line 86
    if-ne v1, v9, :cond_2a

    .line 87
    invoke-direct {p0}, Lcom/android/internal/util/IndentingPrintWriter;->maybeWriteIndent()V

    .line 88
    sub-int v6, v3, v5

    invoke-super {p0, p1, v5, v6}, Ljava/io/PrintWriter;->write([CII)V

    .line 89
    move v5, v3

    .line 90
    iput-boolean v8, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    .line 91
    iput v10, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    .line 95
    :cond_2a
    iget v6, p0, Lcom/android/internal/util/IndentingPrintWriter;->mWrapLength:I

    if-lez v6, :cond_42

    iget v6, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    iget v7, p0, Lcom/android/internal/util/IndentingPrintWriter;->mWrapLength:I

    sub-int/2addr v7, v2

    if-lt v6, v7, :cond_42

    .line 96
    iget-boolean v6, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    if-nez v6, :cond_44

    .line 98
    invoke-super {p0, v9}, Ljava/io/PrintWriter;->write(I)V

    .line 99
    iput-boolean v8, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    .line 100
    sub-int v6, v3, v5

    iput v6, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    :cond_42
    :goto_42
    move v4, v3

    .line 111
    .end local v3    # "lineEnd":I
    .restart local v4    # "lineEnd":I
    goto :goto_f

    .line 103
    .end local v4    # "lineEnd":I
    .restart local v3    # "lineEnd":I
    :cond_44
    invoke-direct {p0}, Lcom/android/internal/util/IndentingPrintWriter;->maybeWriteIndent()V

    .line 104
    sub-int v6, v3, v5

    invoke-super {p0, p1, v5, v6}, Ljava/io/PrintWriter;->write([CII)V

    .line 105
    invoke-super {p0, v9}, Ljava/io/PrintWriter;->write(I)V

    .line 106
    iput-boolean v8, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    .line 107
    move v5, v3

    .line 108
    iput v10, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    goto :goto_42

    .line 113
    .end local v1    # "ch":C
    .end local v3    # "lineEnd":I
    .restart local v4    # "lineEnd":I
    :cond_55
    if-eq v5, v4, :cond_5f

    .line 114
    invoke-direct {p0}, Lcom/android/internal/util/IndentingPrintWriter;->maybeWriteIndent()V

    .line 115
    sub-int v6, v4, v5

    invoke-super {p0, p1, v5, v6}, Ljava/io/PrintWriter;->write([CII)V

    .line 117
    :cond_5f
    return-void
.end method
