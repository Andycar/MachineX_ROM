.class final Landroid/hardware/hdmi/HdmiClient$1;
.super Landroid/hardware/hdmi/IHdmiVendorCommandListener$Stub;
.source "HdmiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/hdmi/HdmiClient;->getListenerWrapper(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;


# direct methods
.method constructor <init>(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;)V
    .registers 2

    .prologue
    .line 92
    iput-object p1, p0, Landroid/hardware/hdmi/HdmiClient$1;->val$listener:Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiVendorCommandListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceived(I[BZ)V
    .registers 5
    .param p1, "srcAddress"    # I
    .param p2, "params"    # [B
    .param p3, "hasVendorId"    # Z

    .prologue
    .line 95
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient$1;->val$listener:Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;->onReceived(I[BZ)V

    .line 96
    return-void
.end method
