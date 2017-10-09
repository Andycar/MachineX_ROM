.class Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$2;
.super Ljava/lang/Object;
.source "WifiHiddenApDeleteFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$2;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$2;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->finish()V

    .line 109
    return-void
.end method
