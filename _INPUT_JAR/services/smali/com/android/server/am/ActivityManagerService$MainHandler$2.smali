.class Lcom/android/server/am/ActivityManagerService$MainHandler$2;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService$MainHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService$MainHandler;)V
    .registers 2

    .prologue
    .line 1666
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler$2;->this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1670
    const-string v0, "GATE"

    const-string v1, "<GATE-M>APP_FC:FC dialog has been cleared</GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    return-void
.end method
