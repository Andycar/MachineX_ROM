.class Lcom/android/settings/wifi/WificmccSetupActivity$1;
.super Ljava/lang/Object;
.source "WificmccSetupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WificmccSetupActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WificmccSetupActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WificmccSetupActivity;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/settings/wifi/WificmccSetupActivity$1;->this$0:Lcom/android/settings/wifi/WificmccSetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/settings/wifi/WificmccSetupActivity$1;->this$0:Lcom/android/settings/wifi/WificmccSetupActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WificmccSetupActivity;->setResult(I)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/wifi/WificmccSetupActivity$1;->this$0:Lcom/android/settings/wifi/WificmccSetupActivity;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WificmccSetupActivity;->finish()V

    .line 176
    return-void
.end method
