.class Lcom/android/systemui/statusbar/QconnectSfinderView$1;
.super Ljava/lang/Object;
.source "QconnectSfinderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/QconnectSfinderView;->animateText(ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/QconnectSfinderView;

.field final synthetic val$onFinishedRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/QconnectSfinderView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/systemui/statusbar/QconnectSfinderView$1;->this$0:Lcom/android/systemui/statusbar/QconnectSfinderView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/QconnectSfinderView$1;->val$onFinishedRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/QconnectSfinderView$1;->this$0:Lcom/android/systemui/statusbar/QconnectSfinderView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/QconnectSfinderView;->access$002(Lcom/android/systemui/statusbar/QconnectSfinderView;Z)Z

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/QconnectSfinderView$1;->val$onFinishedRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/QconnectSfinderView$1;->val$onFinishedRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 134
    :cond_0
    return-void
.end method
