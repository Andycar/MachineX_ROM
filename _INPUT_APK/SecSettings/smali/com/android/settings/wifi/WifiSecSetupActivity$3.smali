.class Lcom/android/settings/wifi/WifiSecSetupActivity$3;
.super Ljava/lang/Object;
.source "WifiSecSetupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSecSetupActivity;->updateLayoutMargin(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSecSetupActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSecSetupActivity;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity$3;->this$0:Lcom/android/settings/wifi/WifiSecSetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity$3;->this$0:Lcom/android/settings/wifi/WifiSecSetupActivity;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->access$200(Lcom/android/settings/wifi/WifiSecSetupActivity;)Landroid/widget/PopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 385
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity$3;->this$0:Lcom/android/settings/wifi/WifiSecSetupActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSecSetupActivity;->access$102(Lcom/android/settings/wifi/WifiSecSetupActivity;Z)Z

    .line 386
    return-void
.end method
