.class Lcom/android/settings/ModePreview$3;
.super Ljava/lang/Object;
.source "ModePreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ModePreview;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ModePreview;


# direct methods
.method constructor <init>(Lcom/android/settings/ModePreview;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/settings/ModePreview$3;->this$0:Lcom/android/settings/ModePreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 149
    iget-object v0, p0, Lcom/android/settings/ModePreview$3;->this$0:Lcom/android/settings/ModePreview;

    invoke-static {v0}, Lcom/android/settings/ModePreview;->access$000(Lcom/android/settings/ModePreview;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/settings/ModePreview$3;->this$0:Lcom/android/settings/ModePreview;

    invoke-static {v0}, Lcom/android/settings/ModePreview;->access$000(Lcom/android/settings/ModePreview;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/ModePreview$3;->this$0:Lcom/android/settings/ModePreview;

    invoke-static {v0, v3}, Lcom/android/settings/ModePreview;->access$200(Lcom/android/settings/ModePreview;Z)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/ModePreview$3;->this$0:Lcom/android/settings/ModePreview;

    invoke-static {v0}, Lcom/android/settings/ModePreview;->access$100(Lcom/android/settings/ModePreview;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 160
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ModePreview$3;->this$0:Lcom/android/settings/ModePreview;

    invoke-static {v0}, Lcom/android/settings/ModePreview;->access$000(Lcom/android/settings/ModePreview;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 156
    iget-object v0, p0, Lcom/android/settings/ModePreview$3;->this$0:Lcom/android/settings/ModePreview;

    invoke-static {v0, v5}, Lcom/android/settings/ModePreview;->access$200(Lcom/android/settings/ModePreview;Z)V

    .line 157
    iget-object v0, p0, Lcom/android/settings/ModePreview$3;->this$0:Lcom/android/settings/ModePreview;

    invoke-static {v0}, Lcom/android/settings/ModePreview;->access$100(Lcom/android/settings/ModePreview;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 158
    iget-object v0, p0, Lcom/android/settings/ModePreview$3;->this$0:Lcom/android/settings/ModePreview;

    iget-object v1, p0, Lcom/android/settings/ModePreview$3;->this$0:Lcom/android/settings/ModePreview;

    const v2, 0x7f0a100b

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/ModePreview$3;->this$0:Lcom/android/settings/ModePreview;

    invoke-virtual {v4}, Lcom/android/settings/ModePreview;->makeContentsString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/ModePreview;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/ModePreview;->createGuideDialog(Ljava/lang/String;)V

    goto :goto_0
.end method
