.class public final enum Lcom/samsung/wfd/WfdEnums$WFDDeviceType;
.super Ljava/lang/Enum;
.source "WfdEnums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WfdEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WFDDeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/wfd/WfdEnums$WFDDeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/wfd/WfdEnums$WFDDeviceType;

.field public static final enum PRIMARY_SINK:Lcom/samsung/wfd/WfdEnums$WFDDeviceType;

.field public static final enum SECONDARY_SINK:Lcom/samsung/wfd/WfdEnums$WFDDeviceType;

.field public static final enum SOURCE:Lcom/samsung/wfd/WfdEnums$WFDDeviceType;

.field public static final enum SOURCE_PRIMARY_SINK:Lcom/samsung/wfd/WfdEnums$WFDDeviceType;

.field public static final enum UNKNOWN:Lcom/samsung/wfd/WfdEnums$WFDDeviceType;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 399
    new-instance v0, Lcom/samsung/wfd/WfdEnums$WFDDeviceType;

    const-string v1, "SOURCE"

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/wfd/WfdEnums$WFDDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$WFDDeviceType;->SOURCE:Lcom/samsung/wfd/WfdEnums$WFDDeviceType;

    new-instance v0, Lcom/samsung/wfd/WfdEnums$WFDDeviceType;

    const-string v1, "PRIMARY_SINK"

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/wfd/WfdEnums$WFDDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$WFDDeviceType;->PRIMARY_SINK:Lcom/samsung/wfd/WfdEnums$WFDDeviceType;

    new-instance v0, Lcom/samsung/wfd/WfdEnums$WFDDeviceType;

    const-string v1, "SECONDARY_SINK"

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/wfd/WfdEnums$WFDDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$WFDDeviceType;->SECONDARY_SINK:Lcom/samsung/wfd/WfdEnums$WFDDeviceType;

    new-instance v0, Lcom/samsung/wfd/WfdEnums$WFDDeviceType;

    const-string v1, "SOURCE_PRIMARY_SINK"

    invoke-direct {v0, v1, v5, v5}, Lcom/samsung/wfd/WfdEnums$WFDDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$WFDDeviceType;->SOURCE_PRIMARY_SINK:Lcom/samsung/wfd/WfdEnums$WFDDeviceType;

    new-instance v0, Lcom/samsung/wfd/WfdEnums$WFDDeviceType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6, v6}, Lcom/samsung/wfd/WfdEnums$WFDDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$WFDDeviceType;->UNKNOWN:Lcom/samsung/wfd/WfdEnums$WFDDeviceType;

    .line 398
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/wfd/WfdEnums$WFDDeviceType;

    sget-object v1, Lcom/samsung/wfd/WfdEnums$WFDDeviceType;->SOURCE:Lcom/samsung/wfd/WfdEnums$WFDDeviceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/wfd/WfdEnums$WFDDeviceType;->PRIMARY_SINK:Lcom/samsung/wfd/WfdEnums$WFDDeviceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/wfd/WfdEnums$WFDDeviceType;->SECONDARY_SINK:Lcom/samsung/wfd/WfdEnums$WFDDeviceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/wfd/WfdEnums$WFDDeviceType;->SOURCE_PRIMARY_SINK:Lcom/samsung/wfd/WfdEnums$WFDDeviceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/wfd/WfdEnums$WFDDeviceType;->UNKNOWN:Lcom/samsung/wfd/WfdEnums$WFDDeviceType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/wfd/WfdEnums$WFDDeviceType;->$VALUES:[Lcom/samsung/wfd/WfdEnums$WFDDeviceType;

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
    .line 403
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 404
    iput p3, p0, Lcom/samsung/wfd/WfdEnums$WFDDeviceType;->code:I

    .line 405
    return-void
.end method

.method public static getValue(I)Lcom/samsung/wfd/WfdEnums$WFDDeviceType;
    .registers 6
    .param p0, "c"    # I

    .prologue
    .line 412
    invoke-static {}, Lcom/samsung/wfd/WfdEnums$WFDDeviceType;->values()[Lcom/samsung/wfd/WfdEnums$WFDDeviceType;

    move-result-object v0

    .local v0, "arr$":[Lcom/samsung/wfd/WfdEnums$WFDDeviceType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_6
    if-ge v2, v3, :cond_12

    aget-object v1, v0, v2

    .line 413
    .local v1, "e":Lcom/samsung/wfd/WfdEnums$WFDDeviceType;
    iget v4, v1, Lcom/samsung/wfd/WfdEnums$WFDDeviceType;->code:I

    if-ne v4, p0, :cond_f

    .line 416
    .end local v1    # "e":Lcom/samsung/wfd/WfdEnums$WFDDeviceType;
    :goto_e
    return-object v1

    .line 412
    .restart local v1    # "e":Lcom/samsung/wfd/WfdEnums$WFDDeviceType;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 416
    .end local v1    # "e":Lcom/samsung/wfd/WfdEnums$WFDDeviceType;
    :cond_12
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/wfd/WfdEnums$WFDDeviceType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 398
    const-class v0, Lcom/samsung/wfd/WfdEnums$WFDDeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/wfd/WfdEnums$WFDDeviceType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/wfd/WfdEnums$WFDDeviceType;
    .registers 1

    .prologue
    .line 398
    sget-object v0, Lcom/samsung/wfd/WfdEnums$WFDDeviceType;->$VALUES:[Lcom/samsung/wfd/WfdEnums$WFDDeviceType;

    invoke-virtual {v0}, [Lcom/samsung/wfd/WfdEnums$WFDDeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/wfd/WfdEnums$WFDDeviceType;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .prologue
    .line 408
    iget v0, p0, Lcom/samsung/wfd/WfdEnums$WFDDeviceType;->code:I

    return v0
.end method
