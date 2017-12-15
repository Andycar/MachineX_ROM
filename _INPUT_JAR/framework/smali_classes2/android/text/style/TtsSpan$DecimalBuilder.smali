.class public Landroid/text/style/TtsSpan$DecimalBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "TtsSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecimalBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder",
        "<",
        "Landroid/text/style/TtsSpan$DecimalBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 785
    const-string v0, "android.type.decimal"

    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    .line 786
    return-void
.end method

.method public constructor <init>(DII)V
    .registers 6
    .param p1, "number"    # D
    .param p3, "minimumFractionDigits"    # I
    .param p4, "maximumFractionDigits"    # I

    .prologue
    .line 796
    invoke-direct {p0}, Landroid/text/style/TtsSpan$DecimalBuilder;-><init>()V

    .line 797
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/style/TtsSpan$DecimalBuilder;->setArgumentsFromDouble(DII)Landroid/text/style/TtsSpan$DecimalBuilder;

    .line 800
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "integerPart"    # Ljava/lang/String;
    .param p2, "fractionalPart"    # Ljava/lang/String;

    .prologue
    .line 807
    invoke-direct {p0}, Landroid/text/style/TtsSpan$DecimalBuilder;-><init>()V

    .line 808
    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$DecimalBuilder;->setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$DecimalBuilder;

    .line 809
    invoke-virtual {p0, p2}, Landroid/text/style/TtsSpan$DecimalBuilder;->setFractionalPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$DecimalBuilder;

    .line 810
    return-void
.end method


# virtual methods
.method public setArgumentsFromDouble(DII)Landroid/text/style/TtsSpan$DecimalBuilder;
    .registers 10
    .param p1, "number"    # D
    .param p3, "minimumFractionDigits"    # I
    .param p4, "maximumFractionDigits"    # I

    .prologue
    const/4 v4, 0x0

    .line 830
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 831
    .local v0, "formatter":Ljava/text/NumberFormat;
    invoke-virtual {v0, p4}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 832
    invoke-virtual {v0, p4}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 833
    invoke-virtual {v0, v4}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 834
    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    .line 837
    .local v2, "str":Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 838
    .local v1, "i":I
    if-ltz v1, :cond_2d

    .line 839
    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/text/style/TtsSpan$DecimalBuilder;->setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$DecimalBuilder;

    .line 840
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/text/style/TtsSpan$DecimalBuilder;->setFractionalPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$DecimalBuilder;

    .line 844
    :goto_2c
    return-object p0

    .line 842
    :cond_2d
    invoke-virtual {p0, v2}, Landroid/text/style/TtsSpan$DecimalBuilder;->setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$DecimalBuilder;

    goto :goto_2c
.end method

.method public setFractionalPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$DecimalBuilder;
    .registers 3
    .param p1, "fractionalPart"    # Ljava/lang/String;

    .prologue
    .line 873
    const-string v0, "android.arg.fractional_part"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$DecimalBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$DecimalBuilder;

    return-object v0
.end method

.method public setIntegerPart(J)Landroid/text/style/TtsSpan$DecimalBuilder;
    .registers 4
    .param p1, "integerPart"    # J

    .prologue
    .line 854
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$DecimalBuilder;->setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$DecimalBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$DecimalBuilder;
    .registers 3
    .param p1, "integerPart"    # Ljava/lang/String;

    .prologue
    .line 864
    const-string v0, "android.arg.integer_part"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$DecimalBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$DecimalBuilder;

    return-object v0
.end method
