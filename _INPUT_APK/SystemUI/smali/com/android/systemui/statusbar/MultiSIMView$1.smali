.class Lcom/android/systemui/statusbar/MultiSIMView$1;
.super Ljava/lang/Object;
.source "MultiSIMView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/MultiSIMView;->animateText(ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/MultiSIMView;

.field final synthetic val$onFinishedRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/MultiSIMView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/systemui/statusbar/MultiSIMView$1;->this$0:Lcom/android/systemui/statusbar/MultiSIMView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/MultiSIMView$1;->val$onFinishedRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/MultiSIMView$1;->this$0:Lcom/android/systemui/statusbar/MultiSIMView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/MultiSIMView;->access$002(Lcom/android/systemui/statusbar/MultiSIMView;Z)Z

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/MultiSIMView$1;->val$onFinishedRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/MultiSIMView$1;->val$onFinishedRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 131
    :cond_0
    return-void
.end method
