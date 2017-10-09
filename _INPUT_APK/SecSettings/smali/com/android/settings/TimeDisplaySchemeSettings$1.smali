.class Lcom/android/settings/TimeDisplaySchemeSettings$1;
.super Ljava/lang/Object;
.source "TimeDisplaySchemeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TimeDisplaySchemeSettings;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TimeDisplaySchemeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TimeDisplaySchemeSettings;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings/TimeDisplaySchemeSettings$1;->this$0:Lcom/android/settings/TimeDisplaySchemeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/TimeDisplaySchemeSettings$1;->this$0:Lcom/android/settings/TimeDisplaySchemeSettings;

    invoke-static {v0}, Lcom/android/settings/TimeDisplaySchemeSettings;->access$000(Lcom/android/settings/TimeDisplaySchemeSettings;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 76
    iget-object v0, p0, Lcom/android/settings/TimeDisplaySchemeSettings$1;->this$0:Lcom/android/settings/TimeDisplaySchemeSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/TimeDisplaySchemeSettings;->access$100(Lcom/android/settings/TimeDisplaySchemeSettings;I)V

    .line 83
    :goto_0
    return-void

    .line 80
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/TimeDisplaySchemeSettings$1;->this$0:Lcom/android/settings/TimeDisplaySchemeSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/TimeDisplaySchemeSettings;->access$100(Lcom/android/settings/TimeDisplaySchemeSettings;I)V

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
