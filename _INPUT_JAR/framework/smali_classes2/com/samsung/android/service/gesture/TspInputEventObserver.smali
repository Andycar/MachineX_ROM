.class public Lcom/samsung/android/service/gesture/TspInputEventObserver;
.super Ljava/lang/Object;
.source "TspInputEventObserver.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "tsp_inputevent_observer"


# instance fields
.field private mConnected:Z

.field private mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/service/gesture/TspInputEventObserver;->mConnected:Z

    .line 41
    new-instance v0, Lcom/samsung/android/service/gesture/GestureManager;

    new-instance v1, Lcom/samsung/android/service/gesture/TspInputEventObserver$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/gesture/TspInputEventObserver$1;-><init>(Lcom/samsung/android/service/gesture/TspInputEventObserver;)V

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/service/gesture/GestureManager;-><init>(Landroid/content/Context;Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;)V

    iput-object v0, p0, Lcom/samsung/android/service/gesture/TspInputEventObserver;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    .line 52
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/service/gesture/TspInputEventObserver;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/service/gesture/TspInputEventObserver;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/samsung/android/service/gesture/TspInputEventObserver;->mConnected:Z

    return p1
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/samsung/android/service/gesture/TspInputEventObserver;->mConnected:Z

    if-eqz v0, :cond_9

    .line 62
    iget-object v0, p0, Lcom/samsung/android/service/gesture/TspInputEventObserver;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/service/gesture/GestureManager;->sendInputEvent(Landroid/view/InputEvent;)V

    .line 64
    :cond_9
    return-void
.end method
