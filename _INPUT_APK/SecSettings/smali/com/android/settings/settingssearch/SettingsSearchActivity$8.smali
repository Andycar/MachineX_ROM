.class Lcom/android/settings/settingssearch/SettingsSearchActivity$8;
.super Ljava/lang/Object;
.source "SettingsSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/settingssearch/SettingsSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/settingssearch/SettingsSearchActivity;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$8;->this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 437
    const/16 v0, 0x42

    if-eq p2, v0, :cond_0

    const/16 v0, 0x17

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$8;->this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;

    invoke-static {v0}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$1000(Lcom/android/settings/settingssearch/SettingsSearchActivity;)Landroid/widget/SearchView;

    move-result-object v0

    iget-object v0, v0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 440
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
