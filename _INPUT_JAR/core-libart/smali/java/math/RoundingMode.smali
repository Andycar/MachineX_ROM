.class public final enum Ljava/math/RoundingMode;
.super Ljava/lang/Enum;
.source "RoundingMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/math/RoundingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/math/RoundingMode;

.field public static final enum CEILING:Ljava/math/RoundingMode;

.field public static final enum DOWN:Ljava/math/RoundingMode;

.field public static final enum FLOOR:Ljava/math/RoundingMode;

.field public static final enum HALF_DOWN:Ljava/math/RoundingMode;

.field public static final enum HALF_EVEN:Ljava/math/RoundingMode;

.field public static final enum HALF_UP:Ljava/math/RoundingMode;

.field public static final enum UNNECESSARY:Ljava/math/RoundingMode;

.field public static final enum UP:Ljava/math/RoundingMode;


# instance fields
.field private final bigDecimalRM:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 32
    new-instance v0, Ljava/math/RoundingMode;

    const-string v1, "UP"

    invoke-direct {v0, v1, v4, v4}, Ljava/math/RoundingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    .line 39
    new-instance v0, Ljava/math/RoundingMode;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v5, v5}, Ljava/math/RoundingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 48
    new-instance v0, Ljava/math/RoundingMode;

    const-string v1, "CEILING"

    invoke-direct {v0, v1, v6, v6}, Ljava/math/RoundingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 57
    new-instance v0, Ljava/math/RoundingMode;

    const-string v1, "FLOOR"

    invoke-direct {v0, v1, v7, v7}, Ljava/math/RoundingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 63
    new-instance v0, Ljava/math/RoundingMode;

    const-string v1, "HALF_UP"

    invoke-direct {v0, v1, v8, v8}, Ljava/math/RoundingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 69
    new-instance v0, Ljava/math/RoundingMode;

    const-string v1, "HALF_DOWN"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Ljava/math/RoundingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    .line 75
    new-instance v0, Ljava/math/RoundingMode;

    const-string v1, "HALF_EVEN"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Ljava/math/RoundingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .line 82
    new-instance v0, Ljava/math/RoundingMode;

    const-string v1, "UNNECESSARY"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Ljava/math/RoundingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    .line 24
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/math/RoundingMode;

    sget-object v1, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    aput-object v1, v0, v4

    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    aput-object v1, v0, v5

    sget-object v1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    aput-object v1, v0, v6

    sget-object v1, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    aput-object v1, v0, v7

    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    aput-object v2, v0, v1

    sput-object v0, Ljava/math/RoundingMode;->$VALUES:[Ljava/math/RoundingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "rm"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 89
    iput p3, p0, Ljava/math/RoundingMode;->bigDecimalRM:I

    .line 90
    return-void
.end method

.method public static valueOf(I)Ljava/math/RoundingMode;
    .registers 3
    .param p0, "mode"    # I

    .prologue
    .line 101
    packed-switch p0, :pswitch_data_24

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid rounding mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :pswitch_b
    sget-object v0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 117
    :goto_d
    return-object v0

    .line 105
    :pswitch_e
    sget-object v0, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    goto :goto_d

    .line 107
    :pswitch_11
    sget-object v0, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    goto :goto_d

    .line 109
    :pswitch_14
    sget-object v0, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    goto :goto_d

    .line 111
    :pswitch_17
    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    goto :goto_d

    .line 113
    :pswitch_1a
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    goto :goto_d

    .line 115
    :pswitch_1d
    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    goto :goto_d

    .line 117
    :pswitch_20
    sget-object v0, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    goto :goto_d

    .line 101
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20
        :pswitch_e
        :pswitch_b
        :pswitch_11
        :pswitch_1a
        :pswitch_14
        :pswitch_17
        :pswitch_1d
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/math/RoundingMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Ljava/math/RoundingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/math/RoundingMode;

    return-object v0
.end method

.method public static values()[Ljava/math/RoundingMode;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Ljava/math/RoundingMode;->$VALUES:[Ljava/math/RoundingMode;

    invoke-virtual {v0}, [Ljava/math/RoundingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/math/RoundingMode;

    return-object v0
.end method
