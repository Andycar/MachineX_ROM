.class public final enum Landroid/graphics/Bitmap$ExtendedCompressFormat;
.super Ljava/lang/Enum;
.source "Bitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExtendedCompressFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/graphics/Bitmap$ExtendedCompressFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/Bitmap$ExtendedCompressFormat;

.field public static final enum SPI:Landroid/graphics/Bitmap$ExtendedCompressFormat;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1108
    new-instance v0, Landroid/graphics/Bitmap$ExtendedCompressFormat;

    const-string v1, "SPI"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v3, v2}, Landroid/graphics/Bitmap$ExtendedCompressFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Bitmap$ExtendedCompressFormat;->SPI:Landroid/graphics/Bitmap$ExtendedCompressFormat;

    .line 1107
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/Bitmap$ExtendedCompressFormat;

    sget-object v1, Landroid/graphics/Bitmap$ExtendedCompressFormat;->SPI:Landroid/graphics/Bitmap$ExtendedCompressFormat;

    aput-object v1, v0, v3

    sput-object v0, Landroid/graphics/Bitmap$ExtendedCompressFormat;->$VALUES:[Landroid/graphics/Bitmap$ExtendedCompressFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "nativeInt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 1110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1111
    iput p3, p0, Landroid/graphics/Bitmap$ExtendedCompressFormat;->nativeInt:I

    .line 1112
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$ExtendedCompressFormat;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1107
    const-class v0, Landroid/graphics/Bitmap$ExtendedCompressFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap$ExtendedCompressFormat;

    return-object v0
.end method

.method public static values()[Landroid/graphics/Bitmap$ExtendedCompressFormat;
    .registers 1

    .prologue
    .line 1107
    sget-object v0, Landroid/graphics/Bitmap$ExtendedCompressFormat;->$VALUES:[Landroid/graphics/Bitmap$ExtendedCompressFormat;

    invoke-virtual {v0}, [Landroid/graphics/Bitmap$ExtendedCompressFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Bitmap$ExtendedCompressFormat;

    return-object v0
.end method
