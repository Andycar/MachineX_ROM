.class Lcom/android/settings/applications/UninstallMultipleScreen$4;
.super Ljava/lang/Object;
.source "UninstallMultipleScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/UninstallMultipleScreen;->showConfirmationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/UninstallMultipleScreen;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/UninstallMultipleScreen;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/settings/applications/UninstallMultipleScreen$4;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 226
    iget-object v3, p0, Lcom/android/settings/applications/UninstallMultipleScreen$4;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    invoke-static {v3}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$000(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 228
    .local v0, "checkedItems":Landroid/util/SparseBooleanArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/applications/UninstallMultipleScreen$4;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    invoke-static {v3}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$000(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 229
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    iget-object v3, p0, Lcom/android/settings/applications/UninstallMultipleScreen$4;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    invoke-static {v3}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$700(Lcom/android/settings/applications/UninstallMultipleScreen;)Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;

    invoke-static {v3}, Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;->access$800(Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;)Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "pkgName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/applications/UninstallMultipleScreen$4;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    invoke-static {v3}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$400(Lcom/android/settings/applications/UninstallMultipleScreen;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 237
    iget-object v3, p0, Lcom/android/settings/applications/UninstallMultipleScreen$4;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    invoke-static {v3}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$400(Lcom/android/settings/applications/UninstallMultipleScreen;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 238
    iget-object v3, p0, Lcom/android/settings/applications/UninstallMultipleScreen$4;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    invoke-static {v3}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$500(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 239
    iget-object v3, p0, Lcom/android/settings/applications/UninstallMultipleScreen$4;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    iget-object v4, p0, Lcom/android/settings/applications/UninstallMultipleScreen$4;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    invoke-static {v4}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$400(Lcom/android/settings/applications/UninstallMultipleScreen;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$600(Lcom/android/settings/applications/UninstallMultipleScreen;Ljava/util/List;)V

    .line 243
    :goto_1
    return-void

    .line 241
    :cond_2
    iget-object v3, p0, Lcom/android/settings/applications/UninstallMultipleScreen$4;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    invoke-virtual {v3}, Lcom/android/settings/applications/UninstallMultipleScreen;->finish()V

    goto :goto_1
.end method
