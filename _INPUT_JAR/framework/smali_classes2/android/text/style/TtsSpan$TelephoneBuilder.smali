.class public Landroid/text/style/TtsSpan$TelephoneBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "TtsSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TelephoneBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder",
        "<",
        "Landroid/text/style/TtsSpan$TelephoneBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1278
    const-string v0, "android.type.telephone"

    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    .line 1279
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "numberParts"    # Ljava/lang/String;

    .prologue
    .line 1286
    invoke-direct {p0}, Landroid/text/style/TtsSpan$TelephoneBuilder;-><init>()V

    .line 1287
    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$TelephoneBuilder;->setNumberParts(Ljava/lang/String;)Landroid/text/style/TtsSpan$TelephoneBuilder;

    .line 1288
    return-void
.end method


# virtual methods
.method public setCountryCode(Ljava/lang/String;)Landroid/text/style/TtsSpan$TelephoneBuilder;
    .registers 3
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 1297
    const-string v0, "android.arg.country_code"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$TelephoneBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$TelephoneBuilder;

    return-object v0
.end method

.method public setExtension(Ljava/lang/String;)Landroid/text/style/TtsSpan$TelephoneBuilder;
    .registers 3
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 1316
    const-string v0, "android.arg.extension"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$TelephoneBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$TelephoneBuilder;

    return-object v0
.end method

.method public setNumberParts(Ljava/lang/String;)Landroid/text/style/TtsSpan$TelephoneBuilder;
    .registers 3
    .param p1, "numberParts"    # Ljava/lang/String;

    .prologue
    .line 1307
    const-string v0, "android.arg.number_parts"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$TelephoneBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$TelephoneBuilder;

    return-object v0
.end method
