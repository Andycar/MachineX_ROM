.class public final Ljava/text/Normalizer;
.super Ljava/lang/Object;
.source "Normalizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/Normalizer$Form;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNormalized(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Z
    .registers 3
    .param p0, "src"    # Ljava/lang/CharSequence;
    .param p1, "form"    # Ljava/text/Normalizer$Form;

    .prologue
    .line 66
    invoke-static {p0, p1}, Llibcore/icu/NativeNormalizer;->isNormalized(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Z

    move-result v0

    return v0
.end method

.method public static normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;
    .registers 3
    .param p0, "src"    # Ljava/lang/CharSequence;
    .param p1, "form"    # Ljava/text/Normalizer$Form;

    .prologue
    .line 78
    invoke-static {p0, p1}, Llibcore/icu/NativeNormalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
