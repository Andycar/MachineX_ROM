.class Lcom/android/settings/PreviewFragment$1;
.super Ljava/lang/Object;
.source "PreviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PreviewFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PreviewFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/PreviewFragment;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/settings/PreviewFragment$1;->this$0:Lcom/android/settings/PreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/settings/PreviewFragment$1;->this$0:Lcom/android/settings/PreviewFragment;

    invoke-virtual {v0}, Lcom/android/settings/PreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 205
    return-void
.end method
