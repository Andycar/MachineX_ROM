.class public final enum Lcom/android/internal/os/BatterySipper$DrainType;
.super Ljava/lang/Enum;
.source "BatterySipper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatterySipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DrainType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/os/BatterySipper$DrainType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum APP:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum CELL:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum FLASHLIGHT:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum PHONE:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum USER:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum WIFI:Lcom/android/internal/os/BatterySipper$DrainType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/os/BatterySipper$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 53
    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    const-string v1, "CELL"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/os/BatterySipper$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 54
    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    const-string v1, "PHONE"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/os/BatterySipper$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->PHONE:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 55
    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/os/BatterySipper$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 56
    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    const-string v1, "BLUETOOTH"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/os/BatterySipper$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 57
    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    const-string v1, "FLASHLIGHT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatterySipper$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->FLASHLIGHT:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 58
    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    const-string v1, "SCREEN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatterySipper$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 59
    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    const-string v1, "APP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatterySipper$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 60
    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    const-string v1, "USER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatterySipper$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 61
    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    const-string v1, "UNACCOUNTED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatterySipper$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 62
    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    const-string v1, "OVERCOUNTED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatterySipper$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 51
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->PHONE:Lcom/android/internal/os/BatterySipper$DrainType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->FLASHLIGHT:Lcom/android/internal/os/BatterySipper$DrainType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->$VALUES:[Lcom/android/internal/os/BatterySipper$DrainType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/os/BatterySipper$DrainType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    const-class v0, Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatterySipper$DrainType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/os/BatterySipper$DrainType;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->$VALUES:[Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v0}, [Lcom/android/internal/os/BatterySipper$DrainType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/os/BatterySipper$DrainType;

    return-object v0
.end method
