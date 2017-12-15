.class Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate$1;
.super Landroid/os/Handler;
.source "MotionRecognitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;-><init>(Lcom/samsung/android/motion/MotionRecognitionManager;Lcom/samsung/android/motion/MRListener;ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;

.field final synthetic val$this$0:Lcom/samsung/android/motion/MotionRecognitionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/motion/MotionRecognitionManager;)V
    .registers 4
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 721
    iput-object p1, p0, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate$1;->this$1:Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;

    iput-object p3, p0, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate$1;->val$this$0:Lcom/samsung/android/motion/MotionRecognitionManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 726
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate$1;->this$1:Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;

    # getter for: Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->mListener:Lcom/samsung/android/motion/MRListener;
    invoke-static {v2}, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->access$300(Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;)Lcom/samsung/android/motion/MRListener;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 727
    if-eqz p1, :cond_1d

    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x35

    if-ne v2, v3, :cond_1d

    .line 729
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/motion/MREvent;

    .line 730
    .local v1, "motionEvent":Lcom/samsung/android/motion/MREvent;
    iget-object v2, p0, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate$1;->this$1:Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;

    # getter for: Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->mListener:Lcom/samsung/android/motion/MRListener;
    invoke-static {v2}, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->access$300(Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;)Lcom/samsung/android/motion/MRListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/samsung/android/motion/MRListener;->onMotionListener(Lcom/samsung/android/motion/MREvent;)V
    :try_end_1d
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 736
    .end local v1    # "motionEvent":Lcom/samsung/android/motion/MREvent;
    :cond_1d
    :goto_1d
    return-void

    .line 733
    :catch_1e
    move-exception v0

    .line 734
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v2, "MotionRecognitionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClassCastException in handleMessage: msg.obj = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d
.end method
