.class Lcom/android/server/am/SmartAdjustManager$1;
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
    .line 598
    iput-object p1, p0, Lcom/android/server/am/SmartAdjustManager$1;->this$0:Lcom/android/server/am/SmartAdjustManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)I
    .registers 5
    .param p1, "app1"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "app2"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 601
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    iget v1, p2, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    if-ge v0, v1, :cond_8

    .line 602
    const/4 v0, -0x1

    .line 606
    :goto_7
    return v0

    .line 603
    :cond_8
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    iget v1, p2, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    if-le v0, v1, :cond_10

    .line 604
    const/4 v0, 0x1

    goto :goto_7

    .line 606
    :cond_10
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 598
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/am/ProcessRecord;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/SmartAdjustManager$1;->compare(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    return v0
.end method
