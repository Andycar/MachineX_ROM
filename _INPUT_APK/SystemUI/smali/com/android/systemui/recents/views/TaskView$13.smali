.class Lcom/android/systemui/recents/views/TaskView$13;
.super Ljava/lang/Object;
.source "TaskView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskView;

.field final synthetic val$translationZ:F


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskView;F)V
    .locals 0

    .prologue
    .line 1050
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView$13;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iput p2, p0, Lcom/android/systemui/recents/views/TaskView$13;->val$translationZ:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 1052
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1053
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$13;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/recents/views/TaskView$13;->val$translationZ:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 1054
    return-void
.end method
