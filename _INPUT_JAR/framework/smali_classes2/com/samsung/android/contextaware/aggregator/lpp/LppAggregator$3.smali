.class Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$3;
.super Ljava/lang/Object;
.source "LppAggregator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->disable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;)V
    .registers 2

    .prologue
    .line 426
    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$3;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$3;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->access$100(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 430
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$3;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->access$100(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->stopLpp()V

    .line 432
    :cond_11
    return-void
.end method
