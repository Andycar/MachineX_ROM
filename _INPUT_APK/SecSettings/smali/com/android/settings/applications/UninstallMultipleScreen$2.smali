.class Lcom/android/settings/applications/UninstallMultipleScreen$2;
.super Landroid/os/Handler;
.source "UninstallMultipleScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/UninstallMultipleScreen;
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
    .line 190
    iput-object p1, p0, Lcom/android/settings/applications/UninstallMultipleScreen$2;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 192
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 206
    :goto_0
    return-void

    .line 195
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen$2;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    invoke-static {v0}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$400(Lcom/android/settings/applications/UninstallMultipleScreen;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen$2;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    invoke-static {v0}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$500(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 198
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen$2;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    invoke-virtual {v0}, Lcom/android/settings/applications/UninstallMultipleScreen;->finish()V

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen$2;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    iget-object v1, p0, Lcom/android/settings/applications/UninstallMultipleScreen$2;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    invoke-static {v1}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$400(Lcom/android/settings/applications/UninstallMultipleScreen;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$600(Lcom/android/settings/applications/UninstallMultipleScreen;Ljava/util/List;)V

    goto :goto_0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
