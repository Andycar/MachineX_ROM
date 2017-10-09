.class Lcom/android/server/am/SmartAdjustManager$HotnessValue;
.super Ljava/lang/Object;
.source "SmartAdjustManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SmartAdjustManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HotnessValue"
.end annotation


# instance fields
.field private nHotness:[I

.field final synthetic this$0:Lcom/android/server/am/SmartAdjustManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/SmartAdjustManager;I)V
    .registers 5
    .param p2, "nHotnessType"    # I

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->this$0:Lcom/android/server/am/SmartAdjustManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->nHotness:[I

    .line 254
    iget-object v0, p0, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->nHotness:[I

    const/4 v1, 0x1

    aput v1, v0, p2

    return-void

    .line 253
    nop

    :array_14
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method decreaseHotness(I)V
    .registers 4
    .param p1, "nHotnessType"    # I

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->nHotness:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    return-void
.end method

.method getHotness(I)I
    .registers 3
    .param p1, "nHotnessType"    # I

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->nHotness:[I

    aget v0, v0, p1

    return v0
.end method

.method increaseHotness(I)V
    .registers 4
    .param p1, "nHotnessType"    # I

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->nHotness:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    return-void
.end method

.method setHalf(I)V
    .registers 4
    .param p1, "nHotnessType"    # I

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->nHotness:[I

    aget v1, v0, p1

    div-int/lit8 v1, v1, 0x2

    aput v1, v0, p1

    return-void
.end method

.method setHotness(II)V
    .registers 4
    .param p1, "nHotnessVal"    # I
    .param p2, "nHotnessType"    # I

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->nHotness:[I

    aput p1, v0, p2

    return-void
.end method
