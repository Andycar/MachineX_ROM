.class public Landroid/text/style/TtsSpan$MoneyBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "TtsSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MoneyBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder",
        "<",
        "Landroid/text/style/TtsSpan$MoneyBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1217
    const-string v0, "android.type.money"

    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    .line 1218
    return-void
.end method


# virtual methods
.method public setCurrency(Ljava/lang/String;)Landroid/text/style/TtsSpan$MoneyBuilder;
    .registers 3
    .param p1, "currency"    # Ljava/lang/String;

    .prologue
    .line 1255
    const-string v0, "android.arg.money"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$MoneyBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$MoneyBuilder;

    return-object v0
.end method

.method public setFractionalPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$MoneyBuilder;
    .registers 3
    .param p1, "fractionalPart"    # Ljava/lang/String;

    .prologue
    .line 1246
    const-string v0, "android.arg.fractional_part"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$MoneyBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$MoneyBuilder;

    return-object v0
.end method

.method public setIntegerPart(J)Landroid/text/style/TtsSpan$MoneyBuilder;
    .registers 4
    .param p1, "integerPart"    # J

    .prologue
    .line 1227
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$MoneyBuilder;->setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$MoneyBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$MoneyBuilder;
    .registers 3
    .param p1, "integerPart"    # Ljava/lang/String;

    .prologue
    .line 1237
    const-string v0, "android.arg.integer_part"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$MoneyBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$MoneyBuilder;

    return-object v0
.end method

.method public setQuantity(Ljava/lang/String;)Landroid/text/style/TtsSpan$MoneyBuilder;
    .registers 3
    .param p1, "quantity"    # Ljava/lang/String;

    .prologue
    .line 1264
    const-string v0, "android.arg.quantity"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$MoneyBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$MoneyBuilder;

    return-object v0
.end method
