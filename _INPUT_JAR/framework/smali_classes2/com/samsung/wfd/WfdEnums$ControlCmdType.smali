.class public final enum Lcom/samsung/wfd/WfdEnums$ControlCmdType;
.super Ljava/lang/Enum;
.source "WfdEnums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WfdEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ControlCmdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/wfd/WfdEnums$ControlCmdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/wfd/WfdEnums$ControlCmdType;

.field public static final enum FLUSH:Lcom/samsung/wfd/WfdEnums$ControlCmdType;

.field public static final enum FLUSH_PAUSE:Lcom/samsung/wfd/WfdEnums$ControlCmdType;

.field public static final enum FLUSH_PLAY:Lcom/samsung/wfd/WfdEnums$ControlCmdType;

.field public static final enum PAUSE:Lcom/samsung/wfd/WfdEnums$ControlCmdType;

.field public static final enum PLAY:Lcom/samsung/wfd/WfdEnums$ControlCmdType;

.field public static final enum SET_VOLUME:Lcom/samsung/wfd/WfdEnums$ControlCmdType;

.field public static final enum STATUS:Lcom/samsung/wfd/WfdEnums$ControlCmdType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 543
    new-instance v0, Lcom/samsung/wfd/WfdEnums$ControlCmdType;

    const-string v1, "PLAY"

    invoke-direct {v0, v1, v3}, Lcom/samsung/wfd/WfdEnums$ControlCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$ControlCmdType;->PLAY:Lcom/samsung/wfd/WfdEnums$ControlCmdType;

    .line 544
    new-instance v0, Lcom/samsung/wfd/WfdEnums$ControlCmdType;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v4}, Lcom/samsung/wfd/WfdEnums$ControlCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$ControlCmdType;->PAUSE:Lcom/samsung/wfd/WfdEnums$ControlCmdType;

    .line 546
    new-instance v0, Lcom/samsung/wfd/WfdEnums$ControlCmdType;

    const-string v1, "FLUSH_PLAY"

    invoke-direct {v0, v1, v5}, Lcom/samsung/wfd/WfdEnums$ControlCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$ControlCmdType;->FLUSH_PLAY:Lcom/samsung/wfd/WfdEnums$ControlCmdType;

    .line 547
    new-instance v0, Lcom/samsung/wfd/WfdEnums$ControlCmdType;

    const-string v1, "FLUSH_PAUSE"

    invoke-direct {v0, v1, v6}, Lcom/samsung/wfd/WfdEnums$ControlCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$ControlCmdType;->FLUSH_PAUSE:Lcom/samsung/wfd/WfdEnums$ControlCmdType;

    .line 548
    new-instance v0, Lcom/samsung/wfd/WfdEnums$ControlCmdType;

    const-string v1, "SET_VOLUME"

    invoke-direct {v0, v1, v7}, Lcom/samsung/wfd/WfdEnums$ControlCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$ControlCmdType;->SET_VOLUME:Lcom/samsung/wfd/WfdEnums$ControlCmdType;

    .line 550
    new-instance v0, Lcom/samsung/wfd/WfdEnums$ControlCmdType;

    const-string v1, "FLUSH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums$ControlCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$ControlCmdType;->FLUSH:Lcom/samsung/wfd/WfdEnums$ControlCmdType;

    .line 551
    new-instance v0, Lcom/samsung/wfd/WfdEnums$ControlCmdType;

    const-string v1, "STATUS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums$ControlCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$ControlCmdType;->STATUS:Lcom/samsung/wfd/WfdEnums$ControlCmdType;

    .line 542
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/samsung/wfd/WfdEnums$ControlCmdType;

    sget-object v1, Lcom/samsung/wfd/WfdEnums$ControlCmdType;->PLAY:Lcom/samsung/wfd/WfdEnums$ControlCmdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/wfd/WfdEnums$ControlCmdType;->PAUSE:Lcom/samsung/wfd/WfdEnums$ControlCmdType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/wfd/WfdEnums$ControlCmdType;->FLUSH_PLAY:Lcom/samsung/wfd/WfdEnums$ControlCmdType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/wfd/WfdEnums$ControlCmdType;->FLUSH_PAUSE:Lcom/samsung/wfd/WfdEnums$ControlCmdType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/wfd/WfdEnums$ControlCmdType;->SET_VOLUME:Lcom/samsung/wfd/WfdEnums$ControlCmdType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/wfd/WfdEnums$ControlCmdType;->FLUSH:Lcom/samsung/wfd/WfdEnums$ControlCmdType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/wfd/WfdEnums$ControlCmdType;->STATUS:Lcom/samsung/wfd/WfdEnums$ControlCmdType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/wfd/WfdEnums$ControlCmdType;->$VALUES:[Lcom/samsung/wfd/WfdEnums$ControlCmdType;

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
    .line 542
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/wfd/WfdEnums$ControlCmdType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 542
    const-class v0, Lcom/samsung/wfd/WfdEnums$ControlCmdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/wfd/WfdEnums$ControlCmdType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/wfd/WfdEnums$ControlCmdType;
    .registers 1

    .prologue
    .line 542
    sget-object v0, Lcom/samsung/wfd/WfdEnums$ControlCmdType;->$VALUES:[Lcom/samsung/wfd/WfdEnums$ControlCmdType;

    invoke-virtual {v0}, [Lcom/samsung/wfd/WfdEnums$ControlCmdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/wfd/WfdEnums$ControlCmdType;

    return-object v0
.end method
