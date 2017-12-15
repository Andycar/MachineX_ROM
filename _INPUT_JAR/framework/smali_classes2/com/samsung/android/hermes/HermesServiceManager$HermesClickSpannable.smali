.class public Lcom/samsung/android/hermes/HermesServiceManager$HermesClickSpannable;
.super Landroid/text/style/ClickableSpan;
.source "HermesServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hermes/HermesServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HermesClickSpannable"
.end annotation


# instance fields
.field mResult:Lcom/samsung/android/hermes/KerykeionResult;

.field final synthetic this$0:Lcom/samsung/android/hermes/HermesServiceManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hermes/HermesServiceManager;Lcom/samsung/android/hermes/KerykeionResult;)V
    .registers 4
    .param p2, "kResult"    # Lcom/samsung/android/hermes/KerykeionResult;

    .prologue
    .line 875
    iput-object p1, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesClickSpannable;->this$0:Lcom/samsung/android/hermes/HermesServiceManager;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 873
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesClickSpannable;->mResult:Lcom/samsung/android/hermes/KerykeionResult;

    .line 876
    iput-object p2, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesClickSpannable;->mResult:Lcom/samsung/android/hermes/KerykeionResult;

    .line 877
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 889
    # getter for: Lcom/samsung/android/hermes/HermesServiceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hermes/HermesServiceManager;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Spannable type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesClickSpannable;->mResult:Lcom/samsung/android/hermes/KerykeionResult;

    invoke-virtual {v3}, Lcom/samsung/android/hermes/KerykeionResult;->getResultType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    # getter for: Lcom/samsung/android/hermes/HermesServiceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hermes/HermesServiceManager;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Spannable String : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesClickSpannable;->mResult:Lcom/samsung/android/hermes/KerykeionResult;

    invoke-virtual {v3}, Lcom/samsung/android/hermes/KerykeionResult;->getAdaptableData()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 893
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 894
    iget-object v1, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesClickSpannable;->this$0:Lcom/samsung/android/hermes/HermesServiceManager;

    iget-object v2, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesClickSpannable;->this$0:Lcom/samsung/android/hermes/HermesServiceManager;

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/samsung/android/hermes/KerykeionResult;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesClickSpannable;->mResult:Lcom/samsung/android/hermes/KerykeionResult;

    aput-object v6, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    # invokes: Lcom/samsung/android/hermes/HermesServiceManager;->makeJson(Ljava/util/ArrayList;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/samsung/android/hermes/HermesServiceManager;->access$700(Lcom/samsung/android/hermes/HermesServiceManager;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/samsung/android/hermes/HermesServiceManager;->startHermesTickerService(Ljava/lang/String;Landroid/graphics/Rect;)V
    invoke-static {v1, v2, v0}, Lcom/samsung/android/hermes/HermesServiceManager;->access$800(Lcom/samsung/android/hermes/HermesServiceManager;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 896
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 881
    const v0, -0xffff01

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 882
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 884
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 885
    return-void
.end method
