.class Lcom/android/settings/common/ActionModeCallback$1;
.super Ljava/lang/Object;
.source "ActionModeCallback.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/common/ActionModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/common/ActionModeCallback;


# direct methods
.method constructor <init>(Lcom/android/settings/common/ActionModeCallback;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/settings/common/ActionModeCallback$1;->this$0:Lcom/android/settings/common/ActionModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/common/ActionModeCallback$1;->this$0:Lcom/android/settings/common/ActionModeCallback;

    iget-object v0, v0, Lcom/android/settings/common/ActionModeCallback;->listner:Lcom/android/settings/common/ActionModeCallback$OnAcionModeListner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/common/ActionModeCallback$1;->this$0:Lcom/android/settings/common/ActionModeCallback;

    iget-object v0, v0, Lcom/android/settings/common/ActionModeCallback;->listner:Lcom/android/settings/common/ActionModeCallback$OnAcionModeListner;

    invoke-interface {v0}, Lcom/android/settings/common/ActionModeCallback$OnAcionModeListner;->stopActionMode()V

    .line 56
    :cond_0
    return-void
.end method
