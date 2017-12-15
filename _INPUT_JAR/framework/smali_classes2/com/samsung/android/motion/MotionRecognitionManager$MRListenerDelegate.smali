.class Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
.super Lcom/samsung/android/motion/IMotionRecognitionCallback$Stub;
.source "MotionRecognitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/motion/MotionRecognitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MRListenerDelegate"
.end annotation


# instance fields
.field private final EVENT_FROM_SERVICE:I

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/samsung/android/motion/MRListener;

.field private mListenerPackageName:Ljava/lang/String;

.field private mMotionEvents:I

.field final synthetic this$0:Lcom/samsung/android/motion/MotionRecognitionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/motion/MotionRecognitionManager;Lcom/samsung/android/motion/MRListener;ILandroid/os/Handler;)V
    .registers 7
    .param p2, "listener"    # Lcom/samsung/android/motion/MRListener;
    .param p3, "motion_sensors"    # I
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 712
    iput-object p1, p0, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->this$0:Lcom/samsung/android/motion/MotionRecognitionManager;

    invoke-direct {p0}, Lcom/samsung/android/motion/IMotionRecognitionCallback$Stub;-><init>()V

    .line 704
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->mListenerPackageName:Ljava/lang/String;

    .line 705
    const/16 v1, 0x35

    iput v1, p0, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->EVENT_FROM_SERVICE:I

    .line 713
    iput-object p2, p0, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->mListener:Lcom/samsung/android/motion/MRListener;

    .line 714
    if-eqz p4, :cond_24

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 715
    .local v0, "looper":Landroid/os/Looper;
    :goto_14
    iput p3, p0, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->mMotionEvents:I

    .line 718
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->mListenerPackageName:Ljava/lang/String;

    .line 721
    new-instance v1, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate$1;-><init>(Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/motion/MotionRecognitionManager;)V

    iput-object v1, p0, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 738
    return-void

    .line 714
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_24
    # getter for: Lcom/samsung/android/motion/MotionRecognitionManager;->mMainLooper:Landroid/os/Looper;
    invoke-static {p1}, Lcom/samsung/android/motion/MotionRecognitionManager;->access$200(Lcom/samsung/android/motion/MotionRecognitionManager;)Landroid/os/Looper;

    move-result-object v0

    goto :goto_14
.end method

.method static synthetic access$300(Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;)Lcom/samsung/android/motion/MRListener;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;

    .prologue
    .line 699
    iget-object v0, p0, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->mListener:Lcom/samsung/android/motion/MRListener;

    return-object v0
.end method


# virtual methods
.method public getListener()Lcom/samsung/android/motion/MRListener;
    .registers 2

    .prologue
    .line 741
    iget-object v0, p0, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->mListener:Lcom/samsung/android/motion/MRListener;

    return-object v0
.end method

.method public getListenerInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 760
    iget-object v0, p0, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->mListener:Lcom/samsung/android/motion/MRListener;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListenerPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 765
    iget-object v0, p0, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->mListenerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getMotionEvents()I
    .registers 2

    .prologue
    .line 745
    iget v0, p0, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->mMotionEvents:I

    return v0
.end method

.method public motionCallback(Lcom/samsung/android/motion/MREvent;)V
    .registers 4
    .param p1, "motionEvent"    # Lcom/samsung/android/motion/MREvent;

    .prologue
    .line 753
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 754
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x35

    iput v1, v0, Landroid/os/Message;->what:I

    .line 755
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 756
    iget-object v1, p0, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 757
    return-void
.end method

.method public setMotionEvents(I)V
    .registers 2
    .param p1, "motionevents"    # I

    .prologue
    .line 749
    iput p1, p0, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->mMotionEvents:I

    .line 750
    return-void
.end method
