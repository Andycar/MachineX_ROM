.class Lcom/android/settings/applications/ManageNotification$4;
.super Ljava/lang/Object;
.source "ManageNotification.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ManageNotification;->showDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ManageNotification;

.field final synthetic val$indicator_check:Landroid/widget/CheckedTextView;

.field final synthetic val$panel_check:Landroid/widget/CheckedTextView;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageNotification;Ljava/lang/String;Landroid/widget/CheckedTextView;Landroid/widget/CheckedTextView;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/settings/applications/ManageNotification$4;->this$0:Lcom/android/settings/applications/ManageNotification;

    iput-object p2, p0, Lcom/android/settings/applications/ManageNotification$4;->val$pkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/applications/ManageNotification$4;->val$indicator_check:Landroid/widget/CheckedTextView;

    iput-object p4, p0, Lcom/android/settings/applications/ManageNotification$4;->val$panel_check:Landroid/widget/CheckedTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, "newValue":I
    iget-object v2, p0, Lcom/android/settings/applications/ManageNotification$4;->this$0:Lcom/android/settings/applications/ManageNotification;

    invoke-virtual {v2}, Lcom/android/settings/applications/ManageNotification;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/ManageNotification$4;->val$pkgName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/settings/applications/ManageNotification;->getNotificationSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 271
    .local v1, "oldValue":I
    iget-object v2, p0, Lcom/android/settings/applications/ManageNotification$4;->val$indicator_check:Landroid/widget/CheckedTextView;

    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    or-int/lit8 v0, v0, 0x1

    .line 273
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/ManageNotification$4;->val$panel_check:Landroid/widget/CheckedTextView;

    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 274
    or-int/lit8 v0, v0, 0x2

    .line 276
    :cond_1
    if-eq v0, v1, :cond_2

    .line 277
    iget-object v2, p0, Lcom/android/settings/applications/ManageNotification$4;->this$0:Lcom/android/settings/applications/ManageNotification;

    invoke-virtual {v2}, Lcom/android/settings/applications/ManageNotification;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/ManageNotification$4;->val$pkgName:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/android/settings/applications/ManageNotification;->saveNotificationSetting(Landroid/content/Context;Ljava/lang/String;I)V

    .line 278
    iget-object v2, p0, Lcom/android/settings/applications/ManageNotification$4;->this$0:Lcom/android/settings/applications/ManageNotification;

    invoke-static {v2}, Lcom/android/settings/applications/ManageNotification;->access$100(Lcom/android/settings/applications/ManageNotification;)Lcom/android/settings/applications/ManageNotification$MyAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/applications/ManageNotification$MyAdapter;->notifyDataSetChanged()V

    .line 279
    iget-object v2, p0, Lcom/android/settings/applications/ManageNotification$4;->this$0:Lcom/android/settings/applications/ManageNotification;

    iget-object v3, p0, Lcom/android/settings/applications/ManageNotification$4;->val$pkgName:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1}, Lcom/android/settings/applications/ManageNotification;->access$200(Lcom/android/settings/applications/ManageNotification;Ljava/lang/String;II)V

    .line 281
    :cond_2
    return-void
.end method
