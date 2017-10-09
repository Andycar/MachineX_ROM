.class Lcom/android/settings/OneHandOperationSettings$2;
.super Ljava/lang/Object;
.source "OneHandOperationSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/OneHandOperationSettings;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/OneHandOperationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/OneHandOperationSettings;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings/OneHandOperationSettings$2;->this$0:Lcom/android/settings/OneHandOperationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/OneHandOperationSettings$2;->this$0:Lcom/android/settings/OneHandOperationSettings;

    invoke-static {v0}, Lcom/android/settings/OneHandOperationSettings;->access$000(Lcom/android/settings/OneHandOperationSettings;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 137
    return-void
.end method
