.class Lcom/android/settings/FactoryResetDialog$7;
.super Ljava/lang/Object;
.source "FactoryResetDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FactoryResetDialog;->onCreateDialog(I)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FactoryResetDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/FactoryResetDialog;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/settings/FactoryResetDialog$7;->this$0:Lcom/android/settings/FactoryResetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings/FactoryResetDialog$7;->this$0:Lcom/android/settings/FactoryResetDialog;

    invoke-virtual {v0}, Lcom/android/settings/FactoryResetDialog;->popupDestroy()V

    .line 158
    return-void
.end method
