.class Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;
.super Lcom/android/internal/util/State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/StateMachine$SmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuittingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/util/StateMachine$SmHandler;


# direct methods
.method private constructor <init>(Lcom/android/internal/util/StateMachine$SmHandler;)V
    .registers 2

    .prologue
    .line 764
    iput-object p1, p0, Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;->this$0:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/StateMachine$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/internal/util/StateMachine$SmHandler;
    .param p2, "x1"    # Lcom/android/internal/util/StateMachine$1;

    .prologue
    .line 764
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;-><init>(Lcom/android/internal/util/StateMachine$SmHandler;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 767
    const/4 v0, 0x0

    return v0
.end method
