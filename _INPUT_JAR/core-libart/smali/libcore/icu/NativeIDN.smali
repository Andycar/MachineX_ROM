.class public final Llibcore/icu/NativeIDN;
.super Ljava/lang/Object;
.source "NativeIDN.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convert(Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .param p2, "toAscii"    # Z

    .prologue
    .line 36
    if-nez p0, :cond_a

    .line 37
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "s == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_a
    invoke-static {p0, p1, p2}, Llibcore/icu/NativeIDN;->convertImpl(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native convertImpl(Ljava/lang/String;IZ)Ljava/lang/String;
.end method

.method public static toASCII(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .prologue
    .line 21
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Llibcore/icu/NativeIDN;->convert(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toUnicode(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .prologue
    .line 26
    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0, p1, v1}, Llibcore/icu/NativeIDN;->convert(Ljava/lang/String;IZ)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object p0

    .line 31
    .end local p0    # "s":Ljava/lang/String;
    :goto_5
    return-object p0

    .line 27
    .restart local p0    # "s":Ljava/lang/String;
    :catch_6
    move-exception v0

    .line 31
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_5
.end method
