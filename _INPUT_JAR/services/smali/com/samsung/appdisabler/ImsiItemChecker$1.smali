.class Lcom/samsung/appdisabler/ImsiItemChecker$1;
.super Ljava/lang/Object;
.source "ImsiItemChecker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/appdisabler/ImsiItemChecker;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/appdisabler/ImsiItemChecker;


# direct methods
.method constructor <init>(Lcom/samsung/appdisabler/ImsiItemChecker;)V
    .registers 2

    .prologue
    .line 638
    iput-object p1, p0, Lcom/samsung/appdisabler/ImsiItemChecker$1;->this$0:Lcom/samsung/appdisabler/ImsiItemChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 642
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 643
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker$1;->this$0:Lcom/samsung/appdisabler/ImsiItemChecker;

    # getter for: Lcom/samsung/appdisabler/ImsiItemChecker;->mActionHandler:Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;
    invoke-static {v0}, Lcom/samsung/appdisabler/ImsiItemChecker;->access$300(Lcom/samsung/appdisabler/ImsiItemChecker;)Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;

    move-result-object v0

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;->sendEmptyMessage(I)Z

    .line 644
    return-void
.end method
