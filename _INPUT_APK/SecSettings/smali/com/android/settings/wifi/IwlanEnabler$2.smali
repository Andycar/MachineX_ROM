.class Lcom/android/settings/wifi/IwlanEnabler$2;
.super Ljava/lang/Object;
.source "IwlanEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/IwlanEnabler;->showAlertDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/IwlanEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/IwlanEnabler;)V
    .locals 0

    .prologue
    .line 817
    iput-object p1, p0, Lcom/android/settings/wifi/IwlanEnabler$2;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 823
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 825
    return-void
.end method
