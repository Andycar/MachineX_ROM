.class public final enum Landroid/graphics/Bitmap$GLCompressionConfig;
.super Ljava/lang/Enum;
.source "Bitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GLCompressionConfig"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/graphics/Bitmap$GLCompressionConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/Bitmap$GLCompressionConfig;

.field public static final enum ASTC:Landroid/graphics/Bitmap$GLCompressionConfig;

.field public static final enum ETC1:Landroid/graphics/Bitmap$GLCompressionConfig;

.field public static final enum ETC1_ALPHA:Landroid/graphics/Bitmap$GLCompressionConfig;

.field public static final enum ETC2:Landroid/graphics/Bitmap$GLCompressionConfig;

.field public static final enum ETC2_ALPHA:Landroid/graphics/Bitmap$GLCompressionConfig;

.field public static final enum PVRTC2_2:Landroid/graphics/Bitmap$GLCompressionConfig;

.field private static compressedConfigLookup:[Landroid/graphics/Bitmap$GLCompressionConfig;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 533
    new-instance v0, Landroid/graphics/Bitmap$GLCompressionConfig;

    const-string v1, "PVRTC2_2"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v5, v2}, Landroid/graphics/Bitmap$GLCompressionConfig;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Bitmap$GLCompressionConfig;->PVRTC2_2:Landroid/graphics/Bitmap$GLCompressionConfig;

    .line 534
    new-instance v0, Landroid/graphics/Bitmap$GLCompressionConfig;

    const-string v1, "ETC1_ALPHA"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v6, v2}, Landroid/graphics/Bitmap$GLCompressionConfig;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Bitmap$GLCompressionConfig;->ETC1_ALPHA:Landroid/graphics/Bitmap$GLCompressionConfig;

    .line 535
    new-instance v0, Landroid/graphics/Bitmap$GLCompressionConfig;

    const-string v1, "ETC1"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v7, v2}, Landroid/graphics/Bitmap$GLCompressionConfig;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Bitmap$GLCompressionConfig;->ETC1:Landroid/graphics/Bitmap$GLCompressionConfig;

    .line 536
    new-instance v0, Landroid/graphics/Bitmap$GLCompressionConfig;

    const-string v1, "ETC2_ALPHA"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v8, v2}, Landroid/graphics/Bitmap$GLCompressionConfig;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Bitmap$GLCompressionConfig;->ETC2_ALPHA:Landroid/graphics/Bitmap$GLCompressionConfig;

    .line 537
    new-instance v0, Landroid/graphics/Bitmap$GLCompressionConfig;

    const-string v1, "ETC2"

    const/4 v2, 0x4

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/Bitmap$GLCompressionConfig;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Bitmap$GLCompressionConfig;->ETC2:Landroid/graphics/Bitmap$GLCompressionConfig;

    .line 538
    new-instance v0, Landroid/graphics/Bitmap$GLCompressionConfig;

    const-string v1, "ASTC"

    const/4 v2, 0x5

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/Bitmap$GLCompressionConfig;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Bitmap$GLCompressionConfig;->ASTC:Landroid/graphics/Bitmap$GLCompressionConfig;

    .line 531
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/graphics/Bitmap$GLCompressionConfig;

    sget-object v1, Landroid/graphics/Bitmap$GLCompressionConfig;->PVRTC2_2:Landroid/graphics/Bitmap$GLCompressionConfig;

    aput-object v1, v0, v5

    sget-object v1, Landroid/graphics/Bitmap$GLCompressionConfig;->ETC1_ALPHA:Landroid/graphics/Bitmap$GLCompressionConfig;

    aput-object v1, v0, v6

    sget-object v1, Landroid/graphics/Bitmap$GLCompressionConfig;->ETC1:Landroid/graphics/Bitmap$GLCompressionConfig;

    aput-object v1, v0, v7

    sget-object v1, Landroid/graphics/Bitmap$GLCompressionConfig;->ETC2_ALPHA:Landroid/graphics/Bitmap$GLCompressionConfig;

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, Landroid/graphics/Bitmap$GLCompressionConfig;->ETC2:Landroid/graphics/Bitmap$GLCompressionConfig;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/graphics/Bitmap$GLCompressionConfig;->ASTC:Landroid/graphics/Bitmap$GLCompressionConfig;

    aput-object v2, v0, v1

    sput-object v0, Landroid/graphics/Bitmap$GLCompressionConfig;->$VALUES:[Landroid/graphics/Bitmap$GLCompressionConfig;

    .line 548
    const/16 v0, 0xe

    new-array v0, v0, [Landroid/graphics/Bitmap$GLCompressionConfig;

    aput-object v4, v0, v5

    aput-object v4, v0, v6

    aput-object v4, v0, v7

    aput-object v4, v0, v8

    const/4 v1, 0x4

    aput-object v4, v0, v1

    const/4 v1, 0x5

    aput-object v4, v0, v1

    const/4 v1, 0x6

    aput-object v4, v0, v1

    const/4 v1, 0x7

    aput-object v4, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/graphics/Bitmap$GLCompressionConfig;->PVRTC2_2:Landroid/graphics/Bitmap$GLCompressionConfig;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/graphics/Bitmap$GLCompressionConfig;->ETC1_ALPHA:Landroid/graphics/Bitmap$GLCompressionConfig;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/graphics/Bitmap$GLCompressionConfig;->ETC1:Landroid/graphics/Bitmap$GLCompressionConfig;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroid/graphics/Bitmap$GLCompressionConfig;->ETC2_ALPHA:Landroid/graphics/Bitmap$GLCompressionConfig;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Landroid/graphics/Bitmap$GLCompressionConfig;->ETC2:Landroid/graphics/Bitmap$GLCompressionConfig;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Landroid/graphics/Bitmap$GLCompressionConfig;->ASTC:Landroid/graphics/Bitmap$GLCompressionConfig;

    aput-object v2, v0, v1

    sput-object v0, Landroid/graphics/Bitmap$GLCompressionConfig;->compressedConfigLookup:[Landroid/graphics/Bitmap$GLCompressionConfig;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "ni"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 543
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 544
    iput p3, p0, Landroid/graphics/Bitmap$GLCompressionConfig;->nativeInt:I

    .line 545
    return-void
.end method

.method static nativeToConfig(I)Landroid/graphics/Bitmap$GLCompressionConfig;
    .registers 2
    .param p0, "nativeConfig"    # I

    .prologue
    .line 553
    sget-object v0, Landroid/graphics/Bitmap$GLCompressionConfig;->compressedConfigLookup:[Landroid/graphics/Bitmap$GLCompressionConfig;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$GLCompressionConfig;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 531
    const-class v0, Landroid/graphics/Bitmap$GLCompressionConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap$GLCompressionConfig;

    return-object v0
.end method

.method public static values()[Landroid/graphics/Bitmap$GLCompressionConfig;
    .registers 1

    .prologue
    .line 531
    sget-object v0, Landroid/graphics/Bitmap$GLCompressionConfig;->$VALUES:[Landroid/graphics/Bitmap$GLCompressionConfig;

    invoke-virtual {v0}, [Landroid/graphics/Bitmap$GLCompressionConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Bitmap$GLCompressionConfig;

    return-object v0
.end method
