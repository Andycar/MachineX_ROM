.class Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;
.super Landroid/os/Handler;
.source "WifiP2pManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pManager$Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "P2pHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 938
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 939
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 940
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 944
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget v11, p1, Landroid/os/Message;->arg2:I

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->getListener(I)Ljava/lang/Object;
    invoke-static {v10, v11}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$000(Landroid/net/wifi/p2p/WifiP2pManager$Channel;I)Ljava/lang/Object;

    move-result-object v6

    .line 945
    .local v6, "listener":Ljava/lang/Object;
    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_12c

    .line 1086
    const-string v10, "WifiP2pManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignored "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    .end local v6    # "listener":Ljava/lang/Object;
    :cond_26
    :goto_26
    return-void

    .line 947
    .restart local v6    # "listener":Ljava/lang/Object;
    :sswitch_27
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$100(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    move-result-object v10

    if-eqz v10, :cond_26

    .line 948
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$100(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    move-result-object v10

    invoke-interface {v10}, Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;->onChannelDisconnected()V

    .line 949
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    # setter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    invoke-static {v10, v5}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$102(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    goto :goto_26

    .line 975
    :sswitch_3e
    if-eqz v6, :cond_26

    .line 976
    check-cast v6, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .end local v6    # "listener":Ljava/lang/Object;
    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v6, v10}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onFailure(I)V

    goto :goto_26

    .line 1002
    .restart local v6    # "listener":Ljava/lang/Object;
    :sswitch_48
    if-eqz v6, :cond_26

    .line 1003
    check-cast v6, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .end local v6    # "listener":Ljava/lang/Object;
    invoke-interface {v6}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onSuccess()V

    goto :goto_26

    .line 1007
    .restart local v6    # "listener":Ljava/lang/Object;
    :sswitch_50
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 1008
    .local v7, "peers":Landroid/net/wifi/p2p/WifiP2pDeviceList;
    if-eqz v6, :cond_26

    .line 1009
    check-cast v6, Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    .end local v6    # "listener":Ljava/lang/Object;
    invoke-interface {v6, v7}, Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;->onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    goto :goto_26

    .line 1013
    .end local v7    # "peers":Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .restart local v6    # "listener":Ljava/lang/Object;
    :sswitch_5c
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 1014
    .local v9, "wifiP2pInfo":Landroid/net/wifi/p2p/WifiP2pInfo;
    if-eqz v6, :cond_26

    .line 1015
    check-cast v6, Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    .end local v6    # "listener":Ljava/lang/Object;
    invoke-interface {v6, v9}, Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;->onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    goto :goto_26

    .line 1019
    .end local v9    # "wifiP2pInfo":Landroid/net/wifi/p2p/WifiP2pInfo;
    .restart local v6    # "listener":Ljava/lang/Object;
    :sswitch_68
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1020
    .local v2, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    if-eqz v6, :cond_26

    .line 1021
    check-cast v6, Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    .end local v6    # "listener":Ljava/lang/Object;
    invoke-interface {v6, v2}, Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;->onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    goto :goto_26

    .line 1025
    .end local v2    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    .restart local v6    # "listener":Ljava/lang/Object;
    :sswitch_74
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v10, :cond_80

    .line 1026
    if-eqz v6, :cond_26

    .line 1027
    check-cast v6, Landroid/net/wifi/p2p/WifiP2pManager$ConfigListListener;

    .end local v6    # "listener":Ljava/lang/Object;
    invoke-interface {v6}, Landroid/net/wifi/p2p/WifiP2pManager$ConfigListListener;->onConfigListUnavailable()V

    goto :goto_26

    .line 1030
    .restart local v6    # "listener":Ljava/lang/Object;
    :cond_80
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pConfigList;

    .line 1031
    .local v1, "configList":Landroid/net/wifi/p2p/WifiP2pConfigList;
    if-eqz v6, :cond_26

    .line 1032
    check-cast v6, Landroid/net/wifi/p2p/WifiP2pManager$ConfigListListener;

    .end local v6    # "listener":Ljava/lang/Object;
    invoke-interface {v6, v1}, Landroid/net/wifi/p2p/WifiP2pManager$ConfigListListener;->onConfigListAvailable(Landroid/net/wifi/p2p/WifiP2pConfigList;)V

    goto :goto_26

    .line 1037
    .end local v1    # "configList":Landroid/net/wifi/p2p/WifiP2pConfigList;
    .restart local v6    # "listener":Ljava/lang/Object;
    :sswitch_8c
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    .line 1038
    .local v8, "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->handleServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V
    invoke-static {v10, v8}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$200(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V

    goto :goto_26

    .line 1041
    .end local v8    # "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    :sswitch_96
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDialogListener:Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$300(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;

    move-result-object v10

    if-eqz v10, :cond_26

    .line 1042
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1043
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDialogListener:Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$300(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;

    move-result-object v12

    const-string/jumbo v10, "wifiP2pDevice"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/p2p/WifiP2pDevice;

    const-string/jumbo v11, "wifiP2pConfig"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-interface {v12, v10, v11}, Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;->onConnectionRequested(Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pConfig;)V

    goto/16 :goto_26

    .line 1051
    .end local v0    # "bundle":Landroid/os/Bundle;
    :sswitch_bf
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDialogListener:Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$300(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;

    move-result-object v10

    if-eqz v10, :cond_26

    .line 1052
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1053
    .restart local v0    # "bundle":Landroid/os/Bundle;
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDialogListener:Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$300(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;

    move-result-object v10

    const-string/jumbo v11, "wpsPin"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;->onShowPinRequested(Ljava/lang/String;)V

    goto/16 :goto_26

    .line 1058
    .end local v0    # "bundle":Landroid/os/Bundle;
    :sswitch_dd
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDialogListener:Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$300(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;

    move-result-object v10

    if-eqz v10, :cond_26

    .line 1059
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDialogListener:Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$300(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;

    move-result-object v10

    invoke-interface {v10}, Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;->onAttached()V

    goto/16 :goto_26

    .line 1063
    :sswitch_f0
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDialogListener:Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$300(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;

    move-result-object v10

    if-eqz v10, :cond_26

    .line 1064
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDialogListener:Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$300(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v11}, Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;->onDetached(I)V

    .line 1065
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    # setter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDialogListener:Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;
    invoke-static {v10, v5}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$302(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;)Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;

    goto/16 :goto_26

    .line 1069
    :sswitch_10a
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pGroupList;

    .line 1070
    .local v3, "groups":Landroid/net/wifi/p2p/WifiP2pGroupList;
    if-eqz v6, :cond_26

    .line 1071
    check-cast v6, Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;

    .end local v6    # "listener":Ljava/lang/Object;
    invoke-interface {v6, v3}, Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;->onPersistentGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroupList;)V

    goto/16 :goto_26

    .line 1076
    .end local v3    # "groups":Landroid/net/wifi/p2p/WifiP2pGroupList;
    .restart local v6    # "listener":Ljava/lang/Object;
    :sswitch_117
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    .line 1077
    .local v4, "handoverBundle":Landroid/os/Bundle;
    if-eqz v6, :cond_26

    .line 1078
    if-eqz v4, :cond_125

    const-string v10, "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1081
    .local v5, "handoverMessage":Ljava/lang/String;
    :cond_125
    check-cast v6, Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;

    .end local v6    # "listener":Ljava/lang/Object;
    invoke-interface {v6, v5}, Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;->onHandoverMessageAvailable(Ljava/lang/String;)V

    goto/16 :goto_26

    .line 945
    :sswitch_data_12c
    .sparse-switch
        0x11004 -> :sswitch_27
        0x22002 -> :sswitch_3e
        0x22003 -> :sswitch_48
        0x22005 -> :sswitch_3e
        0x22006 -> :sswitch_48
        0x22008 -> :sswitch_3e
        0x22009 -> :sswitch_48
        0x2200b -> :sswitch_3e
        0x2200c -> :sswitch_48
        0x2200e -> :sswitch_3e
        0x2200f -> :sswitch_48
        0x22011 -> :sswitch_3e
        0x22012 -> :sswitch_48
        0x22014 -> :sswitch_50
        0x22016 -> :sswitch_5c
        0x22018 -> :sswitch_68
        0x2201d -> :sswitch_3e
        0x2201e -> :sswitch_48
        0x22020 -> :sswitch_3e
        0x22021 -> :sswitch_48
        0x22023 -> :sswitch_3e
        0x22024 -> :sswitch_48
        0x22026 -> :sswitch_3e
        0x22027 -> :sswitch_48
        0x22029 -> :sswitch_3e
        0x2202a -> :sswitch_48
        0x2202c -> :sswitch_3e
        0x2202d -> :sswitch_48
        0x2202f -> :sswitch_3e
        0x22030 -> :sswitch_48
        0x22032 -> :sswitch_8c
        0x22034 -> :sswitch_3e
        0x22035 -> :sswitch_48
        0x22037 -> :sswitch_3e
        0x22038 -> :sswitch_48
        0x2203a -> :sswitch_10a
        0x2203c -> :sswitch_3e
        0x2203d -> :sswitch_48
        0x2203f -> :sswitch_3e
        0x22040 -> :sswitch_48
        0x22042 -> :sswitch_3e
        0x22043 -> :sswitch_48
        0x22045 -> :sswitch_3e
        0x22046 -> :sswitch_48
        0x22048 -> :sswitch_3e
        0x22049 -> :sswitch_48
        0x2204d -> :sswitch_117
        0x22050 -> :sswitch_48
        0x22051 -> :sswitch_3e
        0x22073 -> :sswitch_74
        0x22075 -> :sswitch_f0
        0x22076 -> :sswitch_dd
        0x22077 -> :sswitch_96
        0x22078 -> :sswitch_bf
        0x22091 -> :sswitch_3e
        0x22092 -> :sswitch_48
    .end sparse-switch
.end method
