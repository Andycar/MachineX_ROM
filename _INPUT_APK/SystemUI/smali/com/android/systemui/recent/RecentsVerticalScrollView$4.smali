.class Lcom/android/systemui/recent/RecentsVerticalScrollView$4;
.super Ljava/lang/Object;
.source "RecentsVerticalScrollView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsVerticalScrollView;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsVerticalScrollView;

.field final synthetic val$thumbnailView:Landroid/view/View;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView$4;->this$0:Lcom/android/systemui/recent/RecentsVerticalScrollView;

    iput-object p2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView$4;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView$4;->val$thumbnailView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView$4;->val$view:Landroid/view/View;

    const v2, 0x7f0e0318

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 144
    .local v0, "anchorView":Landroid/view/View;
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView$4;->this$0:Lcom/android/systemui/recent/RecentsVerticalScrollView;

    invoke-static {v1}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->access$000(Lcom/android/systemui/recent/RecentsVerticalScrollView;)Lcom/android/systemui/recent/RecentsCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView$4;->val$view:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView$4;->val$thumbnailView:Landroid/view/View;

    invoke-interface {v1, v2, v0, v3}, Lcom/android/systemui/recent/RecentsCallback;->handleLongPress(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 145
    const/4 v1, 0x1

    return v1
.end method
