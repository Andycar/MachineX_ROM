.class Lcom/android/server/am/SmartAdjustManager$2;
.super Ljava/lang/Object;
.source "SmartAdjustManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/SmartAdjustManager;->smartAdjustProcessesLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/am/ProcessRecord;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/SmartAdjustManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/SmartAdjustManager;)V
    .registers 2

    .prologue
    .line 629
    iput-object p1, p0, Lcom/android/server/am/SmartAdjustManager$2;->this$0:Lcom/android/server/am/SmartAdjustManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)I
    .registers 8
    .param p1, "app1"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "app2"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 632
    sget-boolean v3, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_ENABLE:Z

    if-eqz v3, :cond_26

    .line 633
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iget v4, p2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-le v3, v4, :cond_e

    .line 648
    :cond_d
    :goto_d
    return v0

    .line 635
    :cond_e
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iget v4, p2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-ge v3, v4, :cond_16

    move v0, v1

    .line 636
    goto :goto_d

    .line 637
    :cond_16
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    iget v4, p2, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    if-lt v3, v4, :cond_d

    .line 639
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    iget v3, p2, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    if-le v0, v3, :cond_24

    move v0, v1

    .line 640
    goto :goto_d

    :cond_24
    move v0, v2

    .line 642
    goto :goto_d

    .line 644
    :cond_26
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iget v4, p2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-gt v3, v4, :cond_d

    .line 646
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iget v3, p2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-ge v0, v3, :cond_34

    move v0, v1

    .line 647
    goto :goto_d

    :cond_34
    move v0, v2

    .line 648
    goto :goto_d
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 629
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/am/ProcessRecord;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/SmartAdjustManager$2;->compare(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    return v0
.end method
