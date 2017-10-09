.class Lcom/android/settings/myplace/MyPlaceProfileSettings$1;
.super Ljava/lang/Object;
.source "MyPlaceProfileSettings.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/myplace/MyPlaceProfileSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$1;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 285
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 294
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    .line 287
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$1;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$500(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$1;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$600(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$1;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$500(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 291
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$1;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$600(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    goto :goto_0

    .line 285
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
