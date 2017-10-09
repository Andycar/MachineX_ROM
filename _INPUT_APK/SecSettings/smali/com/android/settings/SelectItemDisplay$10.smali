.class Lcom/android/settings/SelectItemDisplay$10;
.super Ljava/lang/Object;
.source "SelectItemDisplay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SelectItemDisplay;->clickItem(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SelectItemDisplay;


# direct methods
.method constructor <init>(Lcom/android/settings/SelectItemDisplay;)V
    .locals 0

    .prologue
    .line 739
    iput-object p1, p0, Lcom/android/settings/SelectItemDisplay$10;->this$0:Lcom/android/settings/SelectItemDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 742
    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay$10;->this$0:Lcom/android/settings/SelectItemDisplay;

    invoke-static {v0}, Lcom/android/settings/SelectItemDisplay;->access$100(Lcom/android/settings/SelectItemDisplay;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay$10;->this$0:Lcom/android/settings/SelectItemDisplay;

    invoke-static {v0}, Lcom/android/settings/SelectItemDisplay;->access$100(Lcom/android/settings/SelectItemDisplay;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 744
    :cond_0
    return-void
.end method
