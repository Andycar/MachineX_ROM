.class Lcom/android/settings/OneHandInputSettings$1;
.super Ljava/lang/Object;
.source "OneHandInputSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/OneHandInputSettings;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/OneHandInputSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/OneHandInputSettings;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/settings/OneHandInputSettings$1;->this$0:Lcom/android/settings/OneHandInputSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings/OneHandInputSettings$1;->this$0:Lcom/android/settings/OneHandInputSettings;

    invoke-static {v0}, Lcom/android/settings/OneHandInputSettings;->access$000(Lcom/android/settings/OneHandInputSettings;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 181
    return-void
.end method
