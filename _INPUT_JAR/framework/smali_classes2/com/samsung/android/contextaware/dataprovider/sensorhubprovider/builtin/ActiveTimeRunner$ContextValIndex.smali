.class final enum Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;
.super Ljava/lang/Enum;
.source "ActiveTimeRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ContextValIndex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;

.field public static final enum ActiveTime:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;

.field public static final enum DataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;


# instance fields
.field private val:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;

    const-string v1, "DataType"

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;->DataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;

    .line 46
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;

    const-string v1, "ActiveTime"

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;->ActiveTime:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;->DataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;->ActiveTime:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;->$VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "v"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;->val:I

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;

    .prologue
    .line 42
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;->val:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;->$VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;

    invoke-virtual {v0}, [Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;

    return-object v0
.end method
