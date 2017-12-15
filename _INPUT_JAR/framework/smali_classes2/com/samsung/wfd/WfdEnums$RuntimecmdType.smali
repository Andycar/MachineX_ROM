.class public final enum Lcom/samsung/wfd/WfdEnums$RuntimecmdType;
.super Ljava/lang/Enum;
.source "WfdEnums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WfdEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RuntimecmdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/wfd/WfdEnums$RuntimecmdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/wfd/WfdEnums$RuntimecmdType;

.field public static final enum AUDIOPROXY_CLOSE:Lcom/samsung/wfd/WfdEnums$RuntimecmdType;

.field public static final enum AUDIOPROXY_OPEN:Lcom/samsung/wfd/WfdEnums$RuntimecmdType;

.field public static final enum UNKNOWN:Lcom/samsung/wfd/WfdEnums$RuntimecmdType;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 556
    new-instance v0, Lcom/samsung/wfd/WfdEnums$RuntimecmdType;

    const-string v1, "UNKNOWN"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/wfd/WfdEnums$RuntimecmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$RuntimecmdType;->UNKNOWN:Lcom/samsung/wfd/WfdEnums$RuntimecmdType;

    .line 557
    new-instance v0, Lcom/samsung/wfd/WfdEnums$RuntimecmdType;

    const-string v1, "AUDIOPROXY_OPEN"

    invoke-direct {v0, v1, v4, v3}, Lcom/samsung/wfd/WfdEnums$RuntimecmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$RuntimecmdType;->AUDIOPROXY_OPEN:Lcom/samsung/wfd/WfdEnums$RuntimecmdType;

    .line 558
    new-instance v0, Lcom/samsung/wfd/WfdEnums$RuntimecmdType;

    const-string v1, "AUDIOPROXY_CLOSE"

    invoke-direct {v0, v1, v5, v4}, Lcom/samsung/wfd/WfdEnums$RuntimecmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$RuntimecmdType;->AUDIOPROXY_CLOSE:Lcom/samsung/wfd/WfdEnums$RuntimecmdType;

    .line 555
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/wfd/WfdEnums$RuntimecmdType;

    sget-object v1, Lcom/samsung/wfd/WfdEnums$RuntimecmdType;->UNKNOWN:Lcom/samsung/wfd/WfdEnums$RuntimecmdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/wfd/WfdEnums$RuntimecmdType;->AUDIOPROXY_OPEN:Lcom/samsung/wfd/WfdEnums$RuntimecmdType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/wfd/WfdEnums$RuntimecmdType;->AUDIOPROXY_CLOSE:Lcom/samsung/wfd/WfdEnums$RuntimecmdType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/wfd/WfdEnums$RuntimecmdType;->$VALUES:[Lcom/samsung/wfd/WfdEnums$RuntimecmdType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "c"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 562
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 563
    iput p3, p0, Lcom/samsung/wfd/WfdEnums$RuntimecmdType;->code:I

    .line 564
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/wfd/WfdEnums$RuntimecmdType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 555
    const-class v0, Lcom/samsung/wfd/WfdEnums$RuntimecmdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/wfd/WfdEnums$RuntimecmdType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/wfd/WfdEnums$RuntimecmdType;
    .registers 1

    .prologue
    .line 555
    sget-object v0, Lcom/samsung/wfd/WfdEnums$RuntimecmdType;->$VALUES:[Lcom/samsung/wfd/WfdEnums$RuntimecmdType;

    invoke-virtual {v0}, [Lcom/samsung/wfd/WfdEnums$RuntimecmdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/wfd/WfdEnums$RuntimecmdType;

    return-object v0
.end method


# virtual methods
.method public getCmdType()I
    .registers 2

    .prologue
    .line 566
    iget v0, p0, Lcom/samsung/wfd/WfdEnums$RuntimecmdType;->code:I

    return v0
.end method
