.class Lcom/android/systemui/qs/QSEditPanel$3;
.super Ljava/lang/Object;
.source "QSEditPanel.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSEditPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSEditPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSEditPanel;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/systemui/qs/QSEditPanel$3;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 386
    new-instance v0, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v0, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 387
    .local v0, "shadowBuilder":Landroid/view/View$DragShadowBuilder;
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel$3;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    const/4 v2, 0x0

    invoke-virtual {p1, v3, v0, v3, v2}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/qs/QSEditPanel;->mDragStart:Z

    .line 388
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel$3;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    invoke-static {v1, p1}, Lcom/android/systemui/qs/QSEditPanel;->access$302(Lcom/android/systemui/qs/QSEditPanel;Landroid/view/View;)Landroid/view/View;

    .line 389
    const-string v1, "QSEditPanel"

    const-string v2, "mLongClickListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string v1, "QSEditPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDragStart : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel$3;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    iget-boolean v4, v4, Lcom/android/systemui/qs/QSEditPanel;->mDragStart:Z

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel$3;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSEditPanel;->mDragStart:Z

    if-nez v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel$3;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    invoke-static {v1}, Lcom/android/systemui/qs/QSEditPanel;->access$400(Lcom/android/systemui/qs/QSEditPanel;)V

    .line 393
    const-string v1, "QSEditPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDragStart : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel$3;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    iget-boolean v4, v4, Lcom/android/systemui/qs/QSEditPanel;->mDragStart:Z

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
