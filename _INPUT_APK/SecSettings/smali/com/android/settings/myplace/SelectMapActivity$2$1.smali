.class Lcom/android/settings/myplace/SelectMapActivity$2$1;
.super Ljava/lang/Object;
.source "SelectMapActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/myplace/SelectMapActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/myplace/SelectMapActivity$2;


# direct methods
.method constructor <init>(Lcom/android/settings/myplace/SelectMapActivity$2;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/settings/myplace/SelectMapActivity$2$1;->this$1:Lcom/android/settings/myplace/SelectMapActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 186
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity$2$1;->this$1:Lcom/android/settings/myplace/SelectMapActivity$2;

    iget-object v1, v1, Lcom/android/settings/myplace/SelectMapActivity$2;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/android/settings/myplace/SelectMapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 187
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity$2$1;->this$1:Lcom/android/settings/myplace/SelectMapActivity$2;

    iget-object v1, v1, Lcom/android/settings/myplace/SelectMapActivity$2;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-static {v1}, Lcom/android/settings/myplace/SelectMapActivity;->access$000(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    .line 189
    return-void
.end method
