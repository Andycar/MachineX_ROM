.class Lcom/android/internal/app/PlatLogoActivity$3;
.super Ljava/lang/Object;
.source "PlatLogoActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/PlatLogoActivity;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/PlatLogoActivity;

.field final synthetic val$im:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/internal/app/PlatLogoActivity;Landroid/widget/ImageView;)V
    .registers 3

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$3;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iput-object p2, p0, Lcom/android/internal/app/PlatLogoActivity$3;->val$im:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 214
    const/4 v0, 0x4

    if-eq p2, v0, :cond_2c

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2c

    .line 215
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$3;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iget v1, v0, Lcom/android/internal/app/PlatLogoActivity;->mKeyCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/internal/app/PlatLogoActivity;->mKeyCount:I

    .line 216
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$3;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iget v0, v0, Lcom/android/internal/app/PlatLogoActivity;->mKeyCount:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_24

    .line 217
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$3;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iget v0, v0, Lcom/android/internal/app/PlatLogoActivity;->mTapCount:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_26

    .line 218
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$3;->val$im:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performLongClick()Z

    .line 223
    :cond_24
    :goto_24
    const/4 v0, 0x1

    .line 225
    :goto_25
    return v0

    .line 220
    :cond_26
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$3;->val$im:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    goto :goto_24

    .line 225
    :cond_2c
    const/4 v0, 0x0

    goto :goto_25
.end method
