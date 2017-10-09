.class Lcom/android/settings/MsaSecurityUpdateSettings$1;
.super Ljava/lang/Object;
.source "MsaSecurityUpdateSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MsaSecurityUpdateSettings;->showDataNetworkWarning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MsaSecurityUpdateSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MsaSecurityUpdateSettings;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/settings/MsaSecurityUpdateSettings$1;->this$0:Lcom/android/settings/MsaSecurityUpdateSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings/MsaSecurityUpdateSettings$1;->this$0:Lcom/android/settings/MsaSecurityUpdateSettings;

    invoke-static {v0}, Lcom/android/settings/MsaSecurityUpdateSettings;->access$000(Lcom/android/settings/MsaSecurityUpdateSettings;)V

    .line 182
    return-void
.end method
