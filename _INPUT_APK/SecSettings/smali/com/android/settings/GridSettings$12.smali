.class Lcom/android/settings/GridSettings$12;
.super Ljava/lang/Object;
.source "GridSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/GridSettings;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GridSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/GridSettings;)V
    .locals 0

    .prologue
    .line 1143
    iput-object p1, p0, Lcom/android/settings/GridSettings$12;->this$0:Lcom/android/settings/GridSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/android/settings/GridSettings$12;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v0}, Lcom/android/settings/GridSettings;->access$1100(Lcom/android/settings/GridSettings;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1149
    return-void
.end method
