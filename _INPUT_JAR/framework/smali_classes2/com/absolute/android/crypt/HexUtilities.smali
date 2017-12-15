.class public Lcom/absolute/android/crypt/HexUtilities;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 74
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/absolute/android/crypt/HexUtilities;->a:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static EncodeBytesAsHexString([B)Ljava/lang/String;
    .registers 5

    .prologue
    .line 64
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 65
    if-eqz p0, :cond_26

    .line 66
    const/4 v0, 0x0

    :goto_8
    array-length v2, p0

    if-ge v0, v2, :cond_26

    .line 67
    sget-object v2, Lcom/absolute/android/crypt/HexUtilities;->a:[C

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 68
    sget-object v2, Lcom/absolute/android/crypt/HexUtilities;->a:[C

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 71
    :cond_26
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetBytesFromHexString(Ljava/lang/String;)[B
    .registers 5

    .prologue
    .line 40
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_12

    .line 41
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GetBytesFromHexString"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    .line 46
    const/4 v0, 0x0

    :goto_1b
    array-length v2, v1

    if-ge v0, v2, :cond_34

    .line 47
    mul-int/lit8 v2, v0, 0x2

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 48
    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    move-result v2

    .line 49
    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 52
    :cond_34
    return-object v1
.end method
