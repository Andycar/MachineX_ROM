.class Lcom/android/settings/smartbonding/SmartBondingEnabler$4;
.super Ljava/lang/Object;
.source "SmartBondingEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/smartbonding/SmartBondingEnabler;->showNotificationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/smartbonding/SmartBondingEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/smartbonding/SmartBondingEnabler;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler$4;->this$0:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 168
    return-void
.end method
