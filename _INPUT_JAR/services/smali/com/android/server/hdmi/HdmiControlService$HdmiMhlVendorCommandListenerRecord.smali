.class Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HdmiMhlVendorCommandListenerRecord"
.end annotation


# instance fields
.field private final mListener:Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;

.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V
    .registers 3
    .param p2, "listener"    # Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;

    .prologue
    .line 921
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 922
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;

    .line 923
    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;)Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;

    .prologue
    .line 918
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .prologue
    .line 927
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$1500(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 928
    return-void
.end method
