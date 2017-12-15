.class Landroid/drm/DrmManagerClient$EventHandler;
.super Landroid/os/Handler;
.source "DrmManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/drm/DrmManagerClient;


# direct methods
.method public constructor <init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 137
    iput-object p1, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    .line 138
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 139
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 142
    const/4 v5, 0x0

    .line 143
    .local v5, "event":Landroid/drm/DrmEvent;
    const/4 v4, 0x0

    .line 144
    .local v4, "error":Landroid/drm/DrmErrorEvent;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 146
    .local v1, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_174

    .line 212
    const-string v13, "DrmManagerClient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown message type "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_2a
    :goto_2a
    return-void

    .line 148
    :pswitch_2b
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/drm/DrmInfo;

    .line 150
    .local v2, "drmInfo":Landroid/drm/DrmInfo;
    const-string v13, "drm_path"

    invoke-virtual {v2, v13}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 151
    .local v7, "filepath":Ljava/lang/String;
    const/4 v8, 0x0

    .line 153
    .local v8, "fis":Ljava/io/FileInputStream;
    if-eqz v7, :cond_55

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_55

    .line 155
    :try_start_42
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_47} :catch_cb

    .line 156
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .local v9, "fis":Ljava/io/FileInputStream;
    :try_start_47
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    .line 157
    .local v6, "fd":Ljava/io/FileDescriptor;
    const-string v13, "FileDescriptorKey"

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/drm/DrmInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_54} :catch_170

    move-object v8, v9

    .line 164
    .end local v6    # "fd":Ljava/io/FileDescriptor;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :cond_55
    :goto_55
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    # getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static {v14}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v14

    # invokes: Landroid/drm/DrmManagerClient;->_processDrmInfo(ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;
    invoke-static {v13, v14, v2}, Landroid/drm/DrmManagerClient;->access$100(Landroid/drm/DrmManagerClient;ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;

    move-result-object v11

    .line 166
    .local v11, "status":Landroid/drm/DrmInfoStatus;
    const-string v13, "drm_info_status_object"

    invoke-virtual {v1, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v13, "drm_info_object"

    invoke-virtual {v1, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    if-eqz v8, :cond_74

    .line 172
    :try_start_71
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_16d

    .line 176
    :cond_74
    :goto_74
    if-eqz v11, :cond_ea

    const/4 v13, 0x1

    iget v14, v11, Landroid/drm/DrmInfoStatus;->statusCode:I

    if-ne v13, v14, :cond_ea

    .line 177
    new-instance v5, Landroid/drm/DrmEvent;

    .end local v5    # "event":Landroid/drm/DrmEvent;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    # getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static {v13}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    iget v15, v11, Landroid/drm/DrmInfoStatus;->infoType:I

    # invokes: Landroid/drm/DrmManagerClient;->getEventType(I)I
    invoke-static {v14, v15}, Landroid/drm/DrmManagerClient;->access$200(Landroid/drm/DrmManagerClient;I)I

    move-result v14

    const/4 v15, 0x0

    invoke-direct {v5, v13, v14, v15, v1}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    .line 215
    .end local v2    # "drmInfo":Landroid/drm/DrmInfo;
    .end local v7    # "filepath":Ljava/lang/String;
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "status":Landroid/drm/DrmInfoStatus;
    .restart local v5    # "event":Landroid/drm/DrmEvent;
    :goto_93
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    # getter for: Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;
    invoke-static {v13}, Landroid/drm/DrmManagerClient;->access$500(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnEventListener;

    move-result-object v13

    if-eqz v13, :cond_ae

    if-eqz v5, :cond_ae

    .line 216
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    # getter for: Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;
    invoke-static {v13}, Landroid/drm/DrmManagerClient;->access$500(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnEventListener;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-interface {v13, v14, v5}, Landroid/drm/DrmManagerClient$OnEventListener;->onEvent(Landroid/drm/DrmManagerClient;Landroid/drm/DrmEvent;)V

    .line 218
    :cond_ae
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    # getter for: Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;
    invoke-static {v13}, Landroid/drm/DrmManagerClient;->access$600(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    move-result-object v13

    if-eqz v13, :cond_2a

    if-eqz v4, :cond_2a

    .line 219
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    # getter for: Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;
    invoke-static {v13}, Landroid/drm/DrmManagerClient;->access$600(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-interface {v13, v14, v4}, Landroid/drm/DrmManagerClient$OnErrorListener;->onError(Landroid/drm/DrmManagerClient;Landroid/drm/DrmErrorEvent;)V

    goto/16 :goto_2a

    .line 159
    .restart local v2    # "drmInfo":Landroid/drm/DrmInfo;
    .restart local v7    # "filepath":Ljava/lang/String;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :catch_cb
    move-exception v3

    .line 160
    .local v3, "e":Ljava/io/IOException;
    :goto_cc
    const-string v13, "DrmManagerClient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception the file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_55

    .line 180
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v11    # "status":Landroid/drm/DrmInfoStatus;
    :cond_ea
    if-eqz v11, :cond_11a

    iget v10, v11, Landroid/drm/DrmInfoStatus;->infoType:I

    .line 183
    .local v10, "infoType":I
    :goto_ee
    if-eqz v11, :cond_11f

    iget-object v13, v11, Landroid/drm/DrmInfoStatus;->data:Landroid/drm/ProcessedData;

    invoke-virtual {v13}, Landroid/drm/ProcessedData;->getData()[B

    move-result-object v13

    if-eqz v13, :cond_11f

    .line 184
    new-instance v12, Ljava/lang/String;

    iget-object v13, v11, Landroid/drm/DrmInfoStatus;->data:Landroid/drm/ProcessedData;

    invoke-virtual {v13}, Landroid/drm/ProcessedData;->getData()[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    .line 187
    .local v12, "url":Ljava/lang/String;
    new-instance v4, Landroid/drm/DrmErrorEvent;

    .end local v4    # "error":Landroid/drm/DrmErrorEvent;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    # getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static {v13}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    # invokes: Landroid/drm/DrmManagerClient;->getErrorType(ILandroid/drm/DrmInfoStatus;)I
    invoke-static {v14, v10, v11}, Landroid/drm/DrmManagerClient;->access$300(Landroid/drm/DrmManagerClient;ILandroid/drm/DrmInfoStatus;)I

    move-result v14

    invoke-direct {v4, v13, v14, v12, v1}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    .line 188
    .restart local v4    # "error":Landroid/drm/DrmErrorEvent;
    goto/16 :goto_93

    .line 180
    .end local v10    # "infoType":I
    .end local v12    # "url":Ljava/lang/String;
    :cond_11a
    invoke-virtual {v2}, Landroid/drm/DrmInfo;->getInfoType()I

    move-result v10

    goto :goto_ee

    .line 190
    .restart local v10    # "infoType":I
    :cond_11f
    new-instance v4, Landroid/drm/DrmErrorEvent;

    .end local v4    # "error":Landroid/drm/DrmErrorEvent;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    # getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static {v13}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    # invokes: Landroid/drm/DrmManagerClient;->getErrorType(ILandroid/drm/DrmInfoStatus;)I
    invoke-static {v14, v10, v11}, Landroid/drm/DrmManagerClient;->access$300(Landroid/drm/DrmManagerClient;ILandroid/drm/DrmInfoStatus;)I

    move-result v14

    const/4 v15, 0x0

    invoke-direct {v4, v13, v14, v15, v1}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    .restart local v4    # "error":Landroid/drm/DrmErrorEvent;
    goto/16 :goto_93

    .line 203
    .end local v2    # "drmInfo":Landroid/drm/DrmInfo;
    .end local v7    # "filepath":Ljava/lang/String;
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local v10    # "infoType":I
    .end local v11    # "status":Landroid/drm/DrmInfoStatus;
    :pswitch_137
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    # getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static {v14}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v14

    # invokes: Landroid/drm/DrmManagerClient;->_removeAllRights(I)I
    invoke-static {v13, v14}, Landroid/drm/DrmManagerClient;->access$400(Landroid/drm/DrmManagerClient;I)I

    move-result v13

    if-nez v13, :cond_15b

    .line 204
    new-instance v5, Landroid/drm/DrmEvent;

    .end local v5    # "event":Landroid/drm/DrmEvent;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    # getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static {v13}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v13

    const/16 v14, 0x3e9

    const/4 v15, 0x0

    invoke-direct {v5, v13, v14, v15}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;)V

    .restart local v5    # "event":Landroid/drm/DrmEvent;
    goto/16 :goto_93

    .line 206
    :cond_15b
    new-instance v4, Landroid/drm/DrmErrorEvent;

    .end local v4    # "error":Landroid/drm/DrmErrorEvent;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    # getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static {v13}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v13

    const/16 v14, 0x7d7

    const/4 v15, 0x0

    invoke-direct {v4, v13, v14, v15}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;)V

    .line 209
    .restart local v4    # "error":Landroid/drm/DrmErrorEvent;
    goto/16 :goto_93

    .line 173
    .restart local v2    # "drmInfo":Landroid/drm/DrmInfo;
    .restart local v7    # "filepath":Ljava/lang/String;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "status":Landroid/drm/DrmInfoStatus;
    :catch_16d
    move-exception v13

    goto/16 :goto_74

    .line 159
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "status":Landroid/drm/DrmInfoStatus;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    :catch_170
    move-exception v3

    move-object v8, v9

    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_cc

    .line 146
    :pswitch_data_174
    .packed-switch 0x3e9
        :pswitch_137
        :pswitch_2b
    .end packed-switch
.end method
