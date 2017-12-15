.class public final enum Landroid/app/wallpaperbackup/Controller$RESULT;
.super Ljava/lang/Enum;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/wallpaperbackup/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RESULT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/app/wallpaperbackup/Controller$RESULT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/app/wallpaperbackup/Controller$RESULT;

.field public static final enum FAIL:Landroid/app/wallpaperbackup/Controller$RESULT;

.field public static final enum OK:Landroid/app/wallpaperbackup/Controller$RESULT;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 406
    new-instance v0, Landroid/app/wallpaperbackup/Controller$RESULT;

    const-string v1, "OK"

    invoke-direct {v0, v1, v2, v2}, Landroid/app/wallpaperbackup/Controller$RESULT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/app/wallpaperbackup/Controller$RESULT;->OK:Landroid/app/wallpaperbackup/Controller$RESULT;

    .line 407
    new-instance v0, Landroid/app/wallpaperbackup/Controller$RESULT;

    const-string v1, "FAIL"

    invoke-direct {v0, v1, v3, v3}, Landroid/app/wallpaperbackup/Controller$RESULT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/app/wallpaperbackup/Controller$RESULT;->FAIL:Landroid/app/wallpaperbackup/Controller$RESULT;

    .line 405
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/app/wallpaperbackup/Controller$RESULT;

    sget-object v1, Landroid/app/wallpaperbackup/Controller$RESULT;->OK:Landroid/app/wallpaperbackup/Controller$RESULT;

    aput-object v1, v0, v2

    sget-object v1, Landroid/app/wallpaperbackup/Controller$RESULT;->FAIL:Landroid/app/wallpaperbackup/Controller$RESULT;

    aput-object v1, v0, v3

    sput-object v0, Landroid/app/wallpaperbackup/Controller$RESULT;->$VALUES:[Landroid/app/wallpaperbackup/Controller$RESULT;

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
    .line 411
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 409
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/wallpaperbackup/Controller$RESULT;->value:I

    .line 412
    iput p3, p0, Landroid/app/wallpaperbackup/Controller$RESULT;->value:I

    .line 413
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/app/wallpaperbackup/Controller$RESULT;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 405
    const-class v0, Landroid/app/wallpaperbackup/Controller$RESULT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/app/wallpaperbackup/Controller$RESULT;

    return-object v0
.end method

.method public static values()[Landroid/app/wallpaperbackup/Controller$RESULT;
    .registers 1

    .prologue
    .line 405
    sget-object v0, Landroid/app/wallpaperbackup/Controller$RESULT;->$VALUES:[Landroid/app/wallpaperbackup/Controller$RESULT;

    invoke-virtual {v0}, [Landroid/app/wallpaperbackup/Controller$RESULT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/wallpaperbackup/Controller$RESULT;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .prologue
    .line 419
    iget v0, p0, Landroid/app/wallpaperbackup/Controller$RESULT;->value:I

    return v0
.end method
