.class Lcom/android/settings/applications/AppOpsDetails$2$2;
.super Ljava/lang/Object;
.source "AppOpsDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/AppOpsDetails$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/applications/AppOpsDetails$2;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/AppOpsDetails$2;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/settings/applications/AppOpsDetails$2$2;->this$1:Lcom/android/settings/applications/AppOpsDetails$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsDetails$2$2;->this$1:Lcom/android/settings/applications/AppOpsDetails$2;

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails$2;->this$0:Lcom/android/settings/applications/AppOpsDetails;

    invoke-static {v0}, Lcom/android/settings/applications/AppOpsDetails;->access$100(Lcom/android/settings/applications/AppOpsDetails;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->toggle()V

    .line 185
    return-void
.end method
