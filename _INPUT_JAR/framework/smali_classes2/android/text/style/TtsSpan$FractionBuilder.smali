.class public Landroid/text/style/TtsSpan$FractionBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "TtsSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FractionBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder",
        "<",
        "Landroid/text/style/TtsSpan$FractionBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 888
    const-string v0, "android.type.fraction"

    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    .line 889
    return-void
.end method

.method public constructor <init>(JJJ)V
    .registers 8
    .param p1, "integerPart"    # J
    .param p3, "numerator"    # J
    .param p5, "denominator"    # J

    .prologue
    .line 899
    invoke-direct {p0}, Landroid/text/style/TtsSpan$FractionBuilder;-><init>()V

    .line 900
    invoke-virtual {p0, p1, p2}, Landroid/text/style/TtsSpan$FractionBuilder;->setIntegerPart(J)Landroid/text/style/TtsSpan$FractionBuilder;

    .line 901
    invoke-virtual {p0, p3, p4}, Landroid/text/style/TtsSpan$FractionBuilder;->setNumerator(J)Landroid/text/style/TtsSpan$FractionBuilder;

    .line 902
    invoke-virtual {p0, p5, p6}, Landroid/text/style/TtsSpan$FractionBuilder;->setDenominator(J)Landroid/text/style/TtsSpan$FractionBuilder;

    .line 903
    return-void
.end method


# virtual methods
.method public setDenominator(J)Landroid/text/style/TtsSpan$FractionBuilder;
    .registers 4
    .param p1, "denominator"    # J

    .prologue
    .line 952
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$FractionBuilder;->setDenominator(Ljava/lang/String;)Landroid/text/style/TtsSpan$FractionBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setDenominator(Ljava/lang/String;)Landroid/text/style/TtsSpan$FractionBuilder;
    .registers 3
    .param p1, "denominator"    # Ljava/lang/String;

    .prologue
    .line 962
    const-string v0, "android.arg.denominator"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$FractionBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$FractionBuilder;

    return-object v0
.end method

.method public setIntegerPart(J)Landroid/text/style/TtsSpan$FractionBuilder;
    .registers 4
    .param p1, "integerPart"    # J

    .prologue
    .line 912
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$FractionBuilder;->setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$FractionBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$FractionBuilder;
    .registers 3
    .param p1, "integerPart"    # Ljava/lang/String;

    .prologue
    .line 922
    const-string v0, "android.arg.integer_part"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$FractionBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$FractionBuilder;

    return-object v0
.end method

.method public setNumerator(J)Landroid/text/style/TtsSpan$FractionBuilder;
    .registers 4
    .param p1, "numerator"    # J

    .prologue
    .line 932
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$FractionBuilder;->setNumerator(Ljava/lang/String;)Landroid/text/style/TtsSpan$FractionBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setNumerator(Ljava/lang/String;)Landroid/text/style/TtsSpan$FractionBuilder;
    .registers 3
    .param p1, "numerator"    # Ljava/lang/String;

    .prologue
    .line 942
    const-string v0, "android.arg.numerator"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$FractionBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$FractionBuilder;

    return-object v0
.end method
