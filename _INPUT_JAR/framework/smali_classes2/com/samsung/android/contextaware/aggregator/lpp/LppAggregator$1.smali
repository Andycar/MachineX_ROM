.class Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$1;
.super Ljava/lang/Object;
.source "LppAggregator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->enable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;

.field final synthetic val$config:Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;)V
    .registers 3

    .prologue
    .line 347
    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$1;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;

    iput-object p2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$1;->val$config:Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 350
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$1;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;

    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$1;->val$config:Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;

    invoke-direct {v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;)V

    # setter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;
    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->access$102(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    .line 351
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$1;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->access$100(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$1;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->LPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;
    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->access$200(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;)Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->registerListener(Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;)V

    .line 352
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$1;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->access$100(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->start()V

    .line 353
    return-void
.end method
