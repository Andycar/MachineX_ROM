.class Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback$1;
.super Ljava/lang/Object;
.source "MiscFilesHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback$1;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback$1;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->access$100(Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 111
    return-void
.end method
