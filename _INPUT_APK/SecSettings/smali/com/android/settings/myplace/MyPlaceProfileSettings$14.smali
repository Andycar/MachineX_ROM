.class Lcom/android/settings/myplace/MyPlaceProfileSettings$14;
.super Ljava/lang/Object;
.source "MyPlaceProfileSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep2Dialog()V
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
    .line 1465
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$14;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 1470
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$14;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    iget-object v2, v2, Lcom/android/settings/myplace/MyPlaceProfileSettings;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1471
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$14;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$3000(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1472
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$14;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "myplacehelp"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1473
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1474
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "value"

    const/4 v3, 0x2

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1475
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1477
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$14;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$3200(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 1479
    return-void
.end method
