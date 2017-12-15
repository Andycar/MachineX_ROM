.class public final enum Landroid/app/wallpaperbackup/Controller$ERR_CODE;
.super Ljava/lang/Enum;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/wallpaperbackup/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ERR_CODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/app/wallpaperbackup/Controller$ERR_CODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/app/wallpaperbackup/Controller$ERR_CODE;

.field public static final enum INVALID_DATA:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

.field public static final enum STORAGE_FULL:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

.field public static final enum SUCCESS:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

.field public static final enum UNKNOWN_ERROR:Landroid/app/wallpaperbackup/Controller$ERR_CODE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 425
    new-instance v0, Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2, v2}, Landroid/app/wallpaperbackup/Controller$ERR_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->SUCCESS:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    new-instance v0, Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    const-string v1, "UNKNOWN_ERROR"

    invoke-direct {v0, v1, v3, v3}, Landroid/app/wallpaperbackup/Controller$ERR_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->UNKNOWN_ERROR:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    new-instance v0, Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    const-string v1, "STORAGE_FULL"

    invoke-direct {v0, v1, v4, v4}, Landroid/app/wallpaperbackup/Controller$ERR_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->STORAGE_FULL:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    new-instance v0, Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    const-string v1, "INVALID_DATA"

    invoke-direct {v0, v1, v5, v5}, Landroid/app/wallpaperbackup/Controller$ERR_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->INVALID_DATA:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    .line 424
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    sget-object v1, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->SUCCESS:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    aput-object v1, v0, v2

    sget-object v1, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->UNKNOWN_ERROR:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    aput-object v1, v0, v3

    sget-object v1, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->STORAGE_FULL:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    aput-object v1, v0, v4

    sget-object v1, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->INVALID_DATA:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    aput-object v1, v0, v5

    sput-object v0, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->$VALUES:[Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .param p3, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 428
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 426
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->value:I

    .line 429
    iput p3, p0, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->value:I

    .line 430
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/app/wallpaperbackup/Controller$ERR_CODE;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 424
    const-class v0, Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    return-object v0
.end method

.method public static values()[Landroid/app/wallpaperbackup/Controller$ERR_CODE;
    .registers 1

    .prologue
    .line 424
    sget-object v0, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->$VALUES:[Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    invoke-virtual {v0}, [Landroid/app/wallpaperbackup/Controller$ERR_CODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .prologue
    .line 436
    iget v0, p0, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->value:I

    return v0
.end method
