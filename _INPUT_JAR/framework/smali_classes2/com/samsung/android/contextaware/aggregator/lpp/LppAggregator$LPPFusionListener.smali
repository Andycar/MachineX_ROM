.class Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;
.super Ljava/lang/Object;
.source "LppAggregator.java"

# interfaces
.implements Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LPPFusionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;


# direct methods
.method private constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;)V
    .registers 2

    .prologue
    .line 588
    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;
    .param p2, "x1"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$1;

    .prologue
    .line 588
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;)V

    return-void
.end method


# virtual methods
.method public gpsAvailable()V
    .registers 2

    .prologue
    .line 627
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->access$300(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->gpsAvailable()V

    .line 628
    return-void
.end method

.method public gpsBatchStarted()V
    .registers 2

    .prologue
    .line 609
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->access$300(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->gpsBatchStarted()V

    .line 610
    return-void
.end method

.method public gpsOffBatchStopped()V
    .registers 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->access$300(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->gpsOffBatchStopped()V

    .line 622
    return-void
.end method

.method public gpsOnBatchStopped()V
    .registers 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->access$300(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->gpsOnBatchStopped()V

    .line 616
    return-void
.end method

.method public gpsUnavailable()V
    .registers 2

    .prologue
    .line 633
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->access$300(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->gpsUnavailable()V

    .line 634
    return-void
.end method

.method public lppStatus(Ljava/lang/String;)V
    .registers 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 605
    return-void
.end method

.method public lppUpdate(Ljava/util/ArrayList;)V
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
    .line 599
    .local p1, "listLPPResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/Location;>;"
    const-string v0, "LppAggregator"

    const-string v1, "LPPUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;

    # invokes: Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->notifyPositionContext(Ljava/util/ArrayList;)V
    invoke-static {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->access$400(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;Ljava/util/ArrayList;)V

    .line 601
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 6
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 590
    const-string v0, "LppAggregator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loc time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->access$300(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 593
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->access$300(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->locationUpdate(Landroid/location/Location;)V

    .line 595
    :cond_2d
    return-void
.end method
