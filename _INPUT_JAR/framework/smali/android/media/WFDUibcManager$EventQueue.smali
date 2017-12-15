.class Landroid/media/WFDUibcManager$EventQueue;
.super Ljava/lang/Object;
.source "WFDUibcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WFDUibcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventQueue"
.end annotation


# instance fields
.field private queuedEvents:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Landroid/view/InputEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/media/WFDUibcManager;


# direct methods
.method private constructor <init>(Landroid/media/WFDUibcManager;)V
    .registers 3

    .prologue
    .line 932
    iput-object p1, p0, Landroid/media/WFDUibcManager$EventQueue;->this$0:Landroid/media/WFDUibcManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 934
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Landroid/media/WFDUibcManager$EventQueue;->queuedEvents:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/WFDUibcManager;Landroid/media/WFDUibcManager$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/media/WFDUibcManager;
    .param p2, "x1"    # Landroid/media/WFDUibcManager$1;

    .prologue
    .line 932
    invoke-direct {p0, p1}, Landroid/media/WFDUibcManager$EventQueue;-><init>(Landroid/media/WFDUibcManager;)V

    return-void
.end method


# virtual methods
.method public addEvent(Landroid/view/InputEvent;)V
    .registers 5
    .param p1, "ev"    # Landroid/view/InputEvent;

    .prologue
    .line 958
    :try_start_0
    iget-object v1, p0, Landroid/media/WFDUibcManager$EventQueue;->queuedEvents:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_5} :catch_f

    .line 964
    :goto_5
    return-void

    .line 959
    :catch_6
    move-exception v0

    .line 960
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "WFDUibcManager"

    const-string v2, "Interrupted when waiting to insert to queue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 961
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_f
    move-exception v0

    .line 962
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "WFDUibcManager"

    const-string v2, "Null pointer exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public getNextEvent()Landroid/view/InputEvent;
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 940
    :try_start_1
    iget-object v3, p0, Landroid/media/WFDUibcManager$EventQueue;->queuedEvents:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v4, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputEvent;
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_d} :catch_12

    .line 941
    .local v1, "queuedEvent":Landroid/view/InputEvent;
    if-eqz v1, :cond_10

    .line 950
    .end local v1    # "queuedEvent":Landroid/view/InputEvent;
    :goto_f
    return-object v1

    .restart local v1    # "queuedEvent":Landroid/view/InputEvent;
    :cond_10
    move-object v1, v2

    .line 946
    goto :goto_f

    .line 948
    .end local v1    # "queuedEvent":Landroid/view/InputEvent;
    :catch_12
    move-exception v0

    .line 949
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "WFDUibcManager"

    const-string v4, "Interrupted when waiting to read from queue"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 950
    goto :goto_f
.end method
