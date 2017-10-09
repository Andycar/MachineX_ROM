.class Lcom/android/settings/MouseHoveringSettings$2;
.super Ljava/lang/Object;
.source "MouseHoveringSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MouseHoveringSettings;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MouseHoveringSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MouseHoveringSettings;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/settings/MouseHoveringSettings$2;->this$0:Lcom/android/settings/MouseHoveringSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings$2;->this$0:Lcom/android/settings/MouseHoveringSettings;

    invoke-static {v0}, Lcom/android/settings/MouseHoveringSettings;->access$500(Lcom/android/settings/MouseHoveringSettings;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 353
    return-void
.end method
