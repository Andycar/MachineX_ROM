.class Lcom/android/settings/fmm/SimChangeAlert$1;
.super Ljava/lang/Object;
.source "SimChangeAlert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fmm/SimChangeAlert;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fmm/SimChangeAlert;


# direct methods
.method constructor <init>(Lcom/android/settings/fmm/SimChangeAlert;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/settings/fmm/SimChangeAlert$1;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/settings/fmm/SimChangeAlert$1;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    invoke-virtual {v0}, Lcom/android/settings/fmm/SimChangeAlert;->DoSave()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/settings/fmm/SimChangeAlert$1;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    invoke-virtual {v0}, Lcom/android/settings/fmm/SimChangeAlert;->finishFragment()V

    .line 190
    :cond_0
    return-void
.end method
