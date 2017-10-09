.class Lcom/android/settings/wifi/mobileap/WifiApSettings$12$1;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApSettings$12;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/mobileap/WifiApSettings$12;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApSettings$12;)V
    .locals 0

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$12$1;->this$1:Lcom/android/settings/wifi/mobileap/WifiApSettings$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1131
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1132
    return-void
.end method
