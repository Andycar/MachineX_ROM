.class public Landroid/text/style/TtsSpan$MeasureBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "TtsSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MeasureBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder",
        "<",
        "Landroid/text/style/TtsSpan$MeasureBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 976
    const-string v0, "android.type.measure"

    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    .line 977
    return-void
.end method


# virtual methods
.method public setDenominator(J)Landroid/text/style/TtsSpan$MeasureBuilder;
    .registers 4
    .param p1, "denominator"    # J

    .prologue
    .line 1058
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$MeasureBuilder;->setDenominator(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setDenominator(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;
    .registers 3
    .param p1, "denominator"    # Ljava/lang/String;

    .prologue
    .line 1068
    const-string v0, "android.arg.denominator"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$MeasureBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$MeasureBuilder;

    return-object v0
.end method

.method public setFractionalPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;
    .registers 3
    .param p1, "fractionalPart"    # Ljava/lang/String;

    .prologue
    .line 1027
    const-string v0, "android.arg.fractional_part"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$MeasureBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$MeasureBuilder;

    return-object v0
.end method

.method public setIntegerPart(J)Landroid/text/style/TtsSpan$MeasureBuilder;
    .registers 4
    .param p1, "integerPart"    # J

    .prologue
    .line 1006
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$MeasureBuilder;->setNumber(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;
    .registers 3
    .param p1, "integerPart"    # Ljava/lang/String;

    .prologue
    .line 1017
    const-string v0, "android.arg.integer_part"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$MeasureBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$MeasureBuilder;

    return-object v0
.end method

.method public setNumber(J)Landroid/text/style/TtsSpan$MeasureBuilder;
    .registers 4
    .param p1, "number"    # J

    .prologue
    .line 986
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$MeasureBuilder;->setNumber(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setNumber(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;
    .registers 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 996
    const-string v0, "android.arg.number"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$MeasureBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$MeasureBuilder;

    return-object v0
.end method

.method public setNumerator(J)Landroid/text/style/TtsSpan$MeasureBuilder;
    .registers 4
    .param p1, "numerator"    # J

    .prologue
    .line 1038
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$MeasureBuilder;->setNumerator(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setNumerator(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;
    .registers 3
    .param p1, "numerator"    # Ljava/lang/String;

    .prologue
    .line 1048
    const-string v0, "android.arg.numerator"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$MeasureBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$MeasureBuilder;

    return-object v0
.end method

.method public setUnit(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;
    .registers 3
    .param p1, "unit"    # Ljava/lang/String;

    .prologue
    .line 1078
    const-string v0, "android.arg.unit"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$MeasureBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$MeasureBuilder;

    return-object v0
.end method
