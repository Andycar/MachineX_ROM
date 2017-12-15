.class Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;
.super Ljava/lang/Object;
.source "MotionRecognitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerDelegate"
.end annotation


# instance fields
.field private final mListener:Lcom/samsung/android/motion/MRListener;

.field private final moldListener:Landroid/hardware/motion/MRListener;

.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionManager;


# direct methods
.method private constructor <init>(Landroid/hardware/motion/MotionRecognitionManager;Landroid/hardware/motion/MRListener;)V
    .registers 4
    .param p2, "listener"    # Landroid/hardware/motion/MRListener;

    .prologue
    .line 184
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;->this$0:Landroid/hardware/motion/MotionRecognitionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate$1;

    invoke-direct {v0, p0}, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate$1;-><init>(Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;)V

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;->mListener:Lcom/samsung/android/motion/MRListener;

    .line 185
    iput-object p2, p0, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;->moldListener:Landroid/hardware/motion/MRListener;

    .line 186
    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/motion/MotionRecognitionManager;Landroid/hardware/motion/MRListener;Landroid/hardware/motion/MotionRecognitionManager$1;)V
    .registers 4
    .param p1, "x0"    # Landroid/hardware/motion/MotionRecognitionManager;
    .param p2, "x1"    # Landroid/hardware/motion/MRListener;
    .param p3, "x2"    # Landroid/hardware/motion/MotionRecognitionManager$1;

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;-><init>(Landroid/hardware/motion/MotionRecognitionManager;Landroid/hardware/motion/MRListener;)V

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;)Landroid/hardware/motion/MRListener;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;

    .prologue
    .line 167
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;->moldListener:Landroid/hardware/motion/MRListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;)Lcom/samsung/android/motion/MRListener;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;

    .prologue
    .line 167
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;->mListener:Lcom/samsung/android/motion/MRListener;

    return-object v0
.end method
