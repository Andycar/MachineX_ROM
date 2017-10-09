.class Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter$1;
.super Ljava/lang/Object;
.source "UninstallMultipleScreen.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

.field final synthetic val$listposition:I


# direct methods
.method constructor <init>(Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;I)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter$1;->this$1:Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

    iput p2, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter$1;->val$listposition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "arg1"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 318
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter$1;->this$1:Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

    iget-object v0, v0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    invoke-static {v0}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$000(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter$1;->val$listposition:I

    invoke-virtual {v0, v1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 319
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter$1;->this$1:Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

    iget-object v0, v0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    invoke-static {v0}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$000(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter$1;->this$1:Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

    iget-object v1, v1, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    invoke-static {v1}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$700(Lcom/android/settings/applications/UninstallMultipleScreen;)Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->getCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter$1;->this$1:Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

    iget-object v0, v0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    invoke-static {v0}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$200(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter$1;->this$1:Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

    iget-object v0, v0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    invoke-static {v0}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$000(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter$1;->this$1:Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

    iget-object v1, v1, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    invoke-static {v1}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$700(Lcom/android/settings/applications/UninstallMultipleScreen;)Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 323
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter$1;->this$1:Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

    iget-object v0, v0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    invoke-static {v0}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$200(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter$1;->this$1:Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

    iget-object v0, v0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    invoke-static {v0}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$300(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 327
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter$1;->this$1:Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

    iget-object v0, v0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    invoke-static {v0}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$000(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 328
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter$1;->this$1:Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

    iget-object v0, v0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    invoke-static {v0}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$300(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 332
    :cond_2
    :goto_0
    return-void

    .line 330
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter$1;->this$1:Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

    iget-object v0, v0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    invoke-static {v0}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$300(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
