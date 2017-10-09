.class Lcom/android/settings/personalvibration/PersonalVibration$4;
.super Ljava/lang/Object;
.source "PersonalVibration.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/personalvibration/PersonalVibration;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/personalvibration/PersonalVibration;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/android/settings/personalvibration/PersonalVibration;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/android/settings/personalvibration/PersonalVibration$4;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iput-object p2, p0, Lcom/android/settings/personalvibration/PersonalVibration$4;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$4;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration$4;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    invoke-static {v1}, Lcom/android/settings/personalvibration/PersonalVibration;->access$100(Lcom/android/settings/personalvibration/PersonalVibration;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 332
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$4;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    .line 333
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$4;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->leftButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 334
    return-void
.end method
