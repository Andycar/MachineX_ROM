.class Lcom/android/settings/OneHandSideSoftKeyFragment$2;
.super Ljava/lang/Object;
.source "OneHandSideSoftKeyFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/OneHandSideSoftKeyFragment;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/OneHandSideSoftKeyFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/OneHandSideSoftKeyFragment;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/settings/OneHandSideSoftKeyFragment$2;->this$0:Lcom/android/settings/OneHandSideSoftKeyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyFragment$2;->this$0:Lcom/android/settings/OneHandSideSoftKeyFragment;

    invoke-static {v0}, Lcom/android/settings/OneHandSideSoftKeyFragment;->access$400(Lcom/android/settings/OneHandSideSoftKeyFragment;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 164
    return-void
.end method
