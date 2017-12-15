.class Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;
.super Ljava/lang/Object;
.source "LppFusion.java"

# interfaces
.implements Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LppAlgoLnr"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;


# direct methods
.method private constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)V
    .registers 2

    .prologue
    .line 729
    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;
    .param p2, "x1"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$1;

    .prologue
    .line 729
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)V

    return-void
.end method


# virtual methods
.method public logData(ILjava/lang/String;)V
    .registers 4
    .param p1, "target"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$000(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    .line 741
    return-void
.end method

.method public onUpdate(Landroid/location/Location;)V
    .registers 4
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 732
    const-string v0, "LppFusion"

    const-string v1, "LppAlgoLnr: onUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    return-void
.end method

.method public onUpdateLPPtraj(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 751
    .local p1, "listLppLocation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;>;"
    const-string v2, "LppFusion"

    const-string v3, "onUpdateLPPtraj"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const/4 v0, 0x0

    .local v0, "inx":I
    :goto_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_32

    .line 757
    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/location/Location;)V

    .line 759
    .local v1, "l":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mListLPPPos:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$500(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Landroid/location/Location;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 766
    .end local v1    # "l":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    :cond_32
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mListener:Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;
    invoke-static {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$1400(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mListLPPPos:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$500(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;->lppUpdate(Ljava/util/ArrayList;)V

    .line 767
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;
    invoke-static {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$000(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mListLPPPos:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$500(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->AddCoordinate(Ljava/util/ArrayList;)V

    .line 768
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;
    invoke-static {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$000(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mListGPSPos:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$600(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->AddGPSCoordinate(Ljava/util/ArrayList;)V

    .line 780
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mListLPPPos:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$500(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 781
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mListGPSPos:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$600(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 782
    return-void
.end method

.method public requestLoc()V
    .registers 1

    .prologue
    .line 788
    return-void
.end method

.method public status(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 744
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    iput-object p1, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->strAlgo:Ljava/lang/String;

    .line 745
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # invokes: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->updateLppFusionStatus(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$2600(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Ljava/lang/String;)V

    .line 746
    return-void
.end method
