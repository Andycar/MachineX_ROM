.class Lcom/android/settings/toolbox/ToolboxList$3;
.super Ljava/lang/Object;
.source "ToolboxList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/toolbox/ToolboxList;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/toolbox/ToolboxList;


# direct methods
.method constructor <init>(Lcom/android/settings/toolbox/ToolboxList;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/android/settings/toolbox/ToolboxList$3;->this$0:Lcom/android/settings/toolbox/ToolboxList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxList$3;->this$0:Lcom/android/settings/toolbox/ToolboxList;

    invoke-static {v0}, Lcom/android/settings/toolbox/ToolboxList;->access$500(Lcom/android/settings/toolbox/ToolboxList;)V

    .line 425
    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxList$3;->this$0:Lcom/android/settings/toolbox/ToolboxList;

    invoke-virtual {v0}, Lcom/android/settings/toolbox/ToolboxList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 426
    return-void
.end method
