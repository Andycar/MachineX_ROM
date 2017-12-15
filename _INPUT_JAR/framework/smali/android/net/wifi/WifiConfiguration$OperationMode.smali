.class public final enum Landroid/net/wifi/WifiConfiguration$OperationMode;
.super Ljava/lang/Enum;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OperationMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/wifi/WifiConfiguration$OperationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/wifi/WifiConfiguration$OperationMode;

.field public static final enum IBSS:Landroid/net/wifi/WifiConfiguration$OperationMode;

.field public static final enum INFRA:Landroid/net/wifi/WifiConfiguration$OperationMode;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 519
    new-instance v0, Landroid/net/wifi/WifiConfiguration$OperationMode;

    const-string v1, "INFRA"

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration$OperationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiConfiguration$OperationMode;->INFRA:Landroid/net/wifi/WifiConfiguration$OperationMode;

    .line 520
    new-instance v0, Landroid/net/wifi/WifiConfiguration$OperationMode;

    const-string v1, "IBSS"

    invoke-direct {v0, v1, v3}, Landroid/net/wifi/WifiConfiguration$OperationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiConfiguration$OperationMode;->IBSS:Landroid/net/wifi/WifiConfiguration$OperationMode;

    .line 518
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/wifi/WifiConfiguration$OperationMode;

    sget-object v1, Landroid/net/wifi/WifiConfiguration$OperationMode;->INFRA:Landroid/net/wifi/WifiConfiguration$OperationMode;

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/wifi/WifiConfiguration$OperationMode;->IBSS:Landroid/net/wifi/WifiConfiguration$OperationMode;

    aput-object v1, v0, v3

    sput-object v0, Landroid/net/wifi/WifiConfiguration$OperationMode;->$VALUES:[Landroid/net/wifi/WifiConfiguration$OperationMode;

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
    .line 518
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration$OperationMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 518
    const-class v0, Landroid/net/wifi/WifiConfiguration$OperationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration$OperationMode;

    return-object v0
.end method

.method public static values()[Landroid/net/wifi/WifiConfiguration$OperationMode;
    .registers 1

    .prologue
    .line 518
    sget-object v0, Landroid/net/wifi/WifiConfiguration$OperationMode;->$VALUES:[Landroid/net/wifi/WifiConfiguration$OperationMode;

    invoke-virtual {v0}, [Landroid/net/wifi/WifiConfiguration$OperationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/wifi/WifiConfiguration$OperationMode;

    return-object v0
.end method
