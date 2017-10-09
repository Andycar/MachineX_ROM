.class Lcom/android/settings/GridSettings$HeaderAdapter$1;
.super Ljava/lang/Object;
.source "GridSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/GridSettings$HeaderAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GridSettings$HeaderAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/GridSettings$HeaderAdapter;)V
    .locals 0

    .prologue
    .line 3717
    iput-object p1, p0, Lcom/android/settings/GridSettings$HeaderAdapter$1;->this$0:Lcom/android/settings/GridSettings$HeaderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3720
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.MONITORING_CERT_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3722
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/GridSettings$HeaderAdapter$1;->this$0:Lcom/android/settings/GridSettings$HeaderAdapter;

    invoke-virtual {v1}, Lcom/android/settings/GridSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3723
    return-void
.end method
