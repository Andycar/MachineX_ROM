.class Lcom/android/settings/BrightnessFragment$5;
.super Ljava/lang/Object;
.source "BrightnessFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/BrightnessFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BrightnessFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/BrightnessFragment;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/settings/BrightnessFragment$5;->this$0:Lcom/android/settings/BrightnessFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/settings/BrightnessFragment$5;->this$0:Lcom/android/settings/BrightnessFragment;

    iget-object v1, p0, Lcom/android/settings/BrightnessFragment$5;->this$0:Lcom/android/settings/BrightnessFragment;

    invoke-static {v1}, Lcom/android/settings/BrightnessFragment;->access$700(Lcom/android/settings/BrightnessFragment;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/settings/BrightnessFragment;->access$800(Lcom/android/settings/BrightnessFragment;IZ)V

    .line 310
    return-void
.end method
