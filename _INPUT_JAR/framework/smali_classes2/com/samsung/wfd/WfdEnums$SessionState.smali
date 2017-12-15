.class public final enum Lcom/samsung/wfd/WfdEnums$SessionState;
.super Ljava/lang/Enum;
.source "WfdEnums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WfdEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SessionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/wfd/WfdEnums$SessionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/wfd/WfdEnums$SessionState;

.field public static final enum CAPABILITIES_RECEIVED:Lcom/samsung/wfd/WfdEnums$SessionState;

.field public static final enum DEINITIALIZED:Lcom/samsung/wfd/WfdEnums$SessionState;

.field public static final enum DISABLED:Lcom/samsung/wfd/WfdEnums$SessionState;

.field public static final enum ENABLED:Lcom/samsung/wfd/WfdEnums$SessionState;

.field public static final enum ESTABLISHED:Lcom/samsung/wfd/WfdEnums$SessionState;

.field public static final enum ESTABLISHING:Lcom/samsung/wfd/WfdEnums$SessionState;

.field public static final enum IDLE:Lcom/samsung/wfd/WfdEnums$SessionState;

.field public static final enum INITIALIZED:Lcom/samsung/wfd/WfdEnums$SessionState;

.field public static final enum INVALID:Lcom/samsung/wfd/WfdEnums$SessionState;

.field public static final enum NEGOTIATED:Lcom/samsung/wfd/WfdEnums$SessionState;

.field public static final enum NEGOTIATING:Lcom/samsung/wfd/WfdEnums$SessionState;

.field public static final enum PAUSE:Lcom/samsung/wfd/WfdEnums$SessionState;

.field public static final enum PLAY:Lcom/samsung/wfd/WfdEnums$SessionState;

.field public static final enum STOPPED:Lcom/samsung/wfd/WfdEnums$SessionState;

.field public static final enum TEARDOWN:Lcom/samsung/wfd/WfdEnums$SessionState;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 485
    new-instance v0, Lcom/samsung/wfd/WfdEnums$SessionState;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v3}, Lcom/samsung/wfd/WfdEnums$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$SessionState;->INVALID:Lcom/samsung/wfd/WfdEnums$SessionState;

    .line 486
    new-instance v0, Lcom/samsung/wfd/WfdEnums$SessionState;

    const-string v1, "INITIALIZED"

    invoke-direct {v0, v1, v4}, Lcom/samsung/wfd/WfdEnums$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$SessionState;->INITIALIZED:Lcom/samsung/wfd/WfdEnums$SessionState;

    .line 487
    new-instance v0, Lcom/samsung/wfd/WfdEnums$SessionState;

    const-string v1, "DEINITIALIZED"

    invoke-direct {v0, v1, v5}, Lcom/samsung/wfd/WfdEnums$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$SessionState;->DEINITIALIZED:Lcom/samsung/wfd/WfdEnums$SessionState;

    .line 488
    new-instance v0, Lcom/samsung/wfd/WfdEnums$SessionState;

    const-string v1, "NEGOTIATING"

    invoke-direct {v0, v1, v6}, Lcom/samsung/wfd/WfdEnums$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$SessionState;->NEGOTIATING:Lcom/samsung/wfd/WfdEnums$SessionState;

    .line 489
    new-instance v0, Lcom/samsung/wfd/WfdEnums$SessionState;

    const-string v1, "NEGOTIATED"

    invoke-direct {v0, v1, v7}, Lcom/samsung/wfd/WfdEnums$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$SessionState;->NEGOTIATED:Lcom/samsung/wfd/WfdEnums$SessionState;

    .line 490
    new-instance v0, Lcom/samsung/wfd/WfdEnums$SessionState;

    const-string v1, "CAPABILITIES_RECEIVED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$SessionState;->CAPABILITIES_RECEIVED:Lcom/samsung/wfd/WfdEnums$SessionState;

    .line 491
    new-instance v0, Lcom/samsung/wfd/WfdEnums$SessionState;

    const-string v1, "IDLE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$SessionState;->IDLE:Lcom/samsung/wfd/WfdEnums$SessionState;

    .line 492
    new-instance v0, Lcom/samsung/wfd/WfdEnums$SessionState;

    const-string v1, "PLAY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$SessionState;->PLAY:Lcom/samsung/wfd/WfdEnums$SessionState;

    .line 493
    new-instance v0, Lcom/samsung/wfd/WfdEnums$SessionState;

    const-string v1, "PAUSE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$SessionState;->PAUSE:Lcom/samsung/wfd/WfdEnums$SessionState;

    .line 494
    new-instance v0, Lcom/samsung/wfd/WfdEnums$SessionState;

    const-string v1, "ESTABLISHING"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$SessionState;->ESTABLISHING:Lcom/samsung/wfd/WfdEnums$SessionState;

    .line 495
    new-instance v0, Lcom/samsung/wfd/WfdEnums$SessionState;

    const-string v1, "ESTABLISHED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$SessionState;->ESTABLISHED:Lcom/samsung/wfd/WfdEnums$SessionState;

    .line 496
    new-instance v0, Lcom/samsung/wfd/WfdEnums$SessionState;

    const-string v1, "STOPPED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$SessionState;->STOPPED:Lcom/samsung/wfd/WfdEnums$SessionState;

    .line 497
    new-instance v0, Lcom/samsung/wfd/WfdEnums$SessionState;

    const-string v1, "ENABLED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$SessionState;->ENABLED:Lcom/samsung/wfd/WfdEnums$SessionState;

    .line 498
    new-instance v0, Lcom/samsung/wfd/WfdEnums$SessionState;

    const-string v1, "DISABLED"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$SessionState;->DISABLED:Lcom/samsung/wfd/WfdEnums$SessionState;

    .line 499
    new-instance v0, Lcom/samsung/wfd/WfdEnums$SessionState;

    const-string v1, "TEARDOWN"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$SessionState;->TEARDOWN:Lcom/samsung/wfd/WfdEnums$SessionState;

    .line 484
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/samsung/wfd/WfdEnums$SessionState;

    sget-object v1, Lcom/samsung/wfd/WfdEnums$SessionState;->INVALID:Lcom/samsung/wfd/WfdEnums$SessionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/wfd/WfdEnums$SessionState;->INITIALIZED:Lcom/samsung/wfd/WfdEnums$SessionState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/wfd/WfdEnums$SessionState;->DEINITIALIZED:Lcom/samsung/wfd/WfdEnums$SessionState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/wfd/WfdEnums$SessionState;->NEGOTIATING:Lcom/samsung/wfd/WfdEnums$SessionState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/wfd/WfdEnums$SessionState;->NEGOTIATED:Lcom/samsung/wfd/WfdEnums$SessionState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/wfd/WfdEnums$SessionState;->CAPABILITIES_RECEIVED:Lcom/samsung/wfd/WfdEnums$SessionState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/wfd/WfdEnums$SessionState;->IDLE:Lcom/samsung/wfd/WfdEnums$SessionState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/wfd/WfdEnums$SessionState;->PLAY:Lcom/samsung/wfd/WfdEnums$SessionState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/wfd/WfdEnums$SessionState;->PAUSE:Lcom/samsung/wfd/WfdEnums$SessionState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/samsung/wfd/WfdEnums$SessionState;->ESTABLISHING:Lcom/samsung/wfd/WfdEnums$SessionState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/samsung/wfd/WfdEnums$SessionState;->ESTABLISHED:Lcom/samsung/wfd/WfdEnums$SessionState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/samsung/wfd/WfdEnums$SessionState;->STOPPED:Lcom/samsung/wfd/WfdEnums$SessionState;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/samsung/wfd/WfdEnums$SessionState;->ENABLED:Lcom/samsung/wfd/WfdEnums$SessionState;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/samsung/wfd/WfdEnums$SessionState;->DISABLED:Lcom/samsung/wfd/WfdEnums$SessionState;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/samsung/wfd/WfdEnums$SessionState;->TEARDOWN:Lcom/samsung/wfd/WfdEnums$SessionState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/wfd/WfdEnums$SessionState;->$VALUES:[Lcom/samsung/wfd/WfdEnums$SessionState;

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
    .line 484
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/wfd/WfdEnums$SessionState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 484
    const-class v0, Lcom/samsung/wfd/WfdEnums$SessionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/wfd/WfdEnums$SessionState;

    return-object v0
.end method

.method public static values()[Lcom/samsung/wfd/WfdEnums$SessionState;
    .registers 1

    .prologue
    .line 484
    sget-object v0, Lcom/samsung/wfd/WfdEnums$SessionState;->$VALUES:[Lcom/samsung/wfd/WfdEnums$SessionState;

    invoke-virtual {v0}, [Lcom/samsung/wfd/WfdEnums$SessionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/wfd/WfdEnums$SessionState;

    return-object v0
.end method
