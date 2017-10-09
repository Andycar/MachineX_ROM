.class Lcom/android/settings/BrightnessFragment$4;
.super Ljava/lang/Object;
.source "BrightnessFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 274
    iput-object p1, p0, Lcom/android/settings/BrightnessFragment$4;->this$0:Lcom/android/settings/BrightnessFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 277
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 278
    invoke-static {}, Lcom/android/settings/BrightnessFragment;->access$400()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/BrightnessFragment;->access$500(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/BrightnessFragment;->access$400()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/BrightnessFragment;->access$600(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    invoke-static {}, Lcom/android/settings/BrightnessFragment;->access$400()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a1b78

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 283
    :cond_0
    return v2
.end method
