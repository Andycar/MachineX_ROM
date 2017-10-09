.class Lcom/android/settings/LockScreenSettings$1;
.super Ljava/lang/Object;
.source "LockScreenSettings.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LockScreenSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LockScreenSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/LockScreenSettings;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/settings/LockScreenSettings$1;->this$0:Lcom/android/settings/LockScreenSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 213
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 214
    packed-switch p2, :pswitch_data_0

    .line 237
    :cond_0
    :goto_0
    return v2

    .line 217
    :pswitch_0
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings$1;->this$0:Lcom/android/settings/LockScreenSettings;

    invoke-virtual {v4}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/LockScreenSettings$1;->this$0:Lcom/android/settings/LockScreenSettings;

    invoke-virtual {v5}, Lcom/android/settings/LockScreenSettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v5

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 218
    .local v0, "item":Ljava/lang/Object;
    if-nez v0, :cond_2

    .line 219
    const-string v2, "LockScreenSettings"

    const-string v4, "dispatchKeyEvent item is null"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    move v2, v3

    .line 232
    goto :goto_0

    .line 222
    :cond_2
    instance-of v4, v0, Landroid/preference/SwitchPreferenceScreen;

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 226
    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    .line 227
    .local v1, "preference":Landroid/preference/SwitchPreferenceScreen;
    invoke-virtual {v1}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 228
    invoke-virtual {v1}, Landroid/preference/SwitchPreferenceScreen;->performClick()V

    goto :goto_1

    .line 214
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
