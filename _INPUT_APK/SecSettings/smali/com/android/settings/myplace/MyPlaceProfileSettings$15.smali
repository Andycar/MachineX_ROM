.class Lcom/android/settings/myplace/MyPlaceProfileSettings$15;
.super Ljava/lang/Object;
.source "MyPlaceProfileSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep3Dialog()V
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
    .line 1511
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$15;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 1516
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$15;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    iget-object v0, v0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1517
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$15;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$3300(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    .line 1518
    return-void
.end method
