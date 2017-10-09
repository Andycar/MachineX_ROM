.class public final Ljava/lang/Byte;
.super Ljava/lang/Number;
.source "Byte.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation

.annotation build Ljava/lang/FindBugsSuppressWarnings;
    value = {
        "DM_NUMBER_CTOR"
    }
.end annotation


# static fields
.field public static final MAX_VALUE:B = 0x7ft

.field public static final MIN_VALUE:B = -0x80t

.field public static final SIZE:I = 0x8

.field public static final TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALUES:[Ljava/lang/Byte;

.field private static final serialVersionUID:J = -0x63b19f7b11af0ae4L


# instance fields
.field private final value:B


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 57
    const-class v1, [B

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 305
    const/16 v1, 0x100

    new-array v1, v1, [Ljava/lang/Byte;

    sput-object v1, Ljava/lang/Byte;->VALUES:[Ljava/lang/Byte;

    .line 308
    const/16 v0, -0x80

    .local v0, "i":I
    :goto_10
    const/16 v1, 0x80

    if-ge v0, v1, :cond_23

    .line 309
    sget-object v1, Ljava/lang/Byte;->VALUES:[Ljava/lang/Byte;

    add-int/lit16 v2, v0, 0x80

    new-instance v3, Ljava/lang/Byte;

    int-to-byte v4, v0

    invoke-direct {v3, v4}, Ljava/lang/Byte;-><init>(B)V

    aput-object v3, v1, v2

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 311
    :cond_23
    return-void
.end method

.method public constructor <init>(B)V
    .registers 2
    .param p1, "value"    # B

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 69
    iput-byte p1, p0, Ljava/lang/Byte;->value:B

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    invoke-direct {p0, v0}, Ljava/lang/Byte;-><init>(B)V

    .line 83
    return-void
.end method

.method public static compare(BB)I
    .registers 3
    .param p0, "lhs"    # B
    .param p1, "rhs"    # B

    .prologue
    .line 118
    if-le p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    if-ge p0, p1, :cond_8

    const/4 v0, -0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/Byte;
    .registers 6
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 135
    .local v0, "intValue":I
    int-to-byte v1, v0

    .line 136
    .local v1, "result":B
    if-ne v1, v0, :cond_10

    .line 137
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    return-object v2

    .line 139
    :cond_10
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Value out of range for byte: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static parseByte(Ljava/lang/String;)B
    .registers 2
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 194
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v0

    return v0
.end method

.method public static parseByte(Ljava/lang/String;I)B
    .registers 7
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 214
    .local v0, "intValue":I
    int-to-byte v1, v0

    .line 215
    .local v1, "result":B
    if-ne v1, v0, :cond_8

    .line 216
    return v1

    .line 218
    :cond_8
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Value out of range for byte: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static toHexString(BZ)Ljava/lang/String;
    .registers 3
    .param p0, "b"    # B
    .param p1, "upperCase"    # Z

    .prologue
    .line 236
    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->byteToHexString(BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(B)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # B

    .prologue
    .line 248
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(B)Ljava/lang/Byte;
    .registers 3
    .param p0, "b"    # B

    .prologue
    .line 299
    sget-object v0, Ljava/lang/Byte;->VALUES:[Ljava/lang/Byte;

    add-int/lit16 v1, p0, 0x80

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Byte;
    .registers 2
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 263
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Ljava/lang/Byte;
    .registers 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-static {p0, p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .registers 2

    .prologue
    .line 92
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    return v0
.end method

.method public compareTo(Ljava/lang/Byte;)I
    .registers 4
    .param p1, "object"    # Ljava/lang/Byte;

    .prologue
    .line 109
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    iget-byte v1, p1, Ljava/lang/Byte;->value:B

    invoke-static {v0, v1}, Ljava/lang/Byte;->compare(BB)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 25
    check-cast p1, Ljava/lang/Byte;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/lang/Byte;->compareTo(Ljava/lang/Byte;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .registers 3

    .prologue
    .line 144
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    int-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;
    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "RC_REF_COMPARISON"
        }
    .end annotation

    .prologue
    .line 160
    if-eq p1, p0, :cond_e

    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_10

    check-cast p1, Ljava/lang/Byte;

    .end local p1    # "object":Ljava/lang/Object;
    iget-byte v0, p1, Ljava/lang/Byte;->value:B

    iget-byte v1, p0, Ljava/lang/Byte;->value:B

    if-ne v0, v1, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public floatValue()F
    .registers 2

    .prologue
    .line 165
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    int-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 170
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    return v0
.end method

.method public intValue()I
    .registers 2

    .prologue
    .line 175
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    return v0
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 180
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    int-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .registers 2

    .prologue
    .line 223
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 228
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
