.class Lcom/samsung/android/hermes/HermesServiceManager$2;
.super Lcom/samsung/android/hermes/IKerykeionCallBack$Stub;
.source "HermesServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hermes/HermesServiceManager;->getSpannableString(ILjava/lang/String;ILandroid/graphics/Rect;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hermes/HermesServiceManager;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$nAutoLinkMask:I

.field final synthetic val$str:Ljava/lang/String;

.field final synthetic val$svc:Lcom/samsung/android/hermes/IKerykeion;

.field final synthetic val$type:I

.field final synthetic val$viewId:I


# direct methods
.method constructor <init>(Lcom/samsung/android/hermes/HermesServiceManager;Lcom/samsung/android/hermes/IKerykeion;Ljava/lang/String;ILjava/lang/String;II)V
    .registers 8

    .prologue
    .line 353
    iput-object p1, p0, Lcom/samsung/android/hermes/HermesServiceManager$2;->this$0:Lcom/samsung/android/hermes/HermesServiceManager;

    iput-object p2, p0, Lcom/samsung/android/hermes/HermesServiceManager$2;->val$svc:Lcom/samsung/android/hermes/IKerykeion;

    iput-object p3, p0, Lcom/samsung/android/hermes/HermesServiceManager$2;->val$key:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/hermes/HermesServiceManager$2;->val$type:I

    iput-object p5, p0, Lcom/samsung/android/hermes/HermesServiceManager$2;->val$str:Ljava/lang/String;

    iput p6, p0, Lcom/samsung/android/hermes/HermesServiceManager$2;->val$nAutoLinkMask:I

    iput p7, p0, Lcom/samsung/android/hermes/HermesServiceManager$2;->val$viewId:I

    invoke-direct {p0}, Lcom/samsung/android/hermes/IKerykeionCallBack$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/hermes/KerykeionResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hermes/KerykeionResult;>;"
    const/16 v10, 0x21

    .line 356
    iget-object v8, p0, Lcom/samsung/android/hermes/HermesServiceManager$2;->this$0:Lcom/samsung/android/hermes/HermesServiceManager;

    iget-object v8, v8, Lcom/samsung/android/hermes/HermesServiceManager;->mIHermesCallBack:Lcom/samsung/android/hermes/HermesServiceManager$IHermesCallBack;

    if-eqz v8, :cond_20

    if-eqz p1, :cond_10

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_20

    .line 357
    :cond_10
    iget-object v8, p0, Lcom/samsung/android/hermes/HermesServiceManager$2;->this$0:Lcom/samsung/android/hermes/HermesServiceManager;

    iget-object v8, v8, Lcom/samsung/android/hermes/HermesServiceManager;->mIHermesCallBack:Lcom/samsung/android/hermes/HermesServiceManager$IHermesCallBack;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/samsung/android/hermes/HermesServiceManager$IHermesCallBack;->onCompleted(Ljava/lang/Object;)V

    .line 358
    iget-object v8, p0, Lcom/samsung/android/hermes/HermesServiceManager$2;->val$svc:Lcom/samsung/android/hermes/IKerykeion;

    iget-object v9, p0, Lcom/samsung/android/hermes/HermesServiceManager$2;->val$key:Ljava/lang/String;

    invoke-interface {v8, v9}, Lcom/samsung/android/hermes/IKerykeion;->stop(Ljava/lang/String;)V

    .line 403
    :goto_1f
    return-void

    .line 362
    :cond_20
    iget v8, p0, Lcom/samsung/android/hermes/HermesServiceManager$2;->val$type:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_ad

    .line 363
    new-instance v5, Landroid/text/SpannableString;

    iget-object v8, p0, Lcom/samsung/android/hermes/HermesServiceManager$2;->val$str:Ljava/lang/String;

    invoke-direct {v5, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 365
    .local v5, "spanStr":Landroid/text/SpannableString;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_31
    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_87

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hermes/KerykeionResult;

    .line 366
    .local v3, "kR":Lcom/samsung/android/hermes/KerykeionResult;
    invoke-virtual {v3}, Lcom/samsung/android/hermes/KerykeionResult;->getStartPos()I

    move-result v6

    .line 367
    .local v6, "start":I
    invoke-virtual {v3}, Lcom/samsung/android/hermes/KerykeionResult;->getEndPos()I

    move-result v0

    .line 368
    .local v0, "end":I
    invoke-virtual {v3}, Lcom/samsung/android/hermes/KerykeionResult;->getResultType()I

    move-result v7

    .line 370
    .local v7, "type":I
    sget-object v8, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Url:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v8}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->ordinal()I

    move-result v8

    if-ne v8, v7, :cond_5c

    .line 371
    new-instance v8, Lcom/samsung/android/hermes/HermesServiceManager$HermesHoverSpannable;

    iget-object v9, p0, Lcom/samsung/android/hermes/HermesServiceManager$2;->this$0:Lcom/samsung/android/hermes/HermesServiceManager;

    invoke-direct {v8, v9, v3}, Lcom/samsung/android/hermes/HermesServiceManager$HermesHoverSpannable;-><init>(Lcom/samsung/android/hermes/HermesServiceManager;Lcom/samsung/android/hermes/KerykeionResult;)V

    invoke-virtual {v5, v8, v6, v0, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_31

    .line 373
    :cond_5c
    iget v8, p0, Lcom/samsung/android/hermes/HermesServiceManager$2;->val$nAutoLinkMask:I

    if-nez v8, :cond_74

    .line 374
    iget-object v8, p0, Lcom/samsung/android/hermes/HermesServiceManager$2;->this$0:Lcom/samsung/android/hermes/HermesServiceManager;

    const/4 v9, 0x0

    # invokes: Lcom/samsung/android/hermes/HermesServiceManager;->hoverFilter(II)Z
    invoke-static {v8, v7, v9}, Lcom/samsung/android/hermes/HermesServiceManager;->access$500(Lcom/samsung/android/hermes/HermesServiceManager;II)Z

    move-result v8

    if-eqz v8, :cond_31

    .line 377
    new-instance v8, Lcom/samsung/android/hermes/HermesServiceManager$HermesHoverSpannable;

    iget-object v9, p0, Lcom/samsung/android/hermes/HermesServiceManager$2;->this$0:Lcom/samsung/android/hermes/HermesServiceManager;

    invoke-direct {v8, v9, v3}, Lcom/samsung/android/hermes/HermesServiceManager$HermesHoverSpannable;-><init>(Lcom/samsung/android/hermes/HermesServiceManager;Lcom/samsung/android/hermes/KerykeionResult;)V

    invoke-virtual {v5, v8, v6, v0, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_31

    .line 380
    :cond_74
    iget-object v8, p0, Lcom/samsung/android/hermes/HermesServiceManager$2;->this$0:Lcom/samsung/android/hermes/HermesServiceManager;

    # invokes: Lcom/samsung/android/hermes/HermesServiceManager;->clickFilter(I)Z
    invoke-static {v8, v7}, Lcom/samsung/android/hermes/HermesServiceManager;->access$600(Lcom/samsung/android/hermes/HermesServiceManager;I)Z

    move-result v8

    if-eqz v8, :cond_31

    .line 383
    new-instance v8, Lcom/samsung/android/hermes/HermesServiceManager$HermesClickSpannable;

    iget-object v9, p0, Lcom/samsung/android/hermes/HermesServiceManager$2;->this$0:Lcom/samsung/android/hermes/HermesServiceManager;

    invoke-direct {v8, v9, v3}, Lcom/samsung/android/hermes/HermesServiceManager$HermesClickSpannable;-><init>(Lcom/samsung/android/hermes/HermesServiceManager;Lcom/samsung/android/hermes/KerykeionResult;)V

    invoke-virtual {v5, v8, v6, v0, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_31

    .line 388
    .end local v0    # "end":I
    .end local v3    # "kR":Lcom/samsung/android/hermes/KerykeionResult;
    .end local v6    # "start":I
    .end local v7    # "type":I
    :cond_87
    new-instance v4, Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;

    iget-object v8, p0, Lcom/samsung/android/hermes/HermesServiceManager$2;->this$0:Lcom/samsung/android/hermes/HermesServiceManager;

    iget v9, p0, Lcom/samsung/android/hermes/HermesServiceManager$2;->val$viewId:I

    invoke-direct {v4, v8, v9, v5}, Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;-><init>(Lcom/samsung/android/hermes/HermesServiceManager;ILjava/lang/Object;)V

    .line 390
    .local v4, "lResult":Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;
    iget v8, p0, Lcom/samsung/android/hermes/HermesServiceManager$2;->val$type:I

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_a6

    .line 391
    iget-object v8, p0, Lcom/samsung/android/hermes/HermesServiceManager$2;->this$0:Lcom/samsung/android/hermes/HermesServiceManager;

    iget-object v9, p0, Lcom/samsung/android/hermes/HermesServiceManager$2;->val$str:Ljava/lang/String;

    const/4 v10, 0x1

    # invokes: Lcom/samsung/android/hermes/HermesServiceManager;->extractEvent(Ljava/util/List;Ljava/lang/String;I)Ljava/lang/Object;
    invoke-static {v8, p1, v9, v10}, Lcom/samsung/android/hermes/HermesServiceManager;->access$200(Lcom/samsung/android/hermes/HermesServiceManager;Ljava/util/List;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;

    .line 394
    .local v1, "event":Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;
    if-eqz v1, :cond_a6

    .line 395
    # invokes: Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;->setEvent(Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;)V
    invoke-static {v4, v1}, Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;->access$300(Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;)V

    .line 399
    .end local v1    # "event":Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;
    :cond_a6
    iget-object v8, p0, Lcom/samsung/android/hermes/HermesServiceManager$2;->this$0:Lcom/samsung/android/hermes/HermesServiceManager;

    iget-object v8, v8, Lcom/samsung/android/hermes/HermesServiceManager;->mIHermesCallBack:Lcom/samsung/android/hermes/HermesServiceManager$IHermesCallBack;

    invoke-interface {v8, v4}, Lcom/samsung/android/hermes/HermesServiceManager$IHermesCallBack;->onCompleted(Ljava/lang/Object;)V

    .line 402
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "lResult":Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;
    .end local v5    # "spanStr":Landroid/text/SpannableString;
    :cond_ad
    iget-object v8, p0, Lcom/samsung/android/hermes/HermesServiceManager$2;->val$svc:Lcom/samsung/android/hermes/IKerykeion;

    iget-object v9, p0, Lcom/samsung/android/hermes/HermesServiceManager$2;->val$key:Ljava/lang/String;

    invoke-interface {v8, v9}, Lcom/samsung/android/hermes/IKerykeion;->stop(Ljava/lang/String;)V

    goto/16 :goto_1f
.end method
