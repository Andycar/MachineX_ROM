.class Lcom/android/server/HarmonyEASService$PackageHandler;
.super Landroid/os/Handler;
.source "HarmonyEASService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HarmonyEASService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageHandler"
.end annotation


# static fields
.field private static final HANDLE_SAVE_HASH_TO_XML:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/HarmonyEASService;


# direct methods
.method constructor <init>(Lcom/android/server/HarmonyEASService;)V
    .registers 2

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/server/HarmonyEASService$PackageHandler;->this$0:Lcom/android/server/HarmonyEASService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 98
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 103
    :goto_5
    return-void

    .line 100
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/HarmonyEASService$PackageHandler;->this$0:Lcom/android/server/HarmonyEASService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/HarmonyEASService;->saveHash(I)V
    invoke-static {v0, v1}, Lcom/android/server/HarmonyEASService;->access$000(Lcom/android/server/HarmonyEASService;I)V

    goto :goto_5

    .line 98
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
