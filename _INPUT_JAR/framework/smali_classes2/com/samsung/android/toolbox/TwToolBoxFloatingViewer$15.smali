.class Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$15;
.super Ljava/lang/Object;
.source "TwToolBoxFloatingViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;


# direct methods
.method constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .registers 2

    .prologue
    .line 1156
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$15;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$15;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$15;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsX:I
    invoke-static {v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$15;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsY:I
    invoke-static {v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v3

    # invokes: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onTouchUpOrCancel(III)V
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;III)V

    .line 1159
    return-void
.end method
