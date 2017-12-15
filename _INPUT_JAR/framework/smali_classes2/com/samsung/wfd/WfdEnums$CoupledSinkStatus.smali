.class public final enum Lcom/samsung/wfd/WfdEnums$CoupledSinkStatus;
.super Ljava/lang/Enum;
.source "WfdEnums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WfdEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CoupledSinkStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/wfd/WfdEnums$CoupledSinkStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/wfd/WfdEnums$CoupledSinkStatus;

.field public static final enum COUPLED:Lcom/samsung/wfd/WfdEnums$CoupledSinkStatus;

.field public static final enum NOT_COUPLED:Lcom/samsung/wfd/WfdEnums$CoupledSinkStatus;

.field public static final enum TEARDOWN_COUPLING:Lcom/samsung/wfd/WfdEnums$CoupledSinkStatus;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 571
    new-instance v0, Lcom/samsung/wfd/WfdEnums$CoupledSinkStatus;

    const-string v1, "NOT_COUPLED"

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/wfd/WfdEnums$CoupledSinkStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$CoupledSinkStatus;->NOT_COUPLED:Lcom/samsung/wfd/WfdEnums$CoupledSinkStatus;

    .line 572
    new-instance v0, Lcom/samsung/wfd/WfdEnums$CoupledSinkStatus;

    const-string v1, "COUPLED"

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/wfd/WfdEnums$CoupledSinkStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$CoupledSinkStatus;->COUPLED:Lcom/samsung/wfd/WfdEnums$CoupledSinkStatus;

    .line 573
    new-instance v0, Lcom/samsung/wfd/WfdEnums$CoupledSinkStatus;

    const-string v1, "TEARDOWN_COUPLING"

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/wfd/WfdEnums$CoupledSinkStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$CoupledSinkStatus;->TEARDOWN_COUPLING:Lcom/samsung/wfd/WfdEnums$CoupledSinkStatus;

    .line 570
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/wfd/WfdEnums$CoupledSinkStatus;

    sget-object v1, Lcom/samsung/wfd/WfdEnums$CoupledSinkStatus;->NOT_COUPLED:Lcom/samsung/wfd/WfdEnums$CoupledSinkStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/wfd/WfdEnums$CoupledSinkStatus;->COUPLED:Lcom/samsung/wfd/WfdEnums$CoupledSinkStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/wfd/WfdEnums$CoupledSinkStatus;->TEARDOWN_COUPLING:Lcom/samsung/wfd/WfdEnums$CoupledSinkStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/wfd/WfdEnums$CoupledSinkStatus;->$VALUES:[Lcom/samsung/wfd/WfdEnums$CoupledSinkStatus;

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
    .line 577
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 578
    iput p3, p0, Lcom/samsung/wfd/WfdEnums$CoupledSinkStatus;->code:I

    .line 579
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/wfd/WfdEnums$CoupledSinkStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 570
    const-class v0, Lcom/samsung/wfd/WfdEnums$CoupledSinkStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/wfd/WfdEnums$CoupledSinkStatus;

    return-object v0
.end method

.method public static values()[Lcom/samsung/wfd/WfdEnums$CoupledSinkStatus;
    .registers 1

    .prologue
    .line 570
    sget-object v0, Lcom/samsung/wfd/WfdEnums$CoupledSinkStatus;->$VALUES:[Lcom/samsung/wfd/WfdEnums$CoupledSinkStatus;

    invoke-virtual {v0}, [Lcom/samsung/wfd/WfdEnums$CoupledSinkStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/wfd/WfdEnums$CoupledSinkStatus;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .prologue
    .line 582
    iget v0, p0, Lcom/samsung/wfd/WfdEnums$CoupledSinkStatus;->code:I

    return v0
.end method
