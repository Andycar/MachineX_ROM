.class Lcom/android/settings/location/LocationSettings$6;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/LocationSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationSettings;

.field final synthetic val$dialogId:I


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationSettings;I)V
    .locals 0

    .prologue
    .line 664
    iput-object p1, p0, Lcom/android/settings/location/LocationSettings$6;->this$0:Lcom/android/settings/location/LocationSettings;

    iput p2, p0, Lcom/android/settings/location/LocationSettings$6;->val$dialogId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings$6;->this$0:Lcom/android/settings/location/LocationSettings;

    iget v1, p0, Lcom/android/settings/location/LocationSettings$6;->val$dialogId:I

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/location/LocationSettings;->access$100(Lcom/android/settings/location/LocationSettings;ILjava/lang/Boolean;)V

    .line 668
    return-void
.end method
