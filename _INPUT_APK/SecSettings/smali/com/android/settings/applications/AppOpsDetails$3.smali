.class Lcom/android/settings/applications/AppOpsDetails$3;
.super Ljava/lang/Object;
.source "AppOpsDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/AppOpsDetails;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/AppOpsDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/AppOpsDetails;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/settings/applications/AppOpsDetails$3;->this$0:Lcom/android/settings/applications/AppOpsDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsDetails$3;->this$0:Lcom/android/settings/applications/AppOpsDetails;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 239
    return-void
.end method
