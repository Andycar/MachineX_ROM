.class public final enum Lcom/samsung/wfd/WfdEnums$PreferredConnectivity;
.super Ljava/lang/Enum;
.source "WfdEnums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WfdEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PreferredConnectivity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/wfd/WfdEnums$PreferredConnectivity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/wfd/WfdEnums$PreferredConnectivity;

.field public static final enum P2P:Lcom/samsung/wfd/WfdEnums$PreferredConnectivity;

.field public static final enum TDLS:Lcom/samsung/wfd/WfdEnums$PreferredConnectivity;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 535
    new-instance v0, Lcom/samsung/wfd/WfdEnums$PreferredConnectivity;

    const-string v1, "P2P"

    invoke-direct {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums$PreferredConnectivity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$PreferredConnectivity;->P2P:Lcom/samsung/wfd/WfdEnums$PreferredConnectivity;

    new-instance v0, Lcom/samsung/wfd/WfdEnums$PreferredConnectivity;

    const-string v1, "TDLS"

    invoke-direct {v0, v1, v3}, Lcom/samsung/wfd/WfdEnums$PreferredConnectivity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$PreferredConnectivity;->TDLS:Lcom/samsung/wfd/WfdEnums$PreferredConnectivity;

    .line 534
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/wfd/WfdEnums$PreferredConnectivity;

    sget-object v1, Lcom/samsung/wfd/WfdEnums$PreferredConnectivity;->P2P:Lcom/samsung/wfd/WfdEnums$PreferredConnectivity;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/wfd/WfdEnums$PreferredConnectivity;->TDLS:Lcom/samsung/wfd/WfdEnums$PreferredConnectivity;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/wfd/WfdEnums$PreferredConnectivity;->$VALUES:[Lcom/samsung/wfd/WfdEnums$PreferredConnectivity;

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
    .line 534
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/wfd/WfdEnums$PreferredConnectivity;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 534
    const-class v0, Lcom/samsung/wfd/WfdEnums$PreferredConnectivity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/wfd/WfdEnums$PreferredConnectivity;

    return-object v0
.end method

.method public static values()[Lcom/samsung/wfd/WfdEnums$PreferredConnectivity;
    .registers 1

    .prologue
    .line 534
    sget-object v0, Lcom/samsung/wfd/WfdEnums$PreferredConnectivity;->$VALUES:[Lcom/samsung/wfd/WfdEnums$PreferredConnectivity;

    invoke-virtual {v0}, [Lcom/samsung/wfd/WfdEnums$PreferredConnectivity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/wfd/WfdEnums$PreferredConnectivity;

    return-object v0
.end method
