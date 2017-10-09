.class Lcom/android/systemui/SearchPanelView$4;
.super Ljava/lang/Object;
.source "SearchPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SearchPanelView;->startExitAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SearchPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/SearchPanelView;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/systemui/SearchPanelView$4;->this$0:Lcom/android/systemui/SearchPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 329
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView$4;->this$0:Lcom/android/systemui/SearchPanelView;

    invoke-static {v0, v1}, Lcom/android/systemui/SearchPanelView;->access$302(Lcom/android/systemui/SearchPanelView;Z)Z

    .line 330
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView$4;->this$0:Lcom/android/systemui/SearchPanelView;

    invoke-static {v0}, Lcom/android/systemui/SearchPanelView;->access$100(Lcom/android/systemui/SearchPanelView;)Lcom/android/systemui/SearchPanelCircleView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/SearchPanelCircleView;->setAnimatingOut(Z)V

    .line 331
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView$4;->this$0:Lcom/android/systemui/SearchPanelView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/SearchPanelView;->setVisibility(I)V

    .line 332
    return-void
.end method
