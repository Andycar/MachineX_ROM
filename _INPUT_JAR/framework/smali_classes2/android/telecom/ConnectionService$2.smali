.class Landroid/telecom/ConnectionService$2;
.super Landroid/os/Handler;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/ConnectionService;


# direct methods
.method constructor <init>(Landroid/telecom/ConnectionService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 207
    iput-object p1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 210
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1b8

    .line 333
    :goto_7
    :pswitch_7
    return-void

    .line 212
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;
    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$100(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    invoke-virtual {v2, v1}, Landroid/telecom/ConnectionServiceAdapter;->addAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    # invokes: Landroid/telecom/ConnectionService;->onAdapterAttached()V
    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$200(Landroid/telecom/ConnectionService;)V

    goto :goto_7

    .line 216
    :pswitch_21
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;
    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$100(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    invoke-virtual {v2, v1}, Landroid/telecom/ConnectionServiceAdapter;->removeAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    goto :goto_7

    .line 219
    :pswitch_33
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 221
    .local v8, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_39
    iget-object v3, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    .line 223
    .local v3, "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    iget-object v4, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 224
    .local v4, "id":Ljava/lang/String;
    iget-object v5, v8, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Landroid/telecom/ConnectionRequest;

    .line 225
    .local v5, "request":Landroid/telecom/ConnectionRequest;
    iget v1, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7e

    const/4 v6, 0x1

    .line 226
    .local v6, "isIncoming":Z
    :goto_4b
    iget v1, v8, Lcom/android/internal/os/SomeArgs;->argi2:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_80

    const/4 v7, 0x1

    .line 227
    .local v7, "isUnknown":Z
    :goto_51
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z
    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$300(Landroid/telecom/ConnectionService;)Z

    move-result v1

    if-nez v1, :cond_82

    .line 228
    const-string v1, "Enqueueing pre-init request %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v4, v2, v15

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;
    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$500(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v15

    new-instance v1, Landroid/telecom/ConnectionService$2$1;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Landroid/telecom/ConnectionService$2$1;-><init>(Landroid/telecom/ConnectionService$2;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7a
    .catchall {:try_start_39 .. :try_end_7a} :catchall_8a

    .line 249
    :goto_7a
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_7

    .line 225
    .end local v6    # "isIncoming":Z
    .end local v7    # "isUnknown":Z
    :cond_7e
    const/4 v6, 0x0

    goto :goto_4b

    .line 226
    .restart local v6    # "isIncoming":Z
    :cond_80
    const/4 v7, 0x0

    goto :goto_51

    .line 241
    .restart local v7    # "isUnknown":Z
    :cond_82
    :try_start_82
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    # invokes: Landroid/telecom/ConnectionService;->createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    invoke-static/range {v2 .. v7}, Landroid/telecom/ConnectionService;->access$400(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    :try_end_89
    .catchall {:try_start_82 .. :try_end_89} :catchall_8a

    goto :goto_7a

    .line 249
    .end local v3    # "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "request":Landroid/telecom/ConnectionRequest;
    .end local v6    # "isIncoming":Z
    .end local v7    # "isUnknown":Z
    :catchall_8a
    move-exception v1

    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 254
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_8f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->abort(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$600(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 257
    :pswitch_9e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->answer(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$700(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 260
    :pswitch_ad
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 262
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_b3
    iget-object v10, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 263
    .local v10, "callId":Ljava/lang/String;
    iget v14, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 264
    .local v14, "videoState":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    # invokes: Landroid/telecom/ConnectionService;->answerVideo(Ljava/lang/String;I)V
    invoke-static {v1, v10, v14}, Landroid/telecom/ConnectionService;->access$800(Landroid/telecom/ConnectionService;Ljava/lang/String;I)V
    :try_end_c0
    .catchall {:try_start_b3 .. :try_end_c0} :catchall_c5

    .line 266
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_7

    .end local v10    # "callId":Ljava/lang/String;
    .end local v14    # "videoState":I
    :catchall_c5
    move-exception v1

    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 271
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_ca
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->reject(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$900(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 274
    :pswitch_d9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->disconnect(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$1000(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 277
    :pswitch_e8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->hold(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$1100(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 280
    :pswitch_f7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->unhold(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$1200(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 283
    :pswitch_106
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 285
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_10c
    iget-object v10, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 286
    .restart local v10    # "callId":Ljava/lang/String;
    iget-object v9, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v9, Landroid/telecom/AudioState;

    .line 287
    .local v9, "audioState":Landroid/telecom/AudioState;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    # invokes: Landroid/telecom/ConnectionService;->onAudioStateChanged(Ljava/lang/String;Landroid/telecom/AudioState;)V
    invoke-static {v1, v10, v9}, Landroid/telecom/ConnectionService;->access$1300(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/AudioState;)V
    :try_end_11b
    .catchall {:try_start_10c .. :try_end_11b} :catchall_120

    .line 289
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_7

    .end local v9    # "audioState":Landroid/telecom/AudioState;
    .end local v10    # "callId":Ljava/lang/String;
    :catchall_120
    move-exception v1

    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 294
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_125
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    int-to-char v15, v15

    # invokes: Landroid/telecom/ConnectionService;->playDtmfTone(Ljava/lang/String;C)V
    invoke-static {v2, v1, v15}, Landroid/telecom/ConnectionService;->access$1400(Landroid/telecom/ConnectionService;Ljava/lang/String;C)V

    goto/16 :goto_7

    .line 297
    :pswitch_139
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->stopDtmfTone(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$1500(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 300
    :pswitch_148
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 302
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_14e
    iget-object v11, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .line 303
    .local v11, "callId1":Ljava/lang/String;
    iget-object v12, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .line 304
    .local v12, "callId2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    # invokes: Landroid/telecom/ConnectionService;->conference(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v11, v12}, Landroid/telecom/ConnectionService;->access$1600(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15d
    .catchall {:try_start_14e .. :try_end_15d} :catchall_162

    .line 306
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_7

    .end local v11    # "callId1":Ljava/lang/String;
    .end local v12    # "callId2":Ljava/lang/String;
    :catchall_162
    move-exception v1

    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 311
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_167
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->splitFromConference(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$1700(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 314
    :pswitch_176
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->mergeConference(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$1800(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 317
    :pswitch_185
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->swapConference(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$1900(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 320
    :pswitch_194
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 322
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_19a
    iget-object v10, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 323
    .restart local v10    # "callId":Ljava/lang/String;
    iget v1, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b0

    const/4 v13, 0x1

    .line 324
    .local v13, "proceed":Z
    :goto_1a4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    # invokes: Landroid/telecom/ConnectionService;->onPostDialContinue(Ljava/lang/String;Z)V
    invoke-static {v1, v10, v13}, Landroid/telecom/ConnectionService;->access$2000(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    :try_end_1ab
    .catchall {:try_start_19a .. :try_end_1ab} :catchall_1b2

    .line 326
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_7

    .line 323
    .end local v13    # "proceed":Z
    :cond_1b0
    const/4 v13, 0x0

    goto :goto_1a4

    .line 326
    .end local v10    # "callId":Ljava/lang/String;
    :catchall_1b2
    move-exception v1

    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 210
    nop

    :pswitch_data_1b8
    .packed-switch 0x1
        :pswitch_8
        :pswitch_33
        :pswitch_8f
        :pswitch_9e
        :pswitch_ca
        :pswitch_d9
        :pswitch_e8
        :pswitch_f7
        :pswitch_106
        :pswitch_125
        :pswitch_139
        :pswitch_148
        :pswitch_167
        :pswitch_194
        :pswitch_7
        :pswitch_21
        :pswitch_ad
        :pswitch_176
        :pswitch_185
    .end packed-switch
.end method
