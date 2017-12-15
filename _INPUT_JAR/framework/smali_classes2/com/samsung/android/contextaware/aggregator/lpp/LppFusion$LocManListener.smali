.class Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;
.super Ljava/lang/Object;
.source "LppFusion.java"

# interfaces
.implements Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocManListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;


# direct methods
.method private constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)V
    .registers 2

    .prologue
    .line 637
    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;
    .param p2, "x1"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$1;

    .prologue
    .line 637
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)V

    return-void
.end method


# virtual methods
.method public batchLocListUpdate(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 670
    .local p1, "listLoc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/Location;>;"
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_BATCH_LOC_LIST_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    # invokes: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->addQ(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$2500(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V

    .line 671
    return-void
.end method

.method public batchLocUpdate(Landroid/location/Location;)V
    .registers 4
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 676
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_BATCH_LOC_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    # invokes: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->addQ(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$2500(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V

    .line 678
    return-void
.end method

.method public gpsAvailable()V
    .registers 2

    .prologue
    .line 713
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mListener:Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$1400(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;->gpsAvailable()V

    .line 714
    return-void
.end method

.method public gpsBatchStarted()V
    .registers 3

    .prologue
    .line 692
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mListener:Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$1400(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;->gpsBatchStarted()V

    .line 693
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLppAlgo:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$400(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->setGPSBatchingStatus(Z)V

    .line 694
    return-void
.end method

.method public gpsBatchStopped()V
    .registers 3

    .prologue
    .line 698
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLppAlgo:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$400(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->setGPSBatchingStatus(Z)V

    .line 699
    return-void
.end method

.method public gpsOffBatchStopped()V
    .registers 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mListener:Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$1400(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;->gpsOffBatchStopped()V

    .line 709
    return-void
.end method

.method public gpsOnBatchStopped()V
    .registers 2

    .prologue
    .line 703
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mListener:Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$1400(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;->gpsOnBatchStopped()V

    .line 704
    return-void
.end method

.method public gpsUnavailable()V
    .registers 2

    .prologue
    .line 718
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mListener:Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$1400(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;->gpsUnavailable()V

    .line 719
    return-void
.end method

.method public locPassBatchUpdate(Landroid/location/Location;)V
    .registers 4
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 687
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_PASS_LOC_BATCH_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    # invokes: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->addQ(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$2500(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V

    .line 688
    return-void
.end method

.method public locPassUpdate(Landroid/location/Location;)V
    .registers 4
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 682
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_PASS_LOC_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    # invokes: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->addQ(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$2500(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V

    .line 683
    return-void
.end method

.method public locUpdate(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 639
    .local p1, "listLoc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/Location;>;"
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mListGPSPos:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$600(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 642
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_LOCATION_LIST_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    # invokes: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->addQ(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$2500(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V

    .line 643
    return-void
.end method

.method public locationNotFound()V
    .registers 3

    .prologue
    .line 665
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$1000(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_NOT_FOUND:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(I)V

    .line 666
    return-void
.end method

.method public logData(Ljava/lang/String;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 647
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$000(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    .line 650
    return-void
.end method

.method public logNmeaData(Ljava/lang/String;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 653
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$000(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    .line 656
    return-void
.end method

.method public status(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 659
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    iput-object p1, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->strLM:Ljava/lang/String;

    .line 660
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # invokes: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->updateLppFusionStatus(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$2600(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Ljava/lang/String;)V

    .line 661
    return-void
.end method
