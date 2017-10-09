.class Lcom/android/settings/flipfont/FontListActivity$4;
.super Ljava/lang/Object;
.source "FontListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/flipfont/FontListActivity;->selectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/flipfont/FontListActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/flipfont/FontListActivity;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/android/settings/flipfont/FontListActivity$4;->this$0:Lcom/android/settings/flipfont/FontListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListActivity$4;->this$0:Lcom/android/settings/flipfont/FontListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/flipfont/FontListActivity;->access$002(Lcom/android/settings/flipfont/FontListActivity;Z)Z

    .line 437
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListActivity$4;->this$0:Lcom/android/settings/flipfont/FontListActivity;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/FontListActivity;->savePreferences()V

    .line 438
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 439
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListActivity$4;->this$0:Lcom/android/settings/flipfont/FontListActivity;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/FontListActivity;->onCancelButtonPressed()V

    .line 440
    return-void
.end method
